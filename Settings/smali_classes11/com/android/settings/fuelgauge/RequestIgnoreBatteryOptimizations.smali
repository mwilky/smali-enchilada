.class public Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestIgnoreBatteryOptimizations.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DEVICE_IDLE_SERVICE:Ljava/lang/String; = "deviceidle"

.field static final TAG:Ljava/lang/String; = "RequestIgnoreBatteryOptimizations"


# instance fields
.field mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RequestIgnoreBatteryOptimizations"

    const-string v3, "Unable to reach IDeviceIdleController"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->setResult(I)V

    nop

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "RequestIgnoreBatteryOptimizations"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No data supplied for IGNORE_BATTERY_OPTIMIZATION_SETTINGS in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "RequestIgnoreBatteryOptimizations"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No data supplied for IGNORE_BATTERY_OPTIMIZATION_SETTINGS in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    return-void

    :cond_1
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "RequestIgnoreBatteryOptimizations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not should prompt, already ignoring optimizations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    iget-object v6, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "RequestIgnoreBatteryOptimizations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not hold permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f120740

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v5, 0x7f12073f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v4, 0x7f1200f1

    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const v4, 0x7f120536

    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->setupAlert()V

    return-void

    :catch_0
    move-exception v2

    const-string v3, "RequestIgnoreBatteryOptimizations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested package doesn\'t exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    return-void
.end method
