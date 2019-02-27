.class public final Lcom/oneplus/ctapermission/CTAPermissionManager;
.super Ljava/lang/Object;
.source "CTAPermissionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CTAPermissionManager"

.field private static sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

.field private static sService:Lcom/oneplus/os/IOnePlusService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "opservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/os/IOnePlusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    return-void
.end method

.method public static getInstance()Lcom/oneplus/ctapermission/CTAPermissionManager;
    .locals 2

    const-class v0, Lcom/oneplus/ctapermission/CTAPermissionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/oneplus/ctapermission/CTAPermissionManager;

    invoke-direct {v1}, Lcom/oneplus/ctapermission/CTAPermissionManager;-><init>()V

    sput-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    :cond_1
    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getPermissionService(I)Landroid/os/Messenger;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    sget-object v2, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    invoke-interface {v2, p1}, Lcom/oneplus/os/IOnePlusService;->getPermissionService(I)Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_1
    return-object v0
.end method

.method public isRequestPermission(Z)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    invoke-interface {v0, p1}, Lcom/oneplus/os/IOnePlusService;->isRequestPermission(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/os/IOnePlusService;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
