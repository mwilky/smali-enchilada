.class public Landroid/support/v17/leanback/app/BrowseFragment;
.super Landroid/support/v17/leanback/app/BaseFragment;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;,
        Landroid/support/v17/leanback/app/BrowseFragment$ListRowFragmentFactory;,
        Landroid/support/v17/leanback/app/BrowseFragment$FragmentFactory;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterProvider;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;,
        Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;,
        Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;,
        Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;,
        Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;,
        Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ARG_HEADERS_STATE:Ljava/lang/String;

.field private static final ARG_TITLE:Ljava/lang/String;

.field private static final CURRENT_SELECTED_POSITION:Ljava/lang/String; = "currentSelectedPosition"

.field static final DEBUG:Z = false

.field public static final HEADERS_DISABLED:I = 0x3

.field public static final HEADERS_ENABLED:I = 0x1

.field public static final HEADERS_HIDDEN:I = 0x2

.field static final HEADER_SHOW:Ljava/lang/String; = "headerShow"

.field static final HEADER_STACK_INDEX:Ljava/lang/String; = "headerStackIndex"

.field private static final IS_PAGE_ROW:Ljava/lang/String; = "isPageRow"

.field private static final LB_HEADERS_BACKSTACK:Ljava/lang/String; = "lbHeadersBackStack_"

.field static final TAG:Ljava/lang/String; = "BrowseFragment"


# instance fields
.field final EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

.field mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

.field private mBrandColor:I

.field private mBrandColorSet:Z

.field mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

.field mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

.field mCanShowHeaders:Z

.field private mContainerListAlignTop:I

.field private mContainerListMarginStart:I

.field mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field private mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

.field private mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

.field mHeadersBackStackEnabled:Z

.field mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

.field private mHeadersState:I

.field mHeadersTransition:Ljava/lang/Object;

.field mIsPageRow:Z

.field mMainFragment:Landroid/app/Fragment;

.field mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

.field private mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

.field mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

.field mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

.field private mMainFragmentScaleEnabled:Z

.field private final mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

.field private final mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field mPageRow:Ljava/lang/Object;

.field private mScaleFactor:F

.field private mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

.field private mSceneAfterEntranceTransition:Ljava/lang/Object;

.field mSceneWithHeaders:Ljava/lang/Object;

.field mSceneWithoutHeaders:Ljava/lang/Object;

.field private mSelectedPosition:I

.field private final mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;

.field mShowingHeaders:Z

.field mWithHeadersBackStackName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_TITLE:Ljava/lang/String;

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v17/leanback/app/BrowseFragment;

    .line 758
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".headersState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    .line 757
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseFragment;-><init>()V

    .line 100
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$1;

    const-string v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$1;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 111
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "headerFragmentViewCreated"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 117
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "mainFragmentViewCreated"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 123
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "screenDataReady"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 714
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

    .line 725
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersState:I

    .line 726
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColor:I

    .line 731
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersBackStackEnabled:Z

    .line 733
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    .line 734
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    .line 737
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentScaleEnabled:Z

    .line 740
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    .line 746
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;

    .line 1087
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$4;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    .line 1136
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$5;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    .line 1483
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$10;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$10;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

    .line 1518
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$11;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$11;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    .line 1828
    return-void
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "headersState"    # I

    .line 772
    if-nez p0, :cond_0

    .line 773
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p0, v0

    .line 775
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 777
    return-object p0
.end method

