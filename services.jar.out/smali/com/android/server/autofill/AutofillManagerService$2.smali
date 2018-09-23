.class Lcom/android/server/autofill/AutofillManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/AutofillManagerService;->startTrackingPackageChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private getActiveAutofillServicePackageName()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleActiveAutofillServiceRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$500(Lcom/android/server/autofill/AutofillManagerService;I)V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$600(Lcom/android/server/autofill/AutofillManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$200(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$200(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->handlePackageUpdateLocked(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getActiveAutofillServicePackageName()Ljava/lang/String;

    move-result-object v1

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez p4, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/autofill/AutofillManagerService;->access$500(Lcom/android/server/autofill/AutofillManagerService;I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/autofill/AutofillManagerService$2;->handlePackageUpdateLocked(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/autofill/AutofillManagerService$2;->handleActiveAutofillServiceRemoved(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getActiveAutofillServicePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/autofill/AutofillManagerService;->access$500(Lcom/android/server/autofill/AutofillManagerService;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$2;->handlePackageUpdateLocked(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSomePackagesChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$2;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService$2;->getChangingUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->access$400(Lcom/android/server/autofill/AutofillManagerService;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
