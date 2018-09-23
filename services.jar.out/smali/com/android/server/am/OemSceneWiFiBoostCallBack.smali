.class public Lcom/android/server/am/OemSceneWiFiBoostCallBack;
.super Ljava/lang/Object;
.source "OemSceneWiFiBoostCallBack.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# static fields
.field private static final TAG:Ljava/lang/String; = "OemSceneWiFiBoostController"


# instance fields
.field private mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2

    const-string v0, "OemSceneWiFiBoostController"

    const-string v1, "WiFiBoost config"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    const-string v0, "OemSceneWiFiBoostController"

    const-string v1, "WiFiBoost start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameModeNetBoost(Z)V

    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    iget-object v0, v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    const-string v0, "OemSceneWiFiBoostController"

    const-string v1, "WiFiBoost stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameModeNetBoost(Z)V

    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    iget-object v0, v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    return v1
.end method
