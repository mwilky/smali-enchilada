.class public Lcom/oneplus/three_key/ThreeKeyManager;
.super Ljava/lang/Object;
.source "ThreeKeyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreeKeyManager"

.field private static sService:Lcom/oem/os/IOemExService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Lcom/oem/os/IOemExService;
    .locals 2

    sget-object v0, Lcom/oneplus/three_key/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/three_key/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    return-object v0

    :cond_0
    const-string v0, "OEMExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v1

    sput-object v1, Lcom/oneplus/three_key/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    sget-object v1, Lcom/oneplus/three_key/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    return-object v1
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .locals 3

    const-string v0, "ThreeKeyManager"

    const-string v1, "[setThreeKeyPolicyHelper]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oem/os/IOemExService;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ThreeKeyManager"

    const-string v2, "[setThreeKeyPolicyHelper] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public disableDefaultThreeKey()V
    .locals 3

    const-string v0, "ThreeKeyManager"

    const-string v1, "[disableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOemExService;->disableDefaultThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ThreeKeyManager"

    const-string v2, "[test] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public enalbeDefaultThreeKey()V
    .locals 3

    const-string v0, "ThreeKeyManager"

    const-string v1, "[enalbeDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOemExService;->enalbeDefaultThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ThreeKeyManager"

    const-string v2, "[test] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getThreeKeyStatus()I
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOemExService;->getThreeKeyStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "TAG"

    const-string v2, "[getThreeKeyStatus]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .locals 3

    const-string v0, "ThreeKeyManager"

    const-string v1, "[removeThreeKeyPolicyHelper]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oem/os/IOemExService;->removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ThreeKeyManager"

    const-string v2, "[removeThreeKeyPolicyHelper]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public resetThreeKey()V
    .locals 3

    const-string v0, "ThreeKeyManager"

    const-string v1, "[resetThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOemExService;->resetThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ThreeKeyManager"

    const-string v2, "[resetThreeKey]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
