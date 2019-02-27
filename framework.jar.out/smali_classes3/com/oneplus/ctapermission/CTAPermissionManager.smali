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

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "opservice"

    .line 46
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/oneplus/os/IOnePlusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/oneplus/ctapermission/CTAPermissionManager;
    .locals 2

    .line 53
    const-class v0, Lcom/oneplus/ctapermission/CTAPermissionManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-nez v1, :cond_1

    .line 55
    :cond_0
    new-instance v1, Lcom/oneplus/ctapermission/CTAPermissionManager;

    invoke-direct {v1}, Lcom/oneplus/ctapermission/CTAPermissionManager;-><init>()V

    sput-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    .line 57
    :cond_1
    sget-object v1, Lcom/oneplus/ctapermission/CTAPermissionManager;->sInstance:Lcom/oneplus/ctapermission/CTAPermissionManager;

    monitor-exit v0

    return-object v1

    .line 58
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
    .param p1, "serviceIndex"    # I

    .line 93
    const/4 v0, 0x0

    move-object v1, v0

    .line 95
    .local v1, "proxy":Landroid/os/IBinder;
    :try_start_0
    sget-object v2, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    invoke-interface {v2, p1}, Lcom/oneplus/os/IOnePlusService;->getPermissionService(I)Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 97
    :cond_0
    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    .line 98
    :goto_0
    if-eqz v1, :cond_1

    .line 99
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 101
    :cond_1
    return-object v0
.end method

.method public isRequestPermission(Z)V
    .locals 1
    .param p1, "request"    # Z

    .line 72
    :try_start_0
    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    invoke-interface {v0, p1}, Lcom/oneplus/os/IOnePlusService;->isRequestPermission(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 76
    :goto_0
    return-void
.end method

.method public setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "proxy"    # Landroid/os/IBinder;
    .param p2, "serviceIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 84
    :try_start_0
    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/ctapermission/CTAPermissionManager;->sService:Lcom/oneplus/os/IOnePlusService;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/os/IOnePlusService;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 87
    :goto_0
    return-void
.end method
