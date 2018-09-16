.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;
.implements Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;
.implements Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;
.implements Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final DEBUG_TIMING:Z = false

.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field private static final MAX_WAIT_MILLIS:I = 0xbb8

.field private static final STATE_CATEGORIES_CHANGE_CALLED:Ljava/lang/String; = "categories_change_called"

.field private static final STATE_SCROLL_POSITION:Ljava/lang/String; = "scroll_position"

.field private static final TAG:Ljava/lang/String; = "DashboardSummary"


# instance fields
.field private final ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

.field private mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

.field private mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

.field private mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mHandler:Landroid/os/Handler;

.field mIsOnCategoriesChangedCalled:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mOnConditionsChangedCalled:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

.field private mStagingSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 92
    const-string v0, "content://com.oneplus.ap.upgrader.provider/all_download_files"

    .line 93
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;

    .line 62
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic lambda$rebuildUI$0(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->updateCategory()V

    return-void
.end method

.method public static synthetic lambda$updateCategory$1(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setShowSystemUpgradeIcon(Z)V

    .line 327
    return-void
.end method

.method public static synthetic lambda$updateCategory$2(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setShowSystemUpgradeIcon(Z)V

    .line 331
    return-void
.end method

.method public static synthetic lambda$updateCategory$3(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 339
    return-void
.end method

.method public static synthetic lambda$updateCategory$4(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 350
    return-void
.end method

.method public static synthetic lambda$updateCategory$5(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method


# virtual methods
.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 99
    const/16 v0, 0x23

    return v0
.end method

.method public hasNewAppVersion()Z
    .locals 8

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "count":I
    const/4 v1, 0x0

    .line 362
    .local v1, "cur":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "canInstall =?"

    .line 363
    .local v5, "where":Ljava/lang/String;
    const-string v2, "1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    .line 364
    .local v6, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 366
    if-eqz v1, :cond_0

    .line 367
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 372
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 373
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 372
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 369
    :catch_0
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 372
    :goto_3
    if-eqz v1, :cond_3

    .line 373
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 105
    const-string v0, "DashboardSummary"

    const-string v1, "Creating SuggestionControllerMixin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    nop

    .line 107
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 109
    .local v0, "suggestionFeatureProvider":Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->isSuggestionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    .line 112
    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;-><init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/content/ComponentName;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    .line 114
    :cond_0
    return-void
.end method

.method public onCategoriesChanged()V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    .line 269
    return-void
.end method

.method public onConditionsChanged()V
    .locals 4

    .line 273
    const-string v0, "DashboardSummary"

    const-string v1, "onConditionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mOnConditionsChangedCalled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 282
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 283
    .local v0, "scrollToTop":Z
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/dashboard/DashboardAdapter;->setConditions(Ljava/util/List;)V

    .line 284
    if-eqz v0, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->scrollToPosition(I)V

    .line 287
    .end local v0    # "scrollToTop":Z
    :cond_1
    goto :goto_1

    .line 288
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mOnConditionsChangedCalled:Z

    .line 290
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    .local v0, "startTime":J
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const-string v2, "DashboardSummary"

    const-string v3, "Starting DashboardSummary"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 130
    .local v2, "activity":Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    .line 131
    invoke-virtual {v3, v2}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 133
    new-instance v3, Lcom/android/settings/dashboard/SummaryLoader;

    const-string v4, "com.android.settings.category.ia.homepage"

    invoke-direct {v3, v2, v4}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 135
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    const-string v3, "categories_change_called"

    .line 139
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mResolver:Landroid/content/ContentResolver;

    .line 148
    new-instance v3, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    .line 149
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->startObserving()V

    .line 152
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    .local v0, "startTime":J
    const v2, 0x7f0d006f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 230
    .local v2, "root":Landroid/view/View;
    const v3, 0x7f0a0146

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    .line 231
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 232
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 233
    if-eqz p3, :cond_0

    .line 234
    const-string v3, "scroll_position"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, "scrollPosition":I
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 237
    .end local v3    # "scrollPosition":I
    :cond_0
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v5}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 238
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setHasFixedSize(Z)V

    .line 239
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v3, p0}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setListener(Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;)V

    .line 240
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    new-instance v4, Lcom/android/settings/dashboard/DashboardItemAnimator;

    invoke-direct {v4}, Lcom/android/settings/dashboard/DashboardItemAnimator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 241
    new-instance v3, Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 242
    invoke-virtual {v4}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v10

    move-object v5, v3

    move-object v7, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/List;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    .line 243
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 244
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setSummaryConsumer(Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;)V

    .line 245
    nop

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0478

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    .line 245
    invoke-static {v3, v4, v5}, Lcom/android/settings/widget/ActionBarShadowController;->attachToRecyclerView(Landroid/view/View;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)Lcom/android/settings/widget/ActionBarShadowController;

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 252
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->stopObserving()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    .line 164
    return-void
.end method

.method public onPause()V
    .locals 5

    .line 187
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;

    invoke-virtual {v0, p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->remCategoryListener(Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/conditional/Condition;

    .line 192
    .local v1, "c":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->hidden(Landroid/content/Context;I)V

    .line 195
    .end local v1    # "c":Lcom/android/settings/dashboard/conditional/Condition;
    :cond_0
    goto :goto_0

    .line 196
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 8

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    .local v0, "startTime":J
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/oneplus/setting/lib/SettingsDrawerActivity;

    invoke-virtual {v2, p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->addCategoryListener(Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;)V

    .line 172
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getMetricsCategory()I

    move-result v2

    .line 174
    .local v2, "metricsCategory":I
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/dashboard/conditional/Condition;

    .line 175
    .local v4, "c":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-virtual {v4}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 177
    invoke-virtual {v4}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v7

    .line 176
    invoke-virtual {v5, v6, v2, v7}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    .line 179
    .end local v4    # "c":Lcom/android/settings/dashboard/conditional/Condition;
    :cond_0
    goto :goto_0

    .line 183
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 218
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    const-string v0, "categories_change_called"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    const-string v0, "scroll_position"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    return-void
.end method

.method public onSuggestionReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    .line 295
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "DashboardSummary"

    const-string v1, "Category has loaded, setting category from suggestionReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 201
    .local v0, "startTime":J
    if-eqz p1, :cond_0

    .line 202
    const-string v2, "DashboardSummary"

    const-string v3, "Listening for condition changes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    .line 204
    const-string v2, "DashboardSummary"

    const-string v3, "conditions refreshed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->refreshAll()V

    goto :goto_0

    .line 207
    :cond_0
    const-string v2, "DashboardSummary"

    const-string v3, "Stopped listening for condition changes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->remListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    .line 214
    :goto_0
    return-void
.end method

.method rebuildUI()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 257
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$8s9N5t2Nn47oUx2XbtJ_BLsLzIY;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$8s9N5t2Nn47oUx2XbtJ_BLsLzIY;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method updateCategory()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    const-string v1, "com.android.settings.category.ia.homepage"

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    .line 307
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/SummaryLoader;->updateSummaryToCache(Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 308
    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    .line 311
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    if-nez v1, :cond_0

    return-void

    .line 314
    :cond_0
    const/4 v1, 0x0

    .line 315
    .local v1, "systemHasUpdate":Z
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 316
    nop

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "has_new_version_to_update"

    .line 316
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    move v1, v2

    .line 321
    :cond_2
    const/4 v2, 0x0

    .line 323
    .local v2, "appHasUpdate":Z
    const-string v5, "DashboardSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Has updates? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    nop

    :cond_4
    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-nez v1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_2

    .line 329
    :cond_5
    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$S4ZnJYAtpWnSKH5Ya-6PeP-43T4;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$S4ZnJYAtpWnSKH5Ya-6PeP-43T4;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 325
    :cond_6
    :goto_2
    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$IEZgZ97m6Eczh4OO9ztmxtZNqM8;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$IEZgZ97m6Eczh4OO9ztmxtZNqM8;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 335
    :goto_3
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    if-nez v3, :cond_7

    .line 337
    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$kCUZowpTTsEozF-ygTzgGisYUiM;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$kCUZowpTTsEozF-ygTzgGisYUiM;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 341
    return-void

    .line 343
    :cond_7
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {v3}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->isSuggestionLoaded()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 344
    const-string v3, "DashboardSummary"

    const-string v4, "Suggestion has loaded, setting suggestion/category"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$_vJSQ4JiQV1-72BBEMy_dNfqxE4;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$_vJSQ4JiQV1-72BBEMy_dNfqxE4;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 352
    :cond_8
    const-string v3, "DashboardSummary"

    const-string v4, "Suggestion NOT loaded, delaying setCategory by 3000ms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$Ok9Mu3hGa9SiRJnEAHBsEN1wR_0;

    invoke-direct {v4, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$Ok9Mu3hGa9SiRJnEAHBsEN1wR_0;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    :goto_4
    return-void
.end method
