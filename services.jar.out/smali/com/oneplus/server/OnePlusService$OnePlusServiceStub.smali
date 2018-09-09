.class final Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;
.super Lcom/oneplus/os/IOnePlusService$Stub;
.source "OnePlusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OnePlusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnePlusServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OnePlusService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OnePlusService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/server/OnePlusService;

    .line 59
    iput-object p1, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-direct {p0}, Lcom/oneplus/os/IOnePlusService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllAppControlModes(I)Ljava/util/List;
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {p1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppControlMode(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 85
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlMode(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppControlState(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 95
    iget-object v0, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-static {v0}, Lcom/oneplus/server/OnePlusService;->access$000(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlState(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPermissionService(I)Landroid/os/IBinder;
    .locals 1
    .param p1, "serviceIndex"    # I

    .line 73
    invoke-static {p1}, Lcom/android/server/am/OnePlusCTAPermissionService;->getPermissionServiceBinderProxy(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isRequestPermission(Z)V
    .locals 0
    .param p1, "request"    # Z

    .line 63
    invoke-static {p1}, Lcom/android/server/am/OnePlusCTAPermissionService;->isRequestPermission(Z)V

    .line 64
    return-void
.end method

.method public setAppControlMode(Ljava/lang/String;II)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "value"    # I

    .line 90
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlMode(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public setAppControlState(II)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "on"    # I

    .line 100
    iget-object v0, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-static {v0}, Lcom/oneplus/server/OnePlusService;->access$000(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlState(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "proxy"    # Landroid/os/IBinder;
    .param p2, "serviceIndex"    # I

    .line 68
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusCTAPermissionService;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V

    .line 69
    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "powerLevel"    # I

    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    .line 153
    :cond_0
    return-void
.end method
