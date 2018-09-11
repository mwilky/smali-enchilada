.class public Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BluetoothFilesPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final ACTION_OPEN_FILES:Ljava/lang/String; = "com.android.bluetooth.action.TransferHistory"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_DIRECTION:Ljava/lang/String; = "direction"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_SHOW_ALL_FILES:Ljava/lang/String; = "android.btopp.intent.extra.SHOW_ALL"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_RECEIVED_FILES:Ljava/lang/String; = "bt_received_files"

.field private static final TAG:Ljava/lang/String; = "BluetoothFilesPrefCtrl"


# instance fields
.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    const-string v0, "bt_received_files"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 53
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x2

    .line 57
    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "bt_received_files"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 69
    const-string v0, "bt_received_files"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mContext:Landroid/content/Context;

    const/16 v3, 0xa2

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.action.TransferHistory"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    const-string v1, "direction"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v1, "android.btopp.intent.extra.SHOW_ALL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return v2

    .line 80
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v1
.end method
