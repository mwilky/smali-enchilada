.class Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
.super Lcom/android/server/net/NetworkPolicyManagerInternal;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkPolicyManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 5409
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p2, "x1"    # Lcom/android/server/net/NetworkPolicyManagerService$1;

    .line 5409
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "quotaType"    # I

    .line 5491
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5492
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I

    move-result v2

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    .line 5494
    .local v1, "quotaBytes":J
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5495
    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 5496
    return-wide v3

    .line 5499
    :cond_0
    const/4 v0, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne p2, v0, :cond_1

    .line 5500
    long-to-float v0, v1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "netpolicy_quota_frac_jobs"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    mul-float/2addr v0, v3

    float-to-long v3, v0

    return-wide v3

    .line 5502
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 5503
    long-to-float v0, v1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "netpolicy_quota_frac_multipath"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    mul-float/2addr v0, v3

    float-to-long v3, v0

    return-wide v3

    .line 5506
    :cond_2
    return-wide v3

    .line 5494
    .end local v1    # "quotaBytes":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSubscriptionPlan(Landroid/net/Network;)Landroid/telephony/SubscriptionPlan;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 5474
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I

    move-result v1

    .line 5476
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5100(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 5477
    .end local v1    # "subId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5482
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;)I

    move-result v1

    .line 5484
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5100(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 5485
    .end local v1    # "subId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidNetworkingBlocked(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "ifname"    # Ljava/lang/String;

    .line 5446
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 5449
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5450
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 5451
    .local v3, "isNetworkMetered":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5452
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4700(Lcom/android/server/net/NetworkPolicyManagerService;IZ)Z

    move-result v2

    .line 5454
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 5456
    return v2

    .line 5451
    .end local v2    # "ret":Z
    .end local v3    # "isNetworkMetered":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public isUidRestrictedOnMeteredNetworks(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 5431
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5432
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/16 v2, 0x20

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 5433
    .local v1, "uidRules":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5434
    .local v2, "isBackgroundRestricted":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5435
    const/4 v0, 0x1

    if-eqz v2, :cond_0

    .line 5436
    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4600(II)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    .line 5437
    invoke-static {v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4600(II)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5435
    :goto_0
    return v0

    .line 5434
    .end local v1    # "uidRules":I
    .end local v2    # "isBackgroundRestricted":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onAdminDataAvailable()V
    .locals 1

    .line 5512
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$5300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5513
    return-void
.end method

.method public onTempPowerSaveWhitelistChange(IZ)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "added"    # Z

    .line 5461
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5462
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->tempPowerSaveWlChanged(IZ)V

    .line 5463
    if-eqz p2, :cond_0

    .line 5464
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 5466
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5468
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4900(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 5469
    monitor-exit v0

    .line 5470
    return-void

    .line 5469
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetUserState(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 5413
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5414
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZ)Z

    move-result v1

    .line 5415
    .local v1, "changed":Z
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v1, v2

    .line 5416
    if-eqz v1, :cond_2

    .line 5417
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5418
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 5419
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 5421
    .end local v1    # "changed":Z
    :cond_2
    :goto_2
    monitor-exit v0

    .line 5422
    return-void

    .line 5421
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setMeteredRestrictedPackages(Ljava/util/Set;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5517
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4400(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    .line 5518
    return-void
.end method

.method public setMeteredRestrictedPackagesAsync(Ljava/util/Set;I)V
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5522
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5523
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5524
    return-void
.end method
