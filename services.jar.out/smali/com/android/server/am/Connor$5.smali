.class Lcom/android/server/am/Connor$5;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 336
    iput-object p1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 339
    invoke-static {}, Lcom/android/server/am/Connor;->nativeCluster()Ljava/util/HashMap;

    move-result-object v0

    .line 340
    .local v0, "predicts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2, v0}, Lcom/android/server/am/Connor;->access$1202(Lcom/android/server/am/Connor;Ljava/util/Map;)Ljava/util/Map;

    .line 342
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v1}, Lcom/android/server/am/Connor;->access$1300(Lcom/android/server/am/Connor;)Landroid/app/usage/UsageStatsManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usagestats"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    invoke-static {v1, v2}, Lcom/android/server/am/Connor;->access$1302(Lcom/android/server/am/Connor;Landroid/app/usage/UsageStatsManager;)Landroid/app/usage/UsageStatsManager;

    .line 347
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v1}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/ConnorFilter;->getClusterFilterSet(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    .line 348
    .local v1, "filterSet":Ljava/util/HashSet;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$1200(Lcom/android/server/am/Connor;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 350
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v5}, Lcom/android/server/am/Connor;->access$1200(Lcom/android/server/am/Connor;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 351
    .local v5, "apps":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 352
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v9, v4}, Lcom/android/server/am/Connor;->access$1400(Lcom/android/server/am/Connor;Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    .end local v8    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 354
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "apps":[Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 359
    .end local v1    # "filterSet":Ljava/util/HashSet;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    goto :goto_2

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v1}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$1500(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    return-void

    .line 342
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
