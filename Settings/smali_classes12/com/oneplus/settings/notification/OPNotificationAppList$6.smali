.class Lcom/oneplus/settings/notification/OPNotificationAppList$6;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .line 328
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 331
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 332
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 333
    .local v1, "start":J
    const-string v3, "OPNotificationAppList"

    const-string v4, "Collecting apps..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 335
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 338
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v3, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    .line 341
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 343
    .local v4, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    const-string v5, "OPNotificationAppList"

    const-string v6, "  launchable activities:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    .line 345
    .local v6, "lai":Landroid/content/pm/LauncherActivityInfo;
    const-string v7, "OPNotificationAppList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "oneplus- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v6    # "lai":Landroid/content/pm/LauncherActivityInfo;
    goto :goto_0

    .line 349
    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    .line 350
    invoke-static {v5}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/settings/notification/OPNotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v5

    .line 351
    .local v5, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v6, "OPNotificationAppList"

    const-string v7, "  config activities:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 353
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    const-string v8, "OPNotificationAppList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oneplus-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 358
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 359
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 360
    .local v8, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v9}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 362
    goto :goto_2

    .line 365
    :cond_2
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v9}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v10}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    move-result-object v9

    .line 366
    .local v9, "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    iget-object v10, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v10}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    goto :goto_2

    .line 370
    :cond_3
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/oneplus/settings/notification/OPNotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 373
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1300()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 375
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$800(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    .line 377
    .local v6, "elapsed":J
    const-string v8, "OPNotificationAppList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oneplus-Collected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v10}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " apps in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v1    # "start":J
    .end local v3    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v4    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v5    # "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "elapsed":J
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
