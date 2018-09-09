.class final Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
.super Landroid/app/admin/DevicePolicyManagerInternal;
.source "DevicePolicyManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field private mWidgetProviderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10303
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManagerInternal;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 10303
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V

    return-void
.end method

.method private notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10351
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10352
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10353
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10354
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 10355
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10356
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 10357
    .local v3, "listener":Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    invoke-interface {v3, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;->onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V

    .line 10355
    .end local v3    # "listener":Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10359
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 10353
    .end local v0    # "listenerCount":I
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 10332
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10333
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 10334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 10336
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10337
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10339
    :cond_1
    monitor-exit v0

    .line 10340
    return-void

    .line 10339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canUserHaveUntrustedCredentialReset(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 10447
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public createShowAdminSupportIntent(IZ)Landroid/content/Intent;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "useDefaultIfNoAdmin"    # Z

    .line 10366
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 10367
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 10368
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10369
    invoke-static {v1, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v1

    .line 10368
    return-object v1

    .line 10372
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 10373
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;

    move-result-object v1

    .line 10374
    .local v1, "deviceOwner":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 10375
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    .line 10376
    invoke-static {v2, v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v2

    .line 10375
    return-object v2

    .line 10380
    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 10381
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 10383
    :cond_2
    return-object v2
.end method

.method public createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "userRestriction"    # Ljava/lang/String;

    .line 10389
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 10391
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 10392
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 10391
    invoke-virtual {v2, p2, v3}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10394
    .local v2, "source":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 10395
    nop

    .line 10394
    nop

    .line 10396
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 10402
    return-object v4

    .line 10404
    :cond_0
    and-int/lit8 v3, v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    .line 10405
    .local v3, "enforcedByDo":Z
    :goto_0
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_2

    move v5, v6

    nop

    .line 10406
    .local v5, "enforcedByPo":Z
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 10409
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v6, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v4

    return-object v4

    .line 10410
    :cond_3
    if-eqz v5, :cond_5

    .line 10411
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v6, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v6

    .line 10412
    .local v6, "profileOwner":Landroid/content/ComponentName;
    if-eqz v6, :cond_4

    .line 10413
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10414
    invoke-static {v4, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v4

    .line 10413
    return-object v4

    .line 10418
    :cond_4
    return-object v4

    .line 10419
    .end local v6    # "profileOwner":Landroid/content/ComponentName;
    :cond_5
    if-eqz v3, :cond_7

    .line 10420
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 10421
    invoke-virtual {v6}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;

    move-result-object v6

    .line 10422
    .local v6, "deviceOwner":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    if-eqz v6, :cond_6

    .line 10423
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 10424
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v4, v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v4

    .line 10423
    return-object v4

    .line 10428
    :cond_6
    return-object v4

    .line 10430
    .end local v6    # "deviceOwner":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    :cond_7
    return-object v4

    .line 10394
    .end local v2    # "source":I
    .end local v3    # "enforcedByDo":Z
    .end local v5    # "enforcedByPo":Z
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw v2
.end method

.method public getCrossProfileWidgetProviders(I)Ljava/util/List;
    .locals 5
    .param p1, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10308
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10309
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    if-nez v1, :cond_0

    .line 10310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 10312
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 10313
    .local v1, "ownerComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 10314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 10317
    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 10318
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 10320
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 10321
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 10325
    :cond_2
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit v0

    return-object v4

    .line 10322
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 10326
    .end local v1    # "ownerComponent":Landroid/content/ComponentName;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
    .locals 1

    .line 10492
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    move-result-object v0

    return-object v0
.end method

.method public getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "userId"    # I

    .line 10452
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10453
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .line 10454
    .local v1, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_printing"

    .line 10455
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 10454
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 10456
    const-string v2, "DevicePolicyManager"

    const-string/jumbo v4, "printing is enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10457
    monitor-exit v0

    return-object v3

    .line 10459
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v2

    .line 10460
    .local v2, "ownerPackage":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 10461
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 10463
    :cond_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10466
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10470
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 10469
    nop

    .line 10471
    if-nez v6, :cond_2

    .line 10472
    :try_start_2
    const-string v5, "DevicePolicyManager"

    const-string/jumbo v7, "packageInfo is inexplicably null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10473
    monitor-exit v0

    return-object v3

    .line 10475
    :cond_2
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10476
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v7, :cond_3

    .line 10477
    const-string v5, "DevicePolicyManager"

    const-string v8, "appInfo is inexplicably null"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10478
    monitor-exit v0

    return-object v3

    .line 10480
    :cond_3
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 10481
    .local v8, "appLabel":Ljava/lang/CharSequence;
    if-nez v8, :cond_4

    .line 10482
    const-string v5, "DevicePolicyManager"

    const-string v9, "appLabel is inexplicably null"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10483
    monitor-exit v0

    return-object v3

    .line 10485
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v3

    .line 10486
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1040583

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v5

    invoke-virtual {v3, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    .line 10485
    return-object v3

    .line 10467
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appLabel":Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    .line 10468
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "DevicePolicyManager"

    const-string v7, "getPackageInfo error"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10469
    monitor-exit v0

    return-object v3

    .line 10487
    .end local v1    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v2    # "ownerPackage":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isActiveAdminWithPolicy(II)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "reqPolicy"    # I

    .line 10344
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 10346
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUserAffiliatedWithDevice(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 10435
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public reportSeparateProfileChallengeChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 10440
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10441
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 10442
    monitor-exit v0

    .line 10443
    return-void

    .line 10442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
