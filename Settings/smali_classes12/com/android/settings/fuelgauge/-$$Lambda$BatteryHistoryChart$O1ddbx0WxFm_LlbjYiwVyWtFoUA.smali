.class public final synthetic Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryChart$O1ddbx0WxFm_LlbjYiwVyWtFoUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryInfo$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

.field private final synthetic f$1:Landroid/os/BatteryStats;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatteryHistoryChart;Landroid/os/BatteryStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryChart$O1ddbx0WxFm_LlbjYiwVyWtFoUA;->f$0:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryChart$O1ddbx0WxFm_LlbjYiwVyWtFoUA;->f$1:Landroid/os/BatteryStats;

    return-void
.end method


# virtual methods
.method public final onBatteryInfoLoaded(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryChart$O1ddbx0WxFm_LlbjYiwVyWtFoUA;->f$0:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryChart$O1ddbx0WxFm_LlbjYiwVyWtFoUA;->f$1:Landroid/os/BatteryStats;

    invoke-static {v0, v1, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->lambda$setStats$0(Lcom/android/settings/fuelgauge/BatteryHistoryChart;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method
