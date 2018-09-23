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

    iput-object p1, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-direct {p0}, Lcom/oneplus/os/IOnePlusService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllAppControlModes(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppControlMode(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlMode(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppControlState(I)I
    .locals 1

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

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPermissionService(I)Landroid/os/IBinder;
    .locals 1

    invoke-static {p1}, Lcom/android/server/am/OnePlusCTAPermissionService;->getPermissionServiceBinderProxy(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isRequestPermission(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/OnePlusCTAPermissionService;->isRequestPermission(Z)V

    return-void
.end method

.method public setAppControlMode(Ljava/lang/String;II)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlMode(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public setAppControlState(II)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-static {v0}, Lcom/oneplus/server/OnePlusService;->access$000(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlState(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusCTAPermissionService;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V

    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
