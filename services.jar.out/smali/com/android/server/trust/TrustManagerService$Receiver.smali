.class Lcom/android/server/trust/TrustManagerService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    return-void
.end method

.method private getUserId(Landroid/content/Intent;)I
    .locals 5

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const-string v2, "TrustManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTRA_USER_HANDLE missing or invalid, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$Receiver;->getSendingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService;->updateDevicePolicyFeatures()V

    goto/16 :goto_0

    :cond_0
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/trust/TrustManagerService;->access$2500(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->access$2600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->access$2300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2, v1}, Lcom/android/server/trust/TrustManagerService;->access$2100(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    :catchall_3
    move-exception v3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3

    :cond_3
    :goto_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 7

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
