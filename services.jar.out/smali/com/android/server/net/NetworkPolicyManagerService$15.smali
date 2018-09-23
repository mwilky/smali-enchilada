.class Lcom/android/server/net/NetworkPolicyManagerService$15;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 7

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0xb

    :try_start_0
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v2

    const/16 v3, 0x12

    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-static {v4, v3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v4

    if-nez v2, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v5

    iget v6, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v5, v6, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meterednessChanged(IZ)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_0
    return-void
.end method
