.class Lcom/android/server/locksettings/LockSettingsService$2;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$800(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/security/KeyStore;->onUserAdded(II)V

    goto/16 :goto_2

    :cond_2
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$800(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    :cond_4
    goto/16 :goto_2

    :cond_5
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PACKAGE_DATA_CLEARED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", userId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_7

    if-nez v2, :cond_7

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    nop

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v7}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v7, v7, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->access$900(Lcom/android/server/locksettings/LockSettingsService;I)V

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method
