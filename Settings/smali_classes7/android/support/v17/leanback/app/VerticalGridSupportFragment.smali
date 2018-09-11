.class public Landroid/support/v17/leanback/app/VerticalGridSupportFragment;
.super Landroid/support/v17/leanback/app/BaseSupportFragment;
.source "VerticalGridSupportFragment.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VerticalGF"


# instance fields
.field final STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private final mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

.field private mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

.field mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field private mSceneAfterEntranceTransition:Ljava/lang/Object;

.field private mSelectedPosition:I

.field private final mViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    .line 56
    new-instance v0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$1;

    const-string v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 112
    new-instance v0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 127
    new-instance v0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    return-void
.end method

.method private setupFocusSearchListener()V
    .locals 2

    .line 206
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->grid_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    .line 208
    .local v0, "browseFrameLayout":Landroid/support/v17/leanback/widget/BrowseFrameLayout;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->getTitleHelper()Landroid/support/v17/leanback/widget/TitleHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/TitleHelper;->getOnFocusSearchListener()Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    .line 209
    return-void
.end method

.method private updateAdapter()V
    .locals 3

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 236
    iget v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    .line 244
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_vertical_grid_entrance_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    .line 66
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 67
    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    .line 71
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    .line 72
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 74
    return-void
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getGridPresenter()Landroid/support/v17/leanback/widget/VerticalGridPresenter;
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method gridOnItemSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 145
    iget v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    if-eq p1, v0, :cond_0

    .line 146
    iput p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    .line 147
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->showOrHideTitle()V

    .line 149
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 183
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_vertical_grid_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    .local v0, "root":Landroid/view/ViewGroup;
    sget v1, Landroid/support/v17/leanback/R$id;->grid_frame:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 186
    .local v1, "gridFrame":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1, v1, p3}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 189
    sget v2, Landroid/support/v17/leanback/R$id;->browse_grid_dock:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 190
    .local v2, "gridDock":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 191
    iget-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    iget-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildLaidOutListener(Landroid/support/v17/leanback/widget/OnChildLaidOutListener;)V

    .line 194
    new-instance v3, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$4;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;)V

    invoke-static {v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    .line 201
    invoke-direct {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->updateAdapter()V

    .line 202
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 219
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onDestroyView()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 221
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 213
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onStart()V

    .line 214
    invoke-direct {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->setupFocusSearchListener()V

    .line 215
    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entranceTransition"    # Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 101
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 102
    invoke-direct {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->updateAdapter()V

    .line 103
    return-void
.end method

.method setEntranceTransitionState(Z)V
    .locals 2
    .param p1, "afterTransition"    # Z

    .line 254
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;Z)V

    .line 255
    return-void
.end method

.method public setGridPresenter(Landroid/support/v17/leanback/widget/VerticalGridPresenter;)V
    .locals 2
    .param p1, "gridPresenter"    # Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    .line 80
    if-eqz p1, :cond_1

    .line 83
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    .line 84
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V

    .line 85
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    .line 88
    :cond_0
    return-void

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grid presenter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 167
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 168
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    .line 171
    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 141
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 142
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 227
    iput p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    .line 228
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    .line 231
    :cond_0
    return-void
.end method

.method showOrHideTitle()V
    .locals 2

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasPreviousViewInSameRow(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->showTitle(Z)V

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->showTitle(Z)V

    .line 161
    :goto_0
    return-void
.end method
