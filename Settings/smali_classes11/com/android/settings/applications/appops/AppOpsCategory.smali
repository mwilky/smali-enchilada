.class public Lcom/android/settings/applications/appops/AppOpsCategory;
.super Landroid/app/ListFragment;
.source "AppOpsCategory.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;,
        Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;,
        Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;,
        Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

.field mState:Lcom/android/settings/applications/appops/AppOpsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "No applications"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory;->setEmptyText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListShown(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/appops/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    :cond_0
    new-instance v2, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V

    return-object v2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a03b1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    if-eqz v2, :cond_0

    move v3, v4

    nop

    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    invoke-virtual {v4}, Lcom/android/settings/applications/appops/AppOpsState;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v4

    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->overridePrimaryOpMode(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appops/AppOpsCategory;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->isResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListShown(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListShownNoAnimation(Z)V

    :goto_0
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
