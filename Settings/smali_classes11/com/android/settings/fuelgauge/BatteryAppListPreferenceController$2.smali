.class Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;
.super Ljava/lang/Object;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->OnDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$500(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->restartBatteryStatsLoader(I)V

    return-void
.end method
