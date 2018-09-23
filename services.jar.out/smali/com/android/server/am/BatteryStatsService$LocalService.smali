.class final Lcom/android/server/am/BatteryStatsService$LocalService;
.super Landroid/os/BatteryStatsInternal;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/os/BatteryStatsInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method


# virtual methods
.method public getMobileIfaces()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWifiIfaces()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public noteJobsDeferred(IIJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->noteJobsDeferred(IIJ)V

    return-void
.end method
