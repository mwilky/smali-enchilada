.class Lcom/android/server/net/NetworkStatsService$7;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    .line 1065
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1069
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)V

    .line 1071
    monitor-exit v0

    .line 1072
    return-void

    .line 1071
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
