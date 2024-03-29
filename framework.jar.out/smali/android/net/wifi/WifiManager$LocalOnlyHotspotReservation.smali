.class public Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalOnlyHotspotReservation"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfig:Landroid/net/wifi/WifiConfiguration;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)V

    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiManager"

    const-string v2, "Failed to stop Local Only Hotspot."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method
