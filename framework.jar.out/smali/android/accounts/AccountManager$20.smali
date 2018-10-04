.class Landroid/accounts/AccountManager$20;
.super Landroid/content/BroadcastReceiver;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 0

    iput-object p1, p0, Landroid/accounts/AccountManager$20;->this$0:Landroid/accounts/AccountManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Landroid/accounts/AccountManager$20;->this$0:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$20;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1}, Landroid/accounts/AccountManager;->access$200(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/accounts/AccountManager$20;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v2}, Landroid/accounts/AccountManager;->access$200(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Landroid/accounts/AccountManager$20;->this$0:Landroid/accounts/AccountManager;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/OnAccountsUpdateListener;

    invoke-static {v4, v5, v6, v0}, Landroid/accounts/AccountManager;->access$1700(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
