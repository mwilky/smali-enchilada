.class public Lcom/oneplus/three_key/ThreeKeyManager;
.super Ljava/lang/Object;
.source "ThreeKeyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreeKeyManager"

.field private static sService:Lcom/oem/os/IOemExService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getService()Lcom/oem/os/IOemExService;
    .locals 2

    .line 77
    sget-object v0, Lcom/oneplus/three_key/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/oneplus/three_key/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    return-object v0

    .line 80
    :cond_0
    const-string v0, "OEMExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v1

    sput-object v1, Lcom/oneplus/three_key/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    .line 82
    sget-object v1, Lcom/oneplus/three_key/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    return-object v1
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .locals 3
    .param p1, "policy"    # Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 39
    const-string v0, "ThreeKeyManager"

    const-string v1, "[setThreeKeyPolicyHelper]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oem/os/IOemExService;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ThreeKeyManager"

    const-string v2, "[setThreeKeyPolicyHelper] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public disableDefaultThreeKey()V
    .locals 3

    .line 21
    const-string v0, "ThreeKeyManager"

    const-string v1, "[disableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOemExService;->disableDefaultThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ThreeKeyManager"

    const-string v2, "[test] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public enalbeDefaultThreeKey()V
    .locals 3

    .line 30
    const-string v0, "ThreeKeyManager"

    const-string v1, "[enalbeDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOemExService;->enalbeDefaultThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ThreeKeyManager"

    const-string v2, "[test] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getThreeKeyStatus()I
    .locals 3

    .line 68
    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOemExService;->getThreeKeyStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TAG"

    const-string v2, "[getThreeKeyStatus]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .locals 3
    .param p1, "policy"    # Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 48
    const-string v0, "ThreeKeyManager"

    const-string v1, "[removeThreeKeyPolicyHelper]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oem/os/IOemExService;->removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ThreeKeyManager"

    const-string v2, "[removeThreeKeyPolicyHelper]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public resetThreeKey()V
    .locals 3

    .line 57
    const-string v0, "ThreeKeyManager"

    const-string v1, "[resetThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    invoke-static {}, Lcom/oneplus/three_key/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOemExService;->resetThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ThreeKeyManager"

    const-string v2, "[resetThreeKey]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
