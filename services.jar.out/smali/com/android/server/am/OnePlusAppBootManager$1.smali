.class Lcom/android/server/am/OnePlusAppBootManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    :cond_1
    const-string v1, "com.haha.action.test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_10

    const-string v1, "code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    const-string/jumbo v6, "persist"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$300(Lcom/android/server/am/OnePlusAppBootManager;J)V

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v2, "prop_using_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const-string/jumbo v2, "persist.sys.appboot.using"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v2, "prop_using_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const-string/jumbo v2, "persist.sys.appboot.using"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v2, "prop_debug_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    const-string/jumbo v2, "persist.sys.appboot.debug"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v2, "prop_debug_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    const-string/jumbo v2, "persist.sys.appboot.debug"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v2, "prop_blacklist_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    const-string/jumbo v2, "persist.sys.appboot.blacklist"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v2, "prop_blacklist_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    const-string/jumbo v2, "persist.sys.appboot.blacklist"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "dump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$400(Lcom/android/server/am/OnePlusAppBootManager;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$500(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "dumplist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$600(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_1

    :cond_a
    const-string v2, "dump_widget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$700(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$700(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "OnePlusAppBootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "widgetpkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_b
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_c
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "@huge@dump"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$800(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto :goto_1

    :cond_d
    const-string v2, "@huge@add@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "@huge@add@"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const/4 v4, 0x2

    invoke-static {v3, v2, v5, v4}, Lcom/android/server/am/OnePlusAppBootManager;->access$900(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;ZI)V

    goto :goto_1

    :cond_e
    const-string v2, "@huge@start@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "@huge@start@"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const/4 v5, 0x4

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->access$900(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;ZI)V

    :cond_f
    :goto_1
    goto :goto_2

    :cond_10
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x1f

    if-eqz v1, :cond_12

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->access$1002(Z)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-static {v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput v4, v1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v6, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_11

    new-array v5, v5, [I

    const/16 v6, 0x22

    aput v6, v5, v4

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessage(I)Z

    :cond_11
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$300(Lcom/android/server/am/OnePlusAppBootManager;J)V

    goto :goto_2

    :cond_12
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->access$1002(Z)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-static {v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2

    :cond_13
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$1200(Lcom/android/server/am/OnePlusAppBootManager;)Z

    :cond_14
    :goto_2
    return-void
.end method
