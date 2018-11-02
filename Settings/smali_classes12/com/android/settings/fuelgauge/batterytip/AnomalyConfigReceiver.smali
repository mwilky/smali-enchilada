.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnomalyConfigReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnomalyConfigReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.app.action.STATSD_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->scheduleConfigUpdate(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->uploadAnomalyPendingIntent(Landroid/content/Context;Landroid/app/StatsManager;)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AnomalyConfigReceiver"

    const-string v3, "Failed to uploadAnomalyPendingIntent."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;->scheduleCleanUp(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
