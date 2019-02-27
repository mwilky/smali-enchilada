.class public Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;
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
    name = "LocalOnlyHotspotSubscription"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2898
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2894
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2899
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 2900
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 2905
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->this$0:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->unregisterLocalOnlyHotspotObserver()V

    .line 2906
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2909
    goto :goto_0

    .line 2907
    :catch_0
    move-exception v0

    .line 2908
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiManager"

    const-string v2, "Failed to unregister LocalOnlyHotspotObserver."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    .end local v0    # "e":Ljava/lang/Exception;
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

    .line 2915
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2916
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 2918
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2920
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2921
    nop

    .line 2922
    return-void

    .line 2920
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
