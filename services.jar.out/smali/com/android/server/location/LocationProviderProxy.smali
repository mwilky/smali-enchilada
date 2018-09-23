.class public Lcom/android/server/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNewServiceWork:Ljava/lang/Runnable;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;

.field private mWorksource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, v0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    new-instance v2, Lcom/android/server/location/LocationProviderProxy$1;

    invoke-direct {v2, v0}, Lcom/android/server/location/LocationProviderProxy$1;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    iput-object v2, v0, Lcom/android/server/location/LocationProviderProxy;->mNewServiceWork:Ljava/lang/Runnable;

    move-object v2, p1

    iput-object v2, v0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    new-instance v12, Lcom/android/server/ServiceWatcher;

    iget-object v4, v0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocationProviderProxy-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lcom/android/server/location/LocationProviderProxy;->mNewServiceWork:Ljava/lang/Runnable;

    move-object v3, v12

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v12, v0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object p1
.end method

.method private bind()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;
    .locals 9

    new-instance v8, Lcom/android/server/location/LocationProviderProxy;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    invoke-direct {v0}, Lcom/android/server/location/LocationProviderProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public disable()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/LocationProviderProxy$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationProviderProxy$3;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "REMOTE SERVICE"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, " name="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, " pkg="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, " version="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBestVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/LocationProviderProxy$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/location/LocationProviderProxy$5;-><init>(Lcom/android/server/location/LocationProviderProxy;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "service down (null)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enable()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/LocationProviderProxy$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationProviderProxy$2;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getConnectedPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v3, Lcom/android/server/location/LocationProviderProxy$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/location/LocationProviderProxy$6;-><init>(Lcom/android/server/location/LocationProviderProxy;[ILandroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    aget v1, v0, v2

    return v1
.end method

.method public getStatusUpdateTime()J
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v3, Lcom/android/server/location/LocationProviderProxy$7;

    invoke-direct {v3, p0, v0}, Lcom/android/server/location/LocationProviderProxy$7;-><init>(Lcom/android/server/location/LocationProviderProxy;[J)V

    invoke-virtual {v2, v3}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v3, Lcom/android/server/location/LocationProviderProxy$8;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/server/location/LocationProviderProxy$8;-><init>(Lcom/android/server/location/LocationProviderProxy;[ZLjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    aget-boolean v1, v0, v1

    return v1
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/LocationProviderProxy$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/LocationProviderProxy$4;-><init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
