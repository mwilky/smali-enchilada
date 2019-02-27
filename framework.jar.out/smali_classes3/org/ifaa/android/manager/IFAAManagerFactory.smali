.class public Lorg/ifaa/android/manager/IFAAManagerFactory;
.super Lorg/ifaa/android/manager/IFAAManagerV3;
.source "IFAAManagerFactory.java"


# static fields
.field private static final ACTIVITY_START_FAILED:I = -0x1

.field private static final ACTIVITY_START_SUCCESS:I = 0x0

.field private static final BIND_IFAASER_SERVICE_TIMEOUT:I = 0xbb8

.field private static final BIOTypeFingerprint:I = 0x1

.field private static final BIOTypeFingerprintCustom:I = 0x10

.field private static final BIOTypeIris:I = 0x2

.field private static final FP_SENSOR_LOCATION_PARAM:Ljava/lang/String; = "{\'type\': 0, \'fullView\': {\'startX\': 452, \'startY\': 1970,\'width\': 174, \'height\': 174, \'navConflict\': true}}"

.field static final IFAA_SERVICE_CLASS:Ljava/lang/String; = "com.oneplus.ifaaservice.IFAAService"

.field static final IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field static final IFAA_SERVICE_PACKAGE:Ljava/lang/String; = "com.oneplus.ifaaservice"

.field private static final TAG:Ljava/lang/String; = "IFAAManagerFactory"

.field private static final hasCustomFingerPrinter:Z

.field public static mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mIFAAService:Lcom/android/internal/app/IIFAAService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput v2, v0, v1

    .line 30
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->hasCustomFingerPrinter:Z

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oneplus.ifaaservice"

    const-string v2, "com.oneplus.ifaaservice.IFAAService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerV3;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    .line 151
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerFactory$1;

    invoke-direct {v0, p0}, Lorg/ifaa/android/manager/IFAAManagerFactory$1;-><init>(Lorg/ifaa/android/manager/IFAAManagerFactory;)V

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/ifaa/android/manager/IFAAManagerFactory;->ensureIfaaService(Landroid/content/Context;I)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lorg/ifaa/android/manager/IFAAManagerFactory;)Lcom/android/internal/app/IIFAAService;
    .locals 1
    .param p0, "x0"    # Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 19
    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    return-object v0
.end method

.method static synthetic access$002(Lorg/ifaa/android/manager/IFAAManagerFactory;Lcom/android/internal/app/IIFAAService;)Lcom/android/internal/app/IIFAAService;
    .locals 0
    .param p0, "x0"    # Lorg/ifaa/android/manager/IFAAManagerFactory;
    .param p1, "x1"    # Lcom/android/internal/app/IIFAAService;

    .line 19
    iput-object p1, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/ifaa/android/manager/IFAAManagerFactory;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 19
    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private ensureIfaaService(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timedout"    # I

    .line 135
    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lorg/ifaa/android/manager/IFAAManagerFactory;->IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 138
    if-lez p2, :cond_0

    .line 139
    const-string v1, "IFAAManagerFactory"

    const-string v2, "Waiting for IFAAService connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v3, "IFAAManagerFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception while binding IFAAService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 149
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    :goto_2
    return-void
.end method

.method public static getIFAAManager(Landroid/content/Context;I)Lorg/ifaa/android/manager/IFAAManagerV3;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authType"    # I

    .line 106
    const-string v0, "IFAAManagerFactory"

    const-string v1, "getIFAAManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerFactory;

    invoke-direct {v0, p0}, Lorg/ifaa/android/manager/IFAAManagerFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 109
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    return-object v0

    .line 111
    :cond_0
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    return-object v0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 4

    .line 84
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "DeviceModel":Ljava/lang/String;
    const-string v1, "IFAAManagerFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device model is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz v0, :cond_6

    .line 87
    const-string v1, "A3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "5801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "5811"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 89
    :cond_0
    const-string v1, "A5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "6859"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "7801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    const-string v1, "A6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "7819"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "8801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "8811"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    const-string v1, "ONEPLUS-A5000"

    return-object v1

    .line 92
    :cond_3
    :goto_0
    const-string v1, "ONEPLUS-A6000"

    return-object v1

    .line 90
    :cond_4
    :goto_1
    const-string v1, "ONEPLUS-A5000"

    return-object v1

    .line 88
    :cond_5
    :goto_2
    const-string v1, "ONEPLUS-A3000"

    return-object v1

    .line 97
    :cond_6
    const-string v1, "ONEPLUS-A5000"

    return-object v1
.end method

.method public getExtInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "authType"    # I
    .param p2, "keyExtInfo"    # Ljava/lang/String;

    .line 58
    const-string v0, "org.ifaa.ext.key.GET_SENSOR_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "{\'type\': 0, \'fullView\': {\'startX\': 452, \'startY\': 1970,\'width\': 174, \'height\': 174, \'navConflict\': true}}"

    return-object v0

    .line 61
    :cond_0
    const-string v0, "IFAAManagerFactory"

    const-string v1, "getExtInfo: Didn\'t request supported ext info"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, ""

    return-object v0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    const/4 v0, 0x1

    .line 47
    .local v0, "bioType":I
    sget-boolean v1, Lorg/ifaa/android/manager/IFAAManagerFactory;->hasCustomFingerPrinter:Z

    if-eqz v1, :cond_0

    .line 48
    or-int/lit8 v0, v0, 0x10

    .line 50
    :cond_0
    const-string v1, "IFAAManagerFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bioType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 102
    const/4 v0, 0x3

    return v0
.end method

.method public processCmdV2(Landroid/content/Context;[B)[B
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # [B

    .line 116
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "IFAAManagerFactory"

    const-string v1, "processCmdV2"

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IFAAManagerFactory"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 122
    .local v0, "result":[B
    const/16 v1, 0xbb8

    invoke-direct {p0, p1, v1}, Lorg/ifaa/android/manager/IFAAManagerFactory;->ensureIfaaService(Landroid/content/Context;I)V

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    invoke-interface {v1, p2}, Lcom/android/internal/app/IIFAAService;->processCmdV2([B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "IFAAManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception while invoking processCmdV2 of remote IFAAService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public setExtInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "authType"    # I
    .param p2, "keyExtInfo"    # Ljava/lang/String;
    .param p3, "valExtInfo"    # Ljava/lang/String;

    .line 55
    return-void
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authType"    # I

    .line 68
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "IFAAManagerFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBIOManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SecuritySettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    const-string v2, "IFAAManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOS context"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v1    # "intent":Landroid/content/Intent;
    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    nop

    .line 78
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return v0
.end method
