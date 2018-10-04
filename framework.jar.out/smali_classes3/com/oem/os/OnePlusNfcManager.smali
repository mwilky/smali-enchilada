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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getService()Lcom/oem/os/IOnePlusNfcService;
    .locals 2

    sget-object v0, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    return-object v0

    :cond_0
    const-string v0, "OnePlusNfcService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/os/IOnePlusNfcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOnePlusNfcService;

    move-result-object v1

    sput-object v1, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    sget-object v1, Lcom/oem/os/OnePlusNfcManager;->sService:Lcom/oem/os/IOnePlusNfcService;

    return-object v1
.end method


# virtual methods
.method public applyConfig()Z
    .locals 3

    const-string v0, "OnePlusNfcManager"

    const-string v1, "[applyConfig]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOnePlusNfcService;->applyConfig()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDieId()Ljava/lang/String;
    .locals 3

    const-string v0, "OnePlusNfcManager"

    const-string v1, "[getDieId]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOnePlusNfcService;->getDieId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v0, "OnePlusNfcManager"

    const-string v1, "[getSupportCardTypes]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOnePlusNfcService;->getSupportCardTypes()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v0, "OnePlusNfcManager"

    const-string v1, "[getSupportNfcConfigs]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oem/os/IOnePlusNfcService;->getSupportNfcConfigs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 3

    const-string v0, "OnePlusNfcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCardType] type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oem/os/IOnePlusNfcService;->setCardType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNfcConfig(Ljava/lang/String;)V
    .locals 3

    const-string v0, "OnePlusNfcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setNfcConfig] config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oem/os/IOnePlusNfcService;->setNfcConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v0, "OnePlusNfcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSupportCardTypes] cardTypes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/oem/os/OnePlusNfcManager;->getService()Lcom/oem/os/IOnePlusNfcService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oem/os/IOnePlusNfcService;->setSupportCardTypes(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OnePlusNfcManager"

    const-string v2, "OnePlus Nfc service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
