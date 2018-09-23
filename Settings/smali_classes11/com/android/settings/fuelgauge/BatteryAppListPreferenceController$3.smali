.class Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;
.super Ljava/lang/Object;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;
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

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$200(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->stopApp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$200(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    :cond_0
    return-void
.end method
