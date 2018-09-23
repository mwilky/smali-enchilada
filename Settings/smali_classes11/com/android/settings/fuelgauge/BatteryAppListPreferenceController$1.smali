.class Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;
.super Landroid/os/Handler;
.source "BatteryAppListPreferenceController.java"


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
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$100(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$000(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v4, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v4, v5, :cond_0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setContentDescription(Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$200(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$300(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$400(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
