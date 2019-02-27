.class public Lcom/oneplus/oimc/OIMCManager;
.super Ljava/lang/Object;
.source "OIMCManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OIMCManager"

.field private static sService:Lcom/oneplus/os/IOIMCService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 3
    .param p0, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p1, "userId"    # I

    .line 72
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOIMCService;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    :goto_0
    return-void
.end method

.method public static addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3
    .param p0, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 102
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_1
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    :goto_0
    return-void
.end method

.method public static getRemoteFuncStatus(Ljava/lang/String;)I
    .locals 3
    .param p0, "fName"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [I

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    return v1

    .line 151
    :cond_0
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOIMCService;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 154
    :cond_1
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 156
    :goto_0
    return v1
.end method

.method private static getService()Lcom/oneplus/os/IOIMCService;
    .locals 2

    .line 192
    sget-object v0, Lcom/oneplus/oimc/OIMCManager;->sService:Lcom/oneplus/os/IOIMCService;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/oneplus/oimc/OIMCManager;->sService:Lcom/oneplus/os/IOIMCService;

    return-object v0

    .line 195
    :cond_0
    const-string v0, "oimc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 196
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oneplus/os/IOIMCService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOIMCService;

    move-result-object v1

    sput-object v1, Lcom/oneplus/oimc/OIMCManager;->sService:Lcom/oneplus/os/IOIMCService;

    .line 197
    sget-object v1, Lcom/oneplus/oimc/OIMCManager;->sService:Lcom/oneplus/os/IOIMCService;

    return-object v1
.end method

.method public static notifyModeChange(Ljava/lang/String;II)V
    .locals 3
    .param p0, "mode"    # Ljava/lang/String;
    .param p1, "change"    # I
    .param p2, "reserved"    # I

    .line 57
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/os/IOIMCService;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_1
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    :goto_0
    return-void
.end method

.method public static registerRemoteAction(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;Landroid/os/Handler;)V
    .locals 3
    .param p0, "fName"    # Ljava/lang/String;
    .param p1, "func"    # Lcom/oneplus/oimc/IOPFunction;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 164
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    new-instance v1, Lcom/oneplus/oimc/OIMCRemoteActionStub;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/oimc/OIMCRemoteActionStub;-><init>(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;Landroid/os/Handler;)V

    invoke-interface {v0, p0, v1}, Lcom/oneplus/os/IOIMCService;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    :goto_0
    return-void
.end method

.method public static removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 3
    .param p0, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p1, "userId"    # I

    .line 87
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/os/IOIMCService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_1
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    :goto_0
    return-void
.end method

.method public static removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3
    .param p0, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 117
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOIMCService;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    :goto_0
    return-void
.end method

.method public static runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3
    .param p0, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 132
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOIMCService;->runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_1
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 140
    :goto_0
    return-void
.end method

.method public static unRegisterRemoteAction(Ljava/lang/String;)V
    .locals 3
    .param p0, "fName"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/oneplus/oimc/OIMCManager;->getService()Lcom/oneplus/os/IOIMCService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOIMCService;->unRegisterRemoteAction(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 187
    :goto_0
    return-void
.end method
