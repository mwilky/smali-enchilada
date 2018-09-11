.class Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "OPDeleteNonRequiredAppsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field private final mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;
    .param p2, "packageCount"    # I

    .line 372
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 370
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 373
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 374
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .line 378
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 379
    const-string v0, "DeleteNonRequiredAppsTask"

    const-string v1, "Could not finish the provisioning: package deletion failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->access$000(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;)Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;->onError()V

    .line 382
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 385
    .local v0, "currentPackageCount":I
    if-nez v0, :cond_1

    .line 386
    const-string v1, "DeleteNonRequiredAppsTask"

    const-string v2, "All non-required system apps with launcher icon, and all disallowed apps have been uninstalled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->access$000(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;)Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;->onSuccess()V

    .line 390
    :cond_1
    return-void
.end method
