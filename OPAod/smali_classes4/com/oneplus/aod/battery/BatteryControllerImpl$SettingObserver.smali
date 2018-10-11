.class final Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/battery/BatteryControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "status_bar_battery_style"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    const-string v2, "status_bar_battery_style"

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$802(Lcom/oneplus/aod/battery/BatteryControllerImpl;I)I

    :cond_1
    const-string v1, "AodBatteryController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v3}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$800(Lcom/oneplus/aod/battery/BatteryControllerImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$900(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V

    return-void
.end method
