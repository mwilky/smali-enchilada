.class Lcom/android/server/display/WifiDisplayAdapter$9;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WifiDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayConnectionFailed()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayDisconnected()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1402(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFeatureStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$400(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$402(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScanFinished()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScanResults([Landroid/hardware/display/WifiDisplay;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    if-nez v4, :cond_1

    array-length v5, p1

    if-ge v1, v5, :cond_1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v6}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v6

    if-eq v5, v6, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    move v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScanStarted()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
