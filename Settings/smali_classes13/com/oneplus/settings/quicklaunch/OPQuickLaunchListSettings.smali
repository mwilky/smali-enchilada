.class public Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPQuickLaunchListSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;


# static fields
.field private static final CFGKEY_REMOVE_DIALOG:Ljava/lang/String; = "showingAppRemoveDialog"

.field private static final CFGKEY_REMOVE_MODE:Ljava/lang/String; = "appRemoveMode"

.field private static final MENU_ID_REMOVE:I = 0x2


# instance fields
.field private mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

.field private mAddView:Landroid/widget/Button;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsUiRestricted:Z

.field private mLastListSettings:Ljava/lang/String;

.field private mListView:Landroid/support/v7/widget/RecyclerView;

.field private mMenu:Landroid/view/Menu;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRemoveMode:Z

.field private mShowingRemoveDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;-><init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a01af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0a003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/Button;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120ce9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/Button;

    new-instance v1, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$2;-><init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initData()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->parseAllQuickLaunchStrings(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_quick_launcher_edited"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setAppList(Ljava/util/List;)V

    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-direct {v0, v2, v3}, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->setAutoMeasureEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setRemoveMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setRemoveMode(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method private updateAddViewStatus()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/Button;

    const v1, 0x7f120bb0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/Button;

    const v1, 0x7f120ce9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAddView:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    nop

    iget-boolean v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f120ceb

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    new-instance v1, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mLastListSettings:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d0163

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->configureDragAndDrop(Landroid/view/View;)V

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->setRemoveMode(Z)V

    return v2

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->removeChecked()V

    invoke-direct {p0, v3}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->setRemoveMode(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->setRemoveMode(Z)V

    :goto_1
    return v2
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mLastListSettings:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunch()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->initData()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "appRemoveMode"

    iget-boolean v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "showingAppRemoveDialog"

    iget-boolean v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mShowingRemoveDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "appRemoveMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    const-string v0, "showingAppRemoveDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mShowingRemoveDialog:Z

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->setRemoveMode(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mAdapter:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->mShowingRemoveDialog:Z

    return-void
.end method
