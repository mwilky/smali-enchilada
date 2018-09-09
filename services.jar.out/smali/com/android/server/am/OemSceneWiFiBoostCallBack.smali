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
    .param p1, "instance"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 27
    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 28
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 48
    const-string v0, "OemSceneWiFiBoostController"

    const-string v1, "WiFiBoost config"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 32
    const-string v0, "OemSceneWiFiBoostController"

    const-string v1, "WiFiBoost start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameModeNetBoost(Z)V

    .line 34
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    iget-object v0, v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 40
    const-string v0, "OemSceneWiFiBoostController"

    const-string v1, "WiFiBoost stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameModeNetBoost(Z)V

    .line 42
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostCallBack;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    iget-object v0, v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    .line 43
    return v1
.end method
