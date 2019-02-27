.class Lcom/android/internal/os/BatteryStatsImpl$4;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 12480
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 12483
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$1700()Lcom/oem/os/IOemExService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12484
    const-string v0, "OEMExService"

    .line 12485
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 12484
    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$1702(Lcom/oem/os/IOemExService;)Lcom/oem/os/IOemExService;

    .line 12487
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$1700()Lcom/oem/os/IOemExService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12488
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$1700()Lcom/oem/os/IOemExService;

    move-result-object v0

    const-string v1, "battery_reset"

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->dumpLightBugreport(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12492
    :cond_1
    goto :goto_0

    .line 12490
    :catch_0
    move-exception v0

    .line 12491
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpLightBugreport failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12493
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
