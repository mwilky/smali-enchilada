.class public Lcom/android/settings/bluetooth/AlwaysDiscoverable;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysDiscoverable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlwaysDiscoverable"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field mStarted:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localAdapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mIntentFilter:Landroid/content/IntentFilter;

    .line 52
    iget-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    if-eq v0, v1, :cond_0

    .line 84
    return-void

    .line 90
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mStarted:Z

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mStarted:Z

    .line 68
    return-void
.end method

.method public stop()V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mStarted:Z

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mStarted:Z

    .line 78
    return-void
.end method
