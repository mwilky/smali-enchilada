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
.field private final BATTERY_BAR_STYLE:I

.field private final BATTERY_PERCENT_STYLE:I

.field private final SHOW_BATTERY_PERCENT:Landroid/net/Uri;

.field private final STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 374
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 365
    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->BATTERY_BAR_STYLE:I

    .line 366
    const/4 p1, 0x3

    iput p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->BATTERY_PERCENT_STYLE:I

    .line 368
    const-string p1, "status_bar_show_battery_percent"

    .line 369
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->SHOW_BATTERY_PERCENT:Landroid/net/Uri;

    .line 370
    const-string p1, "status_bar_battery_style"

    .line 371
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    .line 375
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 380
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->SHOW_BATTERY_PERCENT:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 382
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 384
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    .line 385
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 389
    invoke-virtual {p0, p2}, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    .line 390
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 393
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 394
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->SHOW_BATTERY_PERCENT:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    const-string v3, "status_bar_show_battery_percent"

    .line 396
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 395
    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-static {v2, v3}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$802(Lcom/oneplus/aod/battery/BatteryControllerImpl;Z)Z

    .line 397
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v2}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$900(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v3}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$800(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 399
    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 400
    :cond_4
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    const-string v3, "status_bar_battery_style"

    .line 401
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 400
    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v2, v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$1002(Lcom/oneplus/aod/battery/BatteryControllerImpl;I)I

    .line 403
    :cond_5
    const-string v1, "AodBatteryController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mShowPercent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 404
    invoke-static {v3}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$800(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v3}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$1000(Lcom/oneplus/aod/battery/BatteryControllerImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$1100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V

    .line 406
    return-void
.end method
