.class public Lcom/oem/os/OnePlusNfcManager;
.super Ljava/lang/Object;
.source "OnePlusNfcManager.java"


# static fields
.field public static final CARD_TYPE_BJBUS:Ljava/lang/String; = "BeiJingBaShi"

.field public static final CARD_TYPE_LNT:Ljava/lang/String; = "LinNanTong"

.field public static final CARD_TYPE_PRODUCT:Ljava/lang/String; = "ProductLine"

.field public static final CARD_TYPE_SZT:Ljava/lang/String; = "ShenZhenTong"

.field public static final CARD_TYPE_YCT:Ljava/lang/String; = "YangChengTong"

.field public static final ONEPLUS_NFC_SERVICE:Ljava/lang/String; = "oneplus_nfc_service"

.field private static final TAG:Ljava/lang/String; = "OnePlusNfcManager"

.field private static sService:Lcom/oem/os/IOnePlusNfcService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static getService()Lcom/oem/os/IOnePlusNfcService;
    .locals 2

    .line 156
    sget-object v0, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    return-object v0

    .line 159
    :cond_0
    const-string v0, "OnePlusNfcService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 160
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oem/os/IOnePlusNfcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOnePlusNfcService;

    move-result-object v1

    sput-object v1, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    .line 161
    sget-object v1, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    return-object v1
.end method


# virtual methods
.method public applyConfig()Z
    .locals 3

    .line 127
    const-string v0, "OnePlusNfcManager"

    const-string v1, "[applyConfig]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOnePlusNfcService;->applyConfig()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public getDieId()Ljava/lang/String;
    .locals 3

    .line 144
    const-string v0, "OnePlusNfcManager"

    const-string v1, "[getDieId]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOnePlusNfcService;->getDieId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCardTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    const-string v0, "OnePlusNfcManager"

    const-string v1, "[getSupportCardTypes]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOnePlusNfcService;->getSupportCardTypes()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportNfcConfigs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    const-string v0, "OnePlusNfcManager"

    const-string v1, "[getSupportNfcConfigs]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOnePlusNfcService;->getSupportNfcConfigs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 85
    const-string v0, "OnePlusNfcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCardType] type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oem/os/IOnePlusNfcService;->setCardType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setNfcConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .line 53
    const-string v0, "OnePlusNfcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setNfcConfig] config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oem/os/IOnePlusNfcService;->setNfcConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setSupportCardTypes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "cardTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OnePlusNfcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSupportCardTypes] cardTypes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oem/os/IOnePlusNfcService;->setSupportCardTypes(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
