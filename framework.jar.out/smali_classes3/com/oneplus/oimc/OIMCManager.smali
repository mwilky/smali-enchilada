.class public Lcom/oneplus/oimc/OIMCManager;
.super Ljava/lang/Object;
.source "OIMCManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OIMCManager"

.field private static sService:Lcom/oneplus/os/IOIMCService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOIMCService;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static getRemoteFuncStatus(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [I

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOIMCService;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return v1
.end method

.method private static getService()Lcom/oneplus/os/IOIMCService;
    .locals 2

    sget-object v0, Lcom/oneplus/oimc/OIMCManager;->sService:Lcom/oneplus/os/IOIMCService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/oimc/OIMCManager;->sService:Lcom/oneplus/os/IOIMCService;

    return-object v0

    :cond_0
    const-string v0, "oimc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/os/IOIMCService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOIMCService;

    move-result-object v1

    sput-object v1, Lcom/oneplus/oimc/OIMCManager;->sService:Lcom/oneplus/os/IOIMCService;

    sget-object v1, Lcom/oneplus/oimc/OIMCManager;->sService:Lcom/oneplus/os/IOIMCService;

    return-object v1
.end method

.method public static notifyModeChange(Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/os/IOIMCService;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static registerRemoteAction(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    new-instance v1, Lcom/oneplus/oimc/OIMCRemoteActionStub;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/oimc/OIMCRemoteActionStub;-><init>(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;Landroid/os/Handler;)V

    invoke-interface {v0, p0, v1}, Lcom/oneplus/os/IOIMCService;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOIMCService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOIMCService;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOIMCService;->runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static unRegisterRemoteAction(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOIMCService;->unRegisterRemoteAction(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
