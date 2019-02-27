.class public Lcom/oneplus/appboot/AppControlModeManager;
.super Ljava/lang/Object;
.source "AppControlModeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppControlModeManager"

.field private static sService:Lcom/oneplus/os/IOnePlusService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllAppControlModes(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOnePlusService;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAppControlMode(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOnePlusService;->getAppControlMode(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public static getAppControlState(I)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOnePlusService;->getAppControlState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method private static getService()Lcom/oneplus/os/IOnePlusService;
    .locals 2

    sget-object v0, Lcom/oneplus/appboot/AppControlModeManager;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/appboot/AppControlModeManager;->sService:Lcom/oneplus/os/IOnePlusService;

    return-object v0

    :cond_0
    const-string v0, "opservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/os/IOnePlusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusService;

    move-result-object v1

    sput-object v1, Lcom/oneplus/appboot/AppControlModeManager;->sService:Lcom/oneplus/os/IOnePlusService;

    sget-object v1, Lcom/oneplus/appboot/AppControlModeManager;->sService:Lcom/oneplus/os/IOnePlusService;

    return-object v1
.end method

.method public static setAppControlMode(Ljava/lang/String;II)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/os/IOnePlusService;->setAppControlMode(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public static setAppControlState(II)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/oneplus/appboot/AppControlModeManager;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOnePlusService;->setAppControlState(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method
