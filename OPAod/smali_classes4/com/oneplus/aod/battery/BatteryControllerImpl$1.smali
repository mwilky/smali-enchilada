.class Lcom/oneplus/aod/battery/BatteryControllerImpl$1;
.super Lcom/oneplus/aod/AodUpdateMonitorCallback;
.source "BatteryControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/battery/BatteryControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 118
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartDozing()V
    .locals 3

    .line 121
    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    .line 123
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$000(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Lcom/oneplus/aod/clock/ClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->getClockStyle()I

    move-result v0

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$200(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$200(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$200(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    goto :goto_2

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$200(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 135
    :goto_2
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$300(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V

    .line 136
    return-void
.end method

.method public onStopDozing()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStopDozing()V

    .line 141
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$400(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$500(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    return-void
.end method
