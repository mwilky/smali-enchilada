.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/NtpTrustedTime$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_NTP_TIME:Ljava/lang/String; = "com.oem.intent.action.NTP_TIMES"

.field private static final KEY_NTP_REFERENCE:Ljava/lang/String; = "ntpTimeReference"

.field private static final KEY_NTP_TIME:Ljava/lang/String; = "ntpTime"

.field private static final LOGD:Z = true

.field static final MSG_FORCE_REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime-OP"

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private mNtpTrustedTimeHandler:Landroid/os/Handler;

.field private mNtpTrustedTimeThread:Landroid/os/HandlerThread;

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J

.field private oemNTPserverH2:[Ljava/lang/String;

.field private oemNTPserverO2:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string/jumbo v0, "time.android.com"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->oemNTPserverO2:[Ljava/lang/String;

    .line 112
    const-string v0, "asia.pool.ntp.org"

    const-string v1, "cn.pool.ntp.org"

    const-string v2, "0.cn.pool.ntp.org"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->oemNTPserverH2:[Ljava/lang/String;

    .line 142
    const-string v0, "NtpTrustedTime-OP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 144
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 148
    const-string v0, "NtpTrustedTime-OP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "NtpTrustedTime-OP"

    const-string/jumbo v1, "start mNtpTrustedTimeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NtpTrustedTime-OP"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeThread:Landroid/os/HandlerThread;

    .line 152
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 153
    new-instance v0, Landroid/util/NtpTrustedTime$MyHandler;

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/NtpTrustedTime$MyHandler;-><init>(Landroid/util/NtpTrustedTime;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeHandler:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method static synthetic access$000(Landroid/util/NtpTrustedTime;Landroid/net/Network;)Z
    .locals 1
    .param p0, "x0"    # Landroid/util/NtpTrustedTime;
    .param p1, "x1"    # Landroid/net/Network;

    .line 54
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime;->forceRefreshInThread(Landroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method private forceRefreshInThread(Landroid/net/Network;)Z
    .locals 7
    .param p1, "network"    # Landroid/net/Network;

    .line 270
    const-string v0, "NtpTrustedTime-OP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRefreshInThread() mTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string/jumbo v0, "persist.sys.force_ntp_server"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "forceNtpServer":Ljava/lang/String;
    const-string v1, "NtpTrustedTime-OP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceRefreshInThread() forceNtpServer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 277
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getTimeFromOppoServer()Z

    .line 278
    return v2

    .line 280
    :cond_0
    const-string v1, "OverSeas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime;->getTimeFromAndroidServerO2(Landroid/net/Network;)Z

    .line 283
    return v2

    .line 285
    :cond_1
    const-string v1, "NotGet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    const-string v1, "NtpTrustedTime-OP"

    const-string v3, "forceRefreshInThread() do nothing !!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v2

    .line 291
    :cond_2
    new-array v1, v2, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 292
    const-string v1, "NtpTrustedTime-OP"

    const-string v4, "forceRefreshInThread() for CHINA SKU"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string/jumbo v1, "persist.sys.oem.region"

    const-string v4, "CN"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "region":Ljava/lang/String;
    const-string v4, "CN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "OC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 297
    :cond_3
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime;->getTimeFromAndroidServerH2(Landroid/net/Network;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    return v2

    .line 301
    :cond_4
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getTimeFromOppoServer()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 303
    return v2

    .line 307
    :cond_5
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime;->getTimeFromAndroidServerO2(Landroid/net/Network;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 309
    return v2

    .line 311
    .end local v1    # "region":Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 313
    :cond_7
    const-string v1, "NtpTrustedTime-OP"

    const-string v4, "forceRefreshInThread() for O2 SKU"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string/jumbo v1, "sys.radio.mcc"

    const-string v4, "000"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "mcc":Ljava/lang/String;
    const-string v4, "NtpTrustedTime-OP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forceRefreshInThread() mcc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v4, "460"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 318
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime;->getTimeFromAndroidServerH2(Landroid/net/Network;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 320
    return v2

    .line 322
    :cond_8
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getTimeFromOppoServer()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 324
    return v2

    .line 328
    :cond_9
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime;->getTimeFromAndroidServerO2(Landroid/net/Network;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 330
    return v2

    .line 334
    .end local v1    # "mcc":Ljava/lang/String;
    :cond_a
    :goto_0
    const-string v1, "NtpTrustedTime-OP"

    const-string v2, "forceRefreshInThread() return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return v3
.end method

.method private forceRefreshIntentSoftSim()V
    .locals 5

    .line 362
    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/util/NtpTrustedTime;->isOPSoftSimEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.NTP_TIMES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ntpTime"

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 366
    const-string/jumbo v1, "ntpTimeReference"

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 367
    const-string v1, "NtpTrustedTime-OP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceRefreshIntentSoftSim() mCachedNtpTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mCachedNtpElapsedRealtime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 369
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 372
    :cond_0
    const-string v0, "NtpTrustedTime-OP"

    const-string v1, "forceRefreshIntentSoftSim() there is no soft sim app, do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/util/NtpTrustedTime;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v1, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 162
    .local v2, "resolver":Landroid/content/ContentResolver;
    const v3, 0x1040170

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "defaultServer":Ljava/lang/String;
    const v4, 0x10e007f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 167
    .local v4, "defaultTimeout":J
    const-string/jumbo v6, "ntp_server"

    invoke-static {v2, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "secureServer":Ljava/lang/String;
    const-string/jumbo v7, "ntp_timeout"

    invoke-static {v2, v7, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 172
    .local v7, "timeout":J
    if-eqz v6, :cond_0

    move-object v9, v6

    goto :goto_0

    :cond_0
    move-object v9, v3

    .line 173
    .local v9, "server":Ljava/lang/String;
    :goto_0
    new-instance v10, Landroid/util/NtpTrustedTime;

    invoke-direct {v10, v9, v7, v8}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 174
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    .line 177
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "defaultServer":Ljava/lang/String;
    .end local v4    # "defaultTimeout":J
    .end local v6    # "secureServer":Ljava/lang/String;
    .end local v7    # "timeout":J
    .end local v9    # "server":Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 157
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTimeFromAndroidServerH2(Landroid/net/Network;)Z
    .locals 7
    .param p1, "network"    # Landroid/net/Network;

    .line 222
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 223
    .local v0, "client":Landroid/net/SntpClient;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->oemNTPserverH2:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 224
    const-string v3, "NtpTrustedTime-OP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTimeFromAndroidServerH2() SntpClient requestTime() start, server = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/util/NtpTrustedTime;->oemNTPserverH2:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", network = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->oemNTPserverH2:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4, p1}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;ILandroid/net/Network;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    const-string v1, "NtpTrustedTime-OP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimeFromAndroidServerH2() request time from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->oemNTPserverH2:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " successfully!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 228
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 229
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 230
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 233
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->forceRefreshIntentSoftSim()V

    .line 235
    const-string v3, "NtpTrustedTime-OP"

    const-string v4, "getTimeFromAndroidServerH2() return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v1

    .line 238
    :cond_0
    const-string v3, "NtpTrustedTime-OP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTimeFromAndroidServerH2() request time from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/util/NtpTrustedTime;->oemNTPserverH2:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 241
    .end local v2    # "i":I
    :cond_1
    const-string v2, "NtpTrustedTime-OP"

    const-string v3, "getTimeFromAndroidServerH2() return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v1
.end method

.method private getTimeFromAndroidServerO2(Landroid/net/Network;)Z
    .locals 7
    .param p1, "network"    # Landroid/net/Network;

    .line 246
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 247
    .local v0, "client":Landroid/net/SntpClient;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->oemNTPserverO2:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 248
    const-string v3, "NtpTrustedTime-OP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTimeFromAndroidServerO2() SntpClient requestTime() start, server = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/util/NtpTrustedTime;->oemNTPserverO2:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", network = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->oemNTPserverO2:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4, p1}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;ILandroid/net/Network;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    const-string v1, "NtpTrustedTime-OP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimeFromAndroidServerO2() request time from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->oemNTPserverO2:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " successfully!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 252
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 253
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 254
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 257
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->forceRefreshIntentSoftSim()V

    .line 259
    const-string v3, "NtpTrustedTime-OP"

    const-string v4, "getTimeFromAndroidServerO2() return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v1

    .line 262
    :cond_0
    const-string v3, "NtpTrustedTime-OP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTimeFromAndroidServerO2() request time from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/util/NtpTrustedTime;->oemNTPserverO2:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 265
    .end local v2    # "i":I
    :cond_1
    const-string v2, "NtpTrustedTime-OP"

    const-string v3, "getTimeFromAndroidServerO2() return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v1
.end method

.method private getTimeFromOppoServer()Z
    .locals 8

    .line 183
    new-instance v0, Landroid/net/OemHttpClient;

    invoke-direct {v0}, Landroid/net/OemHttpClient;-><init>()V

    .line 185
    .local v0, "oemHttpClient":Landroid/net/OemHttpClient;
    const-string v1, "NtpTrustedTime-OP"

    const-string v2, "getTimeFromOppoServer() oemHttpClient requestTime() from http server 1 start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/OemHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v1

    const-wide/16 v4, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "NtpTrustedTime-OP"

    const-string v3, "getTimeFromOppoServer() Use oem http server 1 algin time success!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 190
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getHttpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 191
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getHttpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 192
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 195
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->forceRefreshIntentSoftSim()V

    .line 197
    const-string v1, "NtpTrustedTime-OP"

    const-string v3, "getTimeFromOppoServer() return true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v2

    .line 201
    :cond_0
    const-string v1, "NtpTrustedTime-OP"

    const-string v6, "getTimeFromOppoServer() oemHttpClient requestTime() from http server 2 start"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v6, v6

    invoke-virtual {v0, v1, v2, v6}, Landroid/net/OemHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const-string v1, "NtpTrustedTime-OP"

    const-string v3, "getTimeFromOppoServer() Use oem http server 2 algin time success!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 206
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getHttpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 207
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getHttpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 208
    invoke-virtual {v0}, Landroid/net/OemHttpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 211
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->forceRefreshIntentSoftSim()V

    .line 213
    const-string v1, "NtpTrustedTime-OP"

    const-string v3, "getTimeFromOppoServer() return true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v2

    .line 217
    :cond_1
    const-string v1, "NtpTrustedTime-OP"

    const-string v2, "getTimeFromOppoServer() Use oem http server 1 & 2 algin time failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v3
.end method

.method private isOPSoftSimEnable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 346
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.redteamobile.virtual.softsim"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 347
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 349
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 351
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v2

    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 352
    return v0

    .line 354
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .line 482
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 493
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceRefresh()Z
    .locals 3

    .line 380
    const-string v0, "NtpTrustedTime-OP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRefresh(): this.hasCache() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->forceSync()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forceRefresh(Landroid/net/Network;)Z
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .line 402
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "NtpTrustedTime-OP"

    const-string/jumbo v2, "missing server, so no trusted time available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v1

    .line 412
    :cond_0
    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 414
    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    .line 416
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 419
    .local v0, "ni":Landroid/net/NetworkInfo;
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 426
    :cond_3
    const-string v1, "NtpTrustedTime-OP"

    const-string v2, "forceRefresh() send MSG_FORCE_REFRESH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 428
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mNtpTrustedTimeHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    const-string v3, "NtpTrustedTime-OP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceRefresh() hasCache() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v3

    if-nez v3, :cond_4

    .line 434
    const-string v3, "NtpTrustedTime-OP"

    const-string v4, "forceRefresh() before 1sec delay"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 438
    :cond_4
    const-string v3, "NtpTrustedTime-OP"

    const-string v4, "forceRefresh() return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v2

    .line 420
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    :goto_1
    const-string v2, "NtpTrustedTime-OP"

    const-string v3, "forceRefresh: no connectivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v1

    .line 416
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public forceSync()Z
    .locals 4

    .line 388
    monitor-enter p0

    .line 389
    :try_start_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 390
    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    .line 392
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 396
    .local v0, "network":Landroid/net/Network;
    :goto_0
    const-string v1, "NtpTrustedTime-OP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSync(): network = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0, v0}, Landroid/util/NtpTrustedTime;->forceRefresh(Landroid/net/Network;)Z

    move-result v1

    return v1

    .line 392
    .end local v0    # "network":Landroid/net/Network;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCacheAge()J
    .locals 4

    .line 464
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 467
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCacheCertainty()J
    .locals 2

    .line 473
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 474
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    return-wide v0

    .line 476
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .line 502
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .line 506
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
