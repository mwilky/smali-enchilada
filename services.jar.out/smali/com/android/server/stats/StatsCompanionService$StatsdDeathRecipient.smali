.class Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;
.super Ljava/lang/Object;
.source "StatsCompanionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsdDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/StatsCompanionService;


# direct methods
.method private constructor <init>(Lcom/android/server/stats/StatsCompanionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/StatsCompanionService;Lcom/android/server/stats/StatsCompanionService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;-><init>(Lcom/android/server/stats/StatsCompanionService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 11

    const-string v0, "StatsCompanionService"

    const-string v1, "Statsd is dead - erase all my knowledge."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v3}, Lcom/android/server/stats/StatsCompanionService;->access$800(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$900()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v7}, Lcom/android/server/stats/StatsCompanionService;->access$800(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v3}, Lcom/android/server/stats/StatsCompanionService;->access$1000(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$900()J

    move-result-wide v7

    const-wide/16 v9, 0x7

    mul-long/2addr v7, v9

    cmp-long v7, v5, v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v7}, Lcom/android/server/stats/StatsCompanionService;->access$1000(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v3}, Lcom/android/server/stats/StatsCompanionService;->access$800(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v3}, Lcom/android/server/stats/StatsCompanionService;->access$800(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v3}, Lcom/android/server/stats/StatsCompanionService;->access$800(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/stats-service"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_4

    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v4}, Lcom/android/server/stats/StatsCompanionService;->access$1000(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v3}, Lcom/android/server/stats/StatsCompanionService;->access$500(Lcom/android/server/stats/StatsCompanionService;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