.method private createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z
    .locals 6
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;
    .param p2, "position"    # I

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    .line 575
    :cond_0
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_8

    .line 578
    :cond_1
    if-gez p2, :cond_2

    .line 579
    const/4 p2, 0x0

    goto :goto_0

    .line 580
    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-ge p2, v1, :cond_c

    .line 584
    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 587
    :goto_1
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    .line 588
    .local v1, "oldIsPageRow":Z
    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mPageRow:Ljava/lang/Object;

    .line 589
    .local v4, "oldPageRow":Ljava/lang/Object;
    iget-boolean v5, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v5, :cond_3

    instance-of v5, v0, Landroid/support/v17/leanback/widget/PageRow;

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    iput-boolean v5, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    .line 590
    iget-boolean v5, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-eqz v5, :cond_4

    move-object v5, v0

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iput-object v5, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mPageRow:Ljava/lang/Object;

    .line 593
    iget-object v5, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-nez v5, :cond_5

    .line 594
    const/4 v2, 0x1

    .local v2, "swap":Z
    :goto_4
    goto :goto_6

    .line 596
    .end local v2    # "swap":Z
    :cond_5
    if-eqz v1, :cond_9

    .line 597
    iget-boolean v5, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-eqz v5, :cond_8

    .line 598
    if-nez v4, :cond_6

    .line 601
    const/4 v2, 0x0

    goto :goto_4

    .line 604
    :cond_6
    iget-object v5, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mPageRow:Ljava/lang/Object;

    if-eq v4, v5, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    goto :goto_4

    .line 607
    :cond_8
    const/4 v2, 0x1

    goto :goto_4

    .line 610
    :cond_9
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    .line 614
    .restart local v2    # "swap":Z
    :goto_6
    if-eqz v2, :cond_b

    .line 615
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;->createFragment(Ljava/lang/Object;)Landroid/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 616
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    instance-of v3, v3, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterProvider;

    if-eqz v3, :cond_a

    .line 621
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentAdapter()V

    goto :goto_7

    .line 617
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Fragment must implement MainFragmentAdapterProvider"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 624
    :cond_b
    :goto_7
    return v2

    .line 581
    .end local v1    # "oldIsPageRow":Z
    .end local v2    # "swap":Z
    .end local v4    # "oldPageRow":Ljava/lang/Object;
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 582
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Invalid position %d requested"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :cond_d
    :goto_8
    return v3
.end method

.method private expandMainFragment(Z)V
    .locals 3
    .param p1, "expand"    # Z

    .line 1470
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1471
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez p1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListMarginStart:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1472
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1473
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setExpand(Z)V

    .line 1475
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentAlignment()V

    .line 1476
    if-nez p1, :cond_1

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentScaleEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    .line 1478
    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFactor:F

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1479
    .local v1, "scaleFactor":F
    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setLayoutScaleY(F)V

    .line 1480
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setChildScale(F)V

    .line 1481
    return-void
.end method

