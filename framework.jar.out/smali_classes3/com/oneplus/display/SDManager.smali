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
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/oneplus/display/SDManager;->init()Lcom/oneplus/display/ISDService;

    .line 49
    return-void
.end method

.method private static init()Lcom/oneplus/display/ISDService;
    .locals 3

    .line 130
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    return-object v0

    .line 133
    :cond_0
    const-string v0, "smartdisplay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 134
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oneplus/display/ISDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/display/ISDService;

    move-result-object v1

    sput-object v1, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    .line 135
    sget-object v1, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-nez v1, :cond_1

    .line 136
    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    sget-object v1, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    return-object v1
.end method


# virtual methods
.method public SetActiveModesId(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 74
    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1}, Lcom/oneplus/display/ISDService;->SetActiveModesId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public SetDefaultModesId(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 85
    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1}, Lcom/oneplus/display/ISDService;->SetDefaultModesId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public SetPanelMode(IZ)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .line 96
    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/display/ISDService;->SetPanelMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public SetUsrColorBalanceConfig(DDD)V
    .locals 8
    .param p1, "Red"    # D
    .param p3, "Green"    # D
    .param p5, "Blue"    # D

    .line 107
    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    .line 108
    sget-object v1, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/oneplus/display/ISDService;->SetUsrColorBalanceConfig(DDD)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public SetUsrSharpness(I)V
    .locals 3
    .param p1, "sharpness"    # I

    .line 118
    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1}, Lcom/oneplus/display/ISDService;->SetUsrSharpness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public enableColorBalance(I)V
    .locals 3
    .param p1, "seekbar"    # I

    .line 63
    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1}, Lcom/oneplus/display/ISDService;->enableColorBalance(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public enableMode(I)V
    .locals 3
    .param p1, "type"    # I

    .line 53
    :try_start_0
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/oneplus/display/SDManager;->sService:Lcom/oneplus/display/ISDService;

    invoke-interface {v0, p1}, Lcom/oneplus/display/ISDService;->enableMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SDManager"

    const-string v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
