.class public Lcom/oneplus/display/SDManager;
.super Ljava/lang/Object;
.source "SDManager.java"


# static fields
.field public static final SMART_DISPLAY_SERVICE:Ljava/lang/String; = "smartdisplay"

.field private static final TAG:Ljava/lang/String; = "SDManager"

.field private static sService:Lcom/oneplus/display/ISDService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oneplus/display/SDManager;->init()Lcom/oneplus/display/ISDService;

    return-void
.end method

.method private static init()Lcom/oneplus/display/ISDService;
    .locals 3

    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    return-object v0

    :cond_0
    const-string v0, "smartdisplay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/display/ISDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/display/ISDService;

    move-result-object v1

    sput-object v1, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    sget-object v1, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-nez v1, :cond_1

    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    return-object v1
.end method


# virtual methods
.method public SetActiveModesId(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1}, Lcom/oneplus/display/ISDService;->SetActiveModesId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public SetDefaultModesId(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1}, Lcom/oneplus/display/ISDService;->SetDefaultModesId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public SetPanelMode(IZ)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/display/ISDService;->SetPanelMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public SetUsrColorBalanceConfig(DDD)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/oneplus/display/ISDService;->SetUsrColorBalanceConfig(DDD)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public SetUsrSharpness(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1}, Lcom/oneplus/display/ISDService;->SetUsrSharpness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public enableColorBalance(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1}, Lcom/oneplus/display/ISDService;->enableColorBalance(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public enableMode(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1}, Lcom/oneplus/display/ISDService;->enableMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
