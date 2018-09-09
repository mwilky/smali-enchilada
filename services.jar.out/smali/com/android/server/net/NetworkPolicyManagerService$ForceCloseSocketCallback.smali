.class public final Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceCloseSocketCallback"
.end annotation


# instance fields
.field fifo_uids:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1186
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->fifo_uids:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1196
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1197
    .local v1, "uid":Ljava/lang/Integer;
    monitor-enter p0

    .line 1198
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->fifo_uids:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1199
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->fifo_uids:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 1201
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1202
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieve one close Uid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", left size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->fifo_uids:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_5

    .line 1204
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController$LocalService;->isDeviceDeepIdleMode()Z

    move-result v2

    .line 1205
    .local v2, "isDeepIdle":Z
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1206
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDozeChangeSupport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mPolicy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isDeepIdle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_2
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    if-eqz v2, :cond_5

    .line 1217
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1218
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v0, :cond_4

    .line 1219
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/DeviceIdleController$LocalService;->isAppOnWhitelist(I)Z

    move-result v0

    .line 1220
    .local v0, "isAppOnWhitelist":Z
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try to close Uid :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isAppOnWhitelist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_3
    if-nez v0, :cond_4

    .line 1222
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/NetworkManagementInternal;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/NetworkManagementInternal;->forceCloseUidSocketForDeepSleep(I)V

    .line 1225
    .end local v0    # "isAppOnWhitelist":Z
    :cond_4
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1228
    .end local v2    # "isDeepIdle":Z
    :cond_5
    :goto_0
    return-void

    .line 1201
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setInForceCloseSocketUid(I)V
    .locals 3
    .param p1, "id"    # I

    .line 1189
    monitor-enter p0

    .line 1190
    :try_start_0
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInForceCloseSocketUid, add Uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->fifo_uids:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1192
    monitor-exit p0

    .line 1193
    return-void

    .line 1192
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
