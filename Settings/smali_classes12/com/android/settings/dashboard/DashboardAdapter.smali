.class public Lcom/android/settings/dashboard/DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardAdapter.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;
.implements Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$SearchLayoutHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;",
        "Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;",
        "Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;"
    }
.end annotation


# static fields
.field private static final STATE_CATEGORY_LIST:Ljava/lang/String; = "category_list"

.field static final STATE_CONDITION_EXPANDED:Ljava/lang/String; = "condition_expanded"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DashboardAdapter"


# instance fields
.field private final mCache:Lcom/android/settingslib/utils/IconCache;

.field private mConditionAdapter:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

.field private final mContext:Landroid/content/Context;

.field mDashboardData:Lcom/android/settings/dashboard/DashboardData;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mFirstFrameDrawn:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mShowSystemUpgrade:Z

.field private mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

.field private mTileClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/List;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;",
            "Lcom/android/settingslib/suggestions/SuggestionControllerMixin;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mShowSystemUpgrade:Z

    new-instance v0, Lcom/android/settings/dashboard/DashboardAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardAdapter$1;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTileClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    new-instance v3, Lcom/android/settingslib/utils/IconCache;

    invoke-direct {v3, p1}, Lcom/android/settingslib/utils/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    new-instance v3, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    move-object v4, v3

    move-object v6, p4

    move-object v7, p2

    move-object v8, p0

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;-><init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Landroid/os/Bundle;Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardAdapter;->setHasStableIds(Z)V

    if-eqz p2, :cond_0

    const-string v3, "category_list"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    const-string v3, "condition_expanded"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_1
    new-instance v3, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v3}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>()V

    invoke-virtual {v3, p3}, Lcom/android/settings/dashboard/DashboardData$Builder;->setConditions(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/DashboardData$Builder;->setSuggestions(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setConditionExpanded(Z)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object v0
.end method

.method public static synthetic lambda$onBindConditionHeader$1(Lcom/android/settings/dashboard/DashboardAdapter;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/16 v3, 0x175

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardData$Builder;->setConditionExpanded(Z)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->scrollToTopOfConditions()V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/settings/dashboard/DashboardAdapter;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x175

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardData$Builder;->setConditionExpanded(Z)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->scrollToTopOfConditions()V

    return-void
.end method

.method private scrollToTopOfConditions()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData;->hasSuggestion()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private updateConditionIcons(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    const v4, 0x7f0d0053

    invoke-virtual {v0, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_2
    :goto_1
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getItem(J)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityById(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardData;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardData;->getItemIdByPosition(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardData;->getItemTypeByPosition(I)I

    move-result v0

    return v0
.end method

.method public getSuggestion(I)Landroid/service/settings/suggestions/Suggestion;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->getSuggestion(I)Landroid/service/settings/suggestions/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mFirstFrameDrawn:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardData;->getItemList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardData;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mFirstFrameDrawn:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public notifySummaryChanged(Lcom/android/settingslib/drawer/Tile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardData;->getPositionByTile(Lcom/android/settingslib/drawer/Tile;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardData;->getItemTypeByPosition(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method onBindCondition(Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;I)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditionAdapter:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v2, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardData;->isConditionExpanded()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditionAdapter:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditionAdapter:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->addDismissHandling(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditionAdapter:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method onBindConditionHeader(Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;)V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionIcons:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionCount:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->title:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->icons:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f12040a

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionIcons:Ljava/util/List;

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->icons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->updateConditionIcons(Ljava/util/List;Landroid/view/ViewGroup;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->icons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardAdapter$rjSGP6Cnddhw6FvR740SjWmziQ4;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardAdapter$rjSGP6Cnddhw6FvR740SjWmziQ4;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method onBindSuggestion(Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;I)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->setSuggestions(Ljava/util/List;)V

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f08036d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    iget-object v4, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4, v0}, Lcom/android/settingslib/utils/IconCache;->updateIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060273

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    iget-object v2, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/utils/IconCache;->updateIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->newverison:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f1206e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f1211c1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mShowSystemUpgrade:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->newverison:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->newverison:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemTypeByPosition(I)I

    move-result v0

    const v1, 0x7f0d0071

    if-eq v0, v1, :cond_2

    const v1, 0x7f0d01b7

    if-eq v0, v1, :cond_1

    const v1, 0x7f0d0272

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v1, p1

    check-cast v1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v2, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindConditionHeader(Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/dashboard/-$$Lambda$DashboardAdapter$EPKC8_9XatJQPDMMI1s2dy8ZY8c;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardAdapter$EPKC8_9XatJQPDMMI1s2dy8ZY8c;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_2
    move-object v1, p1

    check-cast v1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindCondition(Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;I)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindSuggestion(Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2, v3}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchLayout(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v1, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0050
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d01b7

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$SearchLayoutHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter$SearchLayoutHolder;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_0
    const v1, 0x7f0d0052

    if-ne p2, v1, :cond_1

    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_1
    const v1, 0x7f0d0050

    if-ne p2, v1, :cond_2

    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_2
    const v1, 0x7f0d0272

    if-ne p2, v1, :cond_3

    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_3
    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardData;->getCategory()Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "category_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v1, "condition_expanded"

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardData;->isConditionExpanded()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuggestionClosed(Landroid/service/settings/suggestions/Suggestion;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardData;->getSuggestions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    const-string v1, "DashboardAdapter"

    const-string v2, "adapter setCategory called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V

    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    const-string v1, "DashboardAdapter"

    const-string v2, "adapter setConditions called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setConditions(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditionAdapter:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mConditionAdapter:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardData;->getConditionsToShow()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->setConditions(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V

    return-void
.end method

.method public setShowSystemUpgradeIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mShowSystemUpgrade:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSuggestions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setSuggestions(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V

    return-void
.end method
