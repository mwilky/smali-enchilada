.class Lcom/android/settings/DisplaySettings$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field private final SCREEN_TIMEOUT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1577
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    .line 1578
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1572
    const-string p1, "screen_brightness_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 1573
    const-string p1, "screen_brightness"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 1574
    const-string p1, "screen_auto_brightness_adj"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 1575
    const-string p1, "screen_off_timeout"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    .line 1579
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 1583
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/DisplaySettings$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1584
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1588
    if-eqz p1, :cond_0

    .line 1589
    return-void

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1592
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$600(Lcom/android/settings/DisplaySettings;)V

    goto :goto_1

    .line 1593
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1595
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1596
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1599
    .local v0, "currentTimeout":I
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$800(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 1601
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/settings/DisplaySettings;->access$900(Lcom/android/settings/DisplaySettings;J)V

    .end local v0    # "currentTimeout":I
    goto :goto_1

    .line 1594
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$700(Lcom/android/settings/DisplaySettings;)V

    .line 1605
    :cond_4
    :goto_1
    return-void
.end method

.method public startObserving()V
    .locals 4

    .line 1608
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1609
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1610
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1611
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1612
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1613
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1614
    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 1617
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1618
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1619
    return-void
.end method
