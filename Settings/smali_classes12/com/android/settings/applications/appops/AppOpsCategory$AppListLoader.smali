.class public Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

.field mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

.field final mState:Lcom/android/settings/applications/appops/AppOpsState;

.field final mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iput-object p3, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    :cond_0
    move-object v0, p1

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    sget-object v2, Lcom/android/settings/applications/appops/AppOpsState;->LABEL_COMPARATOR:Ljava/util/Comparator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/settings/applications/appops/AppOpsState;->buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .locals 3

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onStopLoading()V

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onContentChanged()V

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;)V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->forceLoad()V

    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->cancelLoad()Z

    return-void
.end method