.method private onExpandTransitionStart(ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "expand"    # Z
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 1672
    if-eqz p1, :cond_0

    .line 1673
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1674
    return-void

    .line 1678
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Ljava/lang/Runnable;Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->execute()V

    .line 1679
    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .line 1714
    if-nez p1, :cond_0

    .line 1715
    return-void

    .line 1717
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1718
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 1720
    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1721
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setHeadersState(I)V

    .line 1723
    :cond_2
    return-void
.end method

.method private replaceMainFragment(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1556
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {p0, v0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1557
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->swapToMainFragment()V

    .line 1558
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->expandMainFragment(Z)V

    .line 1560
    :cond_2
    return-void
.end method

.method private setHeadersOnScreen(Z)V
    .locals 3
    .param p1, "onScreen"    # Z

    .line 1456
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1457
    .local v0, "containerList":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1458
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListMarginStart:I

    neg-int v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1459
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1460
    return-void
.end method

.method private setMainFragmentAlignment()V
    .locals 3

    .line 1682
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListAlignTop:I

    .line 1683
    .local v0, "alignOffset":I
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    .line 1684
    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_0

    .line 1686
    int-to-float v1, v0

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFactor:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1688
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setAlignment(I)V

    .line 1689
    return-void
.end method

.method private swapToMainFragment()V
    .locals 4

    .line 1563
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 1564
    .local v0, "gridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->isShowingHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1565
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1568
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    new-instance v3, Landroid/app/Fragment;

    invoke-direct {v3}, Landroid/app/Fragment;-><init>()V

    .line 1569
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1570
    new-instance v1, Landroid/support/v17/leanback/app/BrowseFragment$12;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment$12;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Landroid/support/v17/leanback/widget/VerticalGridView;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 1586
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 1587
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1589
    :goto_0
    return-void
.end method

.method private updateWrapperPresenter()V
    .locals 6

    .line 810
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 812
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    .line 815
    .local v0, "adapterPresenter":Landroid/support/v17/leanback/widget/PresenterSelector;
    if-eqz v0, :cond_2

    .line 818
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-ne v0, v1, :cond_1

    .line 819
    return-void

    .line 821
    :cond_1
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 823
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    .line 824
    .local v1, "presenters":[Landroid/support/v17/leanback/widget/Presenter;
    new-instance v2, Landroid/support/v17/leanback/widget/InvisibleRowPresenter;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/InvisibleRowPresenter;-><init>()V

    .line 825
    .local v2, "invisibleRowPresenter":Landroid/support/v17/leanback/widget/Presenter;
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Landroid/support/v17/leanback/widget/Presenter;

    .line 826
    .local v3, "allPresenters":[Landroid/support/v17/leanback/widget/Presenter;
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aput-object v2, v3, v4

    .line 828
    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    new-instance v5, Landroid/support/v17/leanback/app/BrowseFragment$2;

    invoke-direct {v5, p0, v0, v2, v3}, Landroid/support/v17/leanback/app/BrowseFragment$2;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Landroid/support/v17/leanback/widget/PresenterSelector;Landroid/support/v17/leanback/widget/Presenter;[Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 844
    return-void

    .line 816
    .end local v1    # "presenters":[Landroid/support/v17/leanback/widget/Presenter;
    .end local v2    # "invisibleRowPresenter":Landroid/support/v17/leanback/widget/Presenter;
    .end local v3    # "allPresenters":[Landroid/support/v17/leanback/widget/Presenter;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Adapter.getPresenterSelector() is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    .line 1772
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_entrance_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createHeadersTransition()V
    .locals 2

    .line 1338
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_headers_in:I

    goto :goto_0

    :cond_0
    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_headers_out:I

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 1342
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseFragment$9;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BrowseFragment$9;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    .line 1376
    return-void
.end method

.method createStateMachineStates()V
    .locals 2

    .line 127
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineStates()V

    .line 128
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 129
    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    .line 133
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineTransitions()V

    .line 135
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 139
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 143
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 145
    return-void
.end method

.method public enableMainFragmentScaling(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1040
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentScaleEnabled:Z

    .line 1041
    return-void
.end method

.method public enableRowScaling(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1029
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->enableMainFragmentScaling(Z)V

    .line 1030
    return-void
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 912
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getBrandColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 802
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColor:I

    return v0
.end method

.method public getHeadersFragment()Landroid/support/v17/leanback/app/HeadersFragment;
    .locals 1

    .line 955
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    return-object v0
.end method

.method public getHeadersState()I
    .locals 1

    .line 1767
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersState:I

    return v0
.end method

.method public getMainFragment()Landroid/app/Fragment;
    .locals 1

    .line 947
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public final getMainFragmentRegistry()Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;
    .locals 1

    .line 905
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .locals 1

    .line 975
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;
    .locals 1

    .line 926
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-object v0
.end method

.method public getRowsFragment()Landroid/support/v17/leanback/app/RowsFragment;
    .locals 1

    .line 936
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    instance-of v0, v0, Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    return-object v0

    .line 940
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 1603
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    return v0
.end method

.method public getSelectedRowViewHolder()Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 2

    .line 1610
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->getSelectedPosition()I

    move-result v0

    .line 1612
    .local v0, "rowPos":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    return-object v1

    .line 1614
    .end local v0    # "rowPos":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isFirstRowWithContent(I)Z
    .locals 5
    .param p1, "rowPosition"    # I

    .line 1428
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1431
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1432
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/Row;

    .line 1433
    .local v3, "row":Landroid/support/v17/leanback/widget/Row;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1434
    if-ne p1, v2, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    .line 1431
    .end local v3    # "row":Landroid/support/v17/leanback/widget/Row;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1437
    .end local v2    # "i":I
    :cond_3
    return v1

    .line 1429
    :cond_4
    :goto_1
    return v1
.end method

.method isFirstRowWithContentOrPageRow(I)Z
    .locals 5
    .param p1, "rowPosition"    # I

    .line 1415
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1418
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1419
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/Row;

    .line 1420
    .local v3, "row":Landroid/support/v17/leanback/widget/Row;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, v3, Landroid/support/v17/leanback/widget/PageRow;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1418
    .end local v3    # "row":Landroid/support/v17/leanback/widget/Row;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1421
    .restart local v3    # "row":Landroid/support/v17/leanback/widget/Row;
    :cond_2
    :goto_1
    if-ne p1, v2, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    .line 1424
    .end local v2    # "i":I
    .end local v3    # "row":Landroid/support/v17/leanback/widget/Row;
    :cond_4
    return v1

    .line 1416
    :cond_5
    :goto_2
    return v1
.end method

.method final isHeadersDataReady()Z
    .locals 1

    .line 1133
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isHeadersTransitionOnBackEnabled()Z
    .locals 1

    .line 1710
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersBackStackEnabled:Z

    return v0
.end method

.method public isInHeadersTransition()Z
    .locals 1

    .line 1002
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowingHeaders()Z
    .locals 1

    .line 1009
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    return v0
.end method

.method isVerticalScrolling()Z
    .locals 1

    .line 1083
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1190
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1191
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 1192
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1193
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsMarginStart:I

    .line 1194
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_browse_rows_margin_start:I

    .line 1195
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 1193
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListMarginStart:I

    .line 1196
    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsMarginTop:I

    .line 1197
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_browse_rows_margin_top:I

    .line 1198
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 1196
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListAlignTop:I

    .line 1199
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1201
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/BrowseFragment;->readArguments(Landroid/os/Bundle;)V

    .line 1203
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v2, :cond_1

    .line 1204
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersBackStackEnabled:Z

    if-eqz v2, :cond_0

    .line 1205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lbHeadersBackStack_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 1206
    new-instance v2, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    .line 1207
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1208
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->load(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1210
    :cond_0
    if-eqz p1, :cond_1

    .line 1211
    const-string v2, "headerShow"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    .line 1216
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$fraction;->lb_browse_rows_scale:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFactor:F

    .line 1217
    return-void
.end method

.method public onCreateHeadersFragment()Landroid/support/v17/leanback/app/HeadersFragment;
    .locals 1

    .line 1245
    new-instance v0, Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/HeadersFragment;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1252
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1253
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->onCreateHeadersFragment()Landroid/support/v17/leanback/app/HeadersFragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1255
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    invoke-direct {p0, v0, v3}, Landroid/support/v17/leanback/app/BrowseFragment;->createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z

    .line 1256
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1257
    invoke-virtual {v0, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1259
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_0

    .line 1260
    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1267
    :cond_0
    new-instance v3, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;-><init>(Landroid/app/Fragment;)V

    iput-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    .line 1268
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    new-instance v4, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;)V

    .line 1271
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1272
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    goto :goto_3

    .line 1273
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    .line 1274
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/HeadersFragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1275
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 1277
    if-eqz p3, :cond_2

    const-string v0, "isPageRow"

    .line 1278
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    .line 1283
    if-eqz p3, :cond_3

    const-string v0, "currentSelectedPosition"

    .line 1284
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    .line 1286
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentAdapter()V

    .line 1289
    :goto_3
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setHeadersGone(Z)V

    .line 1290
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_4

    .line 1291
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 1293
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 1294
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setOnHeaderViewSelectedListener(Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;)V

    .line 1295
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setOnHeaderClickedListener(Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;)V

    .line 1297
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_browse_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1299
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 1301
    sget v1, Landroid/support/v17/leanback/R$id;->browse_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    .line 1302
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    .line 1303
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    .line 1305
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, v1, p3}, Landroid/support/v17/leanback/app/BrowseFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1307
    sget v1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    .line 1308
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setPivotX(F)V

    .line 1309
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListAlignTop:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setPivotY(F)V

    .line 1311
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColorSet:Z

    if-eqz v1, :cond_5

    .line 1312
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColor:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/HeadersFragment;->setBackgroundColor(I)V

    .line 1315
    :cond_5
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseFragment$6;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseFragment$6;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSceneWithHeaders:Ljava/lang/Object;

    .line 1321
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseFragment$7;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseFragment$7;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    .line 1327
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseFragment$8;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseFragment$8;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    .line 1334
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1231
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1234
    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onDestroy()V

    .line 1235
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V

    .line 1222
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mPageRow:Ljava/lang/Object;

    .line 1223
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    .line 1224
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 1225
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1226
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onDestroyView()V

    .line 1227
    return-void
.end method

.method protected onEntranceTransitionEnd()V
    .locals 1

    .line 1796
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionEnd()V

    .line 1800
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_1

    .line 1801
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->onTransitionEnd()V

    .line 1803
    :cond_1
    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 2

    .line 1783
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->onTransitionPrepare()Z

    .line 1784
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    .line 1785
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    .line 1786
    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 1

    .line 1790
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->onTransitionStart()V

    .line 1791
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionStart()V

    .line 1792
    return-void
.end method

.method onRowSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .line 1531
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->post(IIZ)V

    .line 1533
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1177
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1178
    const-string v0, "currentSelectedPosition"

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1179
    const-string v0, "isPageRow"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1181
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->save(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1184
    :cond_0
    const-string v0, "headerShow"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1186
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1652
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onStart()V

    .line 1653
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListAlignTop:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setAlignment(I)V

    .line 1654
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentAlignment()V

    .line 1656
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1657
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1659
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 1660
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1661
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1664
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_3

    .line 1665
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->showHeaders(Z)V

    .line 1668
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 1669
    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entranceTransition"    # Ljava/lang/Object;

    .line 1778
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1779
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 857
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 858
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->updateWrapperPresenter()V

    .line 859
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 860
    return-void

    .line 863
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->updateMainFragmentRowsAdapter()V

    .line 864
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 865
    return-void
.end method

.method public setBrandColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 788
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColor:I

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColorSet:Z

    .line 791
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setBackgroundColor(I)V

    .line 794
    :cond_0
    return-void
.end method

.method public setBrowseTransitionListener(Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

    .line 1019
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

    .line 1020
    return-void
.end method

.method setEntranceTransitionEndState()V
    .locals 2

    .line 1823
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setHeadersOnScreen(Z)V

    .line 1824
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setSearchOrbViewOnScreen(Z)V

    .line 1825
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    .line 1826
    return-void
.end method

.method setEntranceTransitionStartState()V
    .locals 1

    .line 1815
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setHeadersOnScreen(Z)V

    .line 1816
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setSearchOrbViewOnScreen(Z)V

    .line 1820
    return-void
.end method

.method public setHeaderPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 2
    .param p1, "headerPresenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 1447
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 1448
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 1451
    :cond_0
    return-void
.end method

.method public setHeadersState(I)V
    .locals 4
    .param p1, "headersState"    # I

    .line 1733
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    .line 1738
    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersState:I

    if-eq p1, v1, :cond_0

    .line 1739
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersState:I

    .line 1740
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1754
    const-string v1, "BrowseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown headers state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1750
    :pswitch_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    .line 1751
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    .line 1752
    goto :goto_0

    .line 1746
    :pswitch_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    .line 1747
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    .line 1748
    goto :goto_0

    .line 1742
    :pswitch_2
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    .line 1743
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    .line 1744
    nop

    .line 1757
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v1, :cond_0

    .line 1758
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/HeadersFragment;->setHeadersGone(Z)V

    .line 1761
    :cond_0
    return-void

    .line 1734
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid headers state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setHeadersTransitionOnBackEnabled(Z)V
    .locals 0
    .param p1, "headersBackStackEnabled"    # Z

    .line 1703
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersBackStackEnabled:Z

    .line 1704
    return-void
.end method

.method setMainFragmentAdapter()V
    .locals 2

    .line 628
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterProvider;

    .line 629
    invoke-interface {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterProvider;->getMainFragmentAdapter()Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    .line 630
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;)V

    .line 631
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 632
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    instance-of v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;

    .line 634
    invoke-interface {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;->getMainFragmentRowsAdapter()Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    move-result-object v0

    .line 633
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V

    .line 638
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    goto :goto_2

    .line 640
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V

    .line 642
    :goto_2
    return-void
.end method

.method setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V
    .locals 3
    .param p1, "mainFragmentRowsAdapter"    # Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    .line 868
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-ne p1, v0, :cond_0

    .line 869
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 878
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    .line 879
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 880
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-direct {v1, p0, v2}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V

    .line 882
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    .line 885
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->updateMainFragmentRowsAdapter()V

    .line 886
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 965
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 966
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    .line 969
    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 919
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 920
    return-void
.end method

.method setSearchOrbViewOnScreen(Z)V
    .locals 3
    .param p1, "onScreen"    # Z

    .line 1806
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->getSearchAffordanceView()Landroid/view/View;

    move-result-object v0

    .line 1807
    .local v0, "searchOrbView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1808
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1809
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListMarginStart:I

    neg-int v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1810
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1812
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1595
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setSelectedPosition(IZ)V

    .line 1596
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .line 1621
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->post(IIZ)V

    .line 1623
    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 1
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z
    .param p3, "rowHolderTask"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    .line 1639
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

    if-nez v0, :cond_0

    .line 1640
    return-void

    .line 1642
    :cond_0
    if-eqz p3, :cond_1

    .line 1643
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransition(Z)V

    .line 1645
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 1646
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V

    .line 1648
    :cond_2
    return-void
.end method

.method setSelection(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .line 1536
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1537
    return-void

    .line 1540
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    .line 1541
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1545
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/HeadersFragment;->setSelectedPosition(IZ)V

    .line 1546
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->replaceMainFragment(I)V

    .line 1548
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 1549
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setSelectedPosition(IZ)V

    .line 1552
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->updateTitleViewVisibility()V

    .line 1553
    return-void

    .line 1543
    :cond_3
    :goto_0
    return-void
.end method

.method showHeaders(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1464
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/HeadersFragment;->setHeadersEnabled(Z)V

    .line 1465
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->setHeadersOnScreen(Z)V

    .line 1466
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->expandMainFragment(Z)V

    .line 1467
    return-void
.end method

.method public startHeadersTransition(Z)V
    .locals 2
    .param p1, "withHeaders"    # Z

    .line 989
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_2

    .line 992
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->isInHeadersTransition()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    .line 996
    return-void

    .line 993
    :cond_1
    :goto_0
    return-void

    .line 990
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start headers transition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startHeadersTransitionInternal(Z)V
    .locals 2
    .param p1, "withHeaders"    # Z

    .line 1044
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    return-void

    .line 1047
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->isHeadersDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    return-void

    .line 1050
    :cond_1
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    .line 1051
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    .line 1052
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionStart()V

    .line 1053
    xor-int/lit8 v0, p1, 0x1

    new-instance v1, Landroid/support/v17/leanback/app/BrowseFragment$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$3;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Z)V

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->onExpandTransitionStart(ZLjava/lang/Runnable;)V

    .line 1079
    return-void
.end method

.method updateMainFragmentRowsAdapter()V
    .locals 2

    .line 893
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->detach()V

    .line 895
    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    .line 897
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 898
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;-><init>(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :goto_0
    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    .line 900
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 902
    :cond_2
    return-void
.end method

.method updateTitleViewVisibility()V
    .locals 4

    .line 1379
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1381
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->mShowTitleView:Z

    .local v0, "showTitleView":Z
    goto :goto_0

    .line 1386
    .end local v0    # "showTitleView":Z
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->isFirstRowWithContent(I)Z

    move-result v0

    .line 1388
    .restart local v0    # "showTitleView":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1389
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->showTitle(I)V

    goto :goto_1

    .line 1391
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->showTitle(Z)V

    .line 1393
    .end local v0    # "showTitleView":Z
    :goto_1
    goto :goto_3

    .line 1397
    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz v0, :cond_3

    .line 1398
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->mShowTitleView:Z

    .local v0, "showBranding":Z
    goto :goto_2

    .line 1400
    .end local v0    # "showBranding":Z
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->isFirstRowWithContent(I)Z

    move-result v0

    .line 1402
    .restart local v0    # "showBranding":Z
    :goto_2
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/BrowseFragment;->isFirstRowWithContentOrPageRow(I)Z

    move-result v2

    .line 1403
    .local v2, "showSearch":Z
    const/4 v3, 0x0

    .line 1404
    .local v3, "flags":I
    if-eqz v0, :cond_4

    or-int/lit8 v3, v3, 0x2

    .line 1405
    :cond_4
    if-eqz v2, :cond_5

    or-int/lit8 v3, v3, 0x4

    .line 1406
    :cond_5
    if-eqz v3, :cond_6

    .line 1407
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/app/BrowseFragment;->showTitle(I)V

    goto :goto_3

    .line 1409
    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->showTitle(Z)V

    .line 1412
    .end local v0    # "showBranding":Z
    .end local v2    # "showSearch":Z
    .end local v3    # "flags":I
    :goto_3
    return-void
.end method
