.class public Landroid/support/v17/leanback/app/BrowseSupportFragment;
.super Landroid/support/v17/leanback/app/BaseSupportFragment;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;
    }
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

.field static final TAG:Ljava/lang/String; = "BrowseSupportFragment"


# instance fields
.field final EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

.field mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

.field private mBrandColor:I

.field private mBrandColorSet:Z

.field mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

.field mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

.field mCanShowHeaders:Z

.field private mContainerListAlignTop:I

.field private mContainerListMarginStart:I

.field mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field private mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

.field private mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

.field mHeadersBackStackEnabled:Z

.field private mHeadersState:I

.field mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

.field mHeadersTransition:Ljava/lang/Object;

.field mIsPageRow:Z

.field mMainFragment:Landroid/support/v4/app/Fragment;

.field mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

.field private mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

.field mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

.field mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

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

.field private final mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

.field mShowingHeaders:Z

.field mWithHeadersBackStackName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;

    .line 736
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".headersState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    .line 735
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;-><init>()V

    .line 96
    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$1;

    const-string v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 107
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "headerFragmentViewCreated"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 113
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "mainFragmentViewCreated"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 119
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "screenDataReady"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 692
    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    .line 703
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    .line 704
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    .line 709
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    .line 711
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    .line 712
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    .line 715
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    .line 718
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    .line 724
    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    .line 1065
    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    .line 1114
    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    .line 1461
    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    .line 1496
    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    .line 1806
    return-void
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "headersState"    # I

    .line 750
    if-nez p0, :cond_0

    .line 751
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p0, v0

    .line 753
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 755
    return-object p0
.end method

.method private createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z
    .locals 6
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;
    .param p2, "position"    # I

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    .line 559
    :cond_0
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_8

    .line 562
    :cond_1
    if-gez p2, :cond_2

    .line 563
    const/4 p2, 0x0

    goto :goto_0

    .line 564
    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-ge p2, v1, :cond_c

    .line 568
    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 571
    :goto_1
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    .line 572
    .local v1, "oldIsPageRow":Z
    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    .line 573
    .local v4, "oldPageRow":Ljava/lang/Object;
    iget-boolean v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v5, :cond_3

    instance-of v5, v0, Landroid/support/v17/leanback/widget/PageRow;

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    iput-boolean v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    .line 574
    iget-boolean v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v5, :cond_4

    move-object v5, v0

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iput-object v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    .line 577
    iget-object v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-nez v5, :cond_5

    .line 578
    const/4 v2, 0x1

    .local v2, "swap":Z
    :goto_4
    goto :goto_6

    .line 580
    .end local v2    # "swap":Z
    :cond_5
    if-eqz v1, :cond_9

    .line 581
    iget-boolean v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v5, :cond_8

    .line 582
    if-nez v4, :cond_6

    .line 585
    const/4 v2, 0x0

    goto :goto_4

    .line 588
    :cond_6
    iget-object v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    if-eq v4, v5, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    goto :goto_4

    .line 591
    :cond_8
    const/4 v2, 0x1

    goto :goto_4

    .line 594
    :cond_9
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    .line 598
    .restart local v2    # "swap":Z
    :goto_6
    if-eqz v2, :cond_b

    .line 599
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->createFragment(Ljava/lang/Object;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    .line 600
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    instance-of v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;

    if-eqz v3, :cond_a

    .line 605
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentAdapter()V

    goto :goto_7

    .line 601
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Fragment must implement MainFragmentAdapterProvider"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 608
    :cond_b
    :goto_7
    return v2

    .line 565
    .end local v1    # "oldIsPageRow":Z
    .end local v2    # "swap":Z
    .end local v4    # "oldPageRow":Ljava/lang/Object;
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 566
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Invalid position %d requested"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    :cond_d
    :goto_8
    return v3
.end method

.method private expandMainFragment(Z)V
    .locals 3
    .param p1, "expand"    # Z

    .line 1448
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1449
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez p1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1450
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1451
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setExpand(Z)V

    .line 1453
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentAlignment()V

    .line 1454
    if-nez p1, :cond_1

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 1456
    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1457
    .local v1, "scaleFactor":F
    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setLayoutScaleY(F)V

    .line 1458
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setChildScale(F)V

    .line 1459
    return-void
.end method

.method private onExpandTransitionStart(ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "expand"    # Z
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 1650
    if-eqz p1, :cond_0

    .line 1651
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1652
    return-void

    .line 1656
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Ljava/lang/Runnable;Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->execute()V

    .line 1657
    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .line 1692
    if-nez p1, :cond_0

    .line 1693
    return-void

    .line 1695
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1696
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 1698
    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1699
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersState(I)V

    .line 1701
    :cond_2
    return-void
.end method

.method private replaceMainFragment(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1534
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {p0, v0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1535
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->swapToMainFragment()V

    .line 1536
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->expandMainFragment(Z)V

    .line 1538
    :cond_2
    return-void
.end method

.method private setHeadersOnScreen(Z)V
    .locals 3
    .param p1, "onScreen"    # Z

    .line 1434
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1435
    .local v0, "containerList":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1436
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    neg-int v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1437
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1438
    return-void
.end method

.method private setMainFragmentAlignment()V
    .locals 3

    .line 1660
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    .line 1661
    .local v0, "alignOffset":I
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 1662
    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_0

    .line 1664
    int-to-float v1, v0

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1666
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setAlignment(I)V

    .line 1667
    return-void
.end method

.method private swapToMainFragment()V
    .locals 4

    .line 1541
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 1542
    .local v0, "gridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isShowingHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1546
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    new-instance v3, Landroid/support/v4/app/Fragment;

    invoke-direct {v3}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 1547
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1548
    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/widget/VerticalGridView;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 1564
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    .line 1565
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1567
    :goto_0
    return-void
.end method

.method private updateWrapperPresenter()V
    .locals 6

    .line 788
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 790
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    .line 793
    .local v0, "adapterPresenter":Landroid/support/v17/leanback/widget/PresenterSelector;
    if-eqz v0, :cond_2

    .line 796
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-ne v0, v1, :cond_1

    .line 797
    return-void

    .line 799
    :cond_1
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 801
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    .line 802
    .local v1, "presenters":[Landroid/support/v17/leanback/widget/Presenter;
    new-instance v2, Landroid/support/v17/leanback/widget/InvisibleRowPresenter;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/InvisibleRowPresenter;-><init>()V

    .line 803
    .local v2, "invisibleRowPresenter":Landroid/support/v17/leanback/widget/Presenter;
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Landroid/support/v17/leanback/widget/Presenter;

    .line 804
    .local v3, "allPresenters":[Landroid/support/v17/leanback/widget/Presenter;
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aput-object v2, v3, v4

    .line 806
    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    new-instance v5, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;

    invoke-direct {v5, p0, v0, v2, v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/widget/PresenterSelector;Landroid/support/v17/leanback/widget/Presenter;[Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 822
    return-void

    .line 794
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

    .line 1750
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_entrance_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createHeadersTransition()V
    .locals 2

    .line 1316
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_headers_in:I

    goto :goto_0

    :cond_0
    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_headers_out:I

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 1320
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    .line 1354
    return-void
.end method

.method createStateMachineStates()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    .line 124
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 125
    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    .line 129
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    .line 131
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 135
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 139
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 141
    return-void
.end method

.method public enableMainFragmentScaling(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1018
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    .line 1019
    return-void
.end method

.method public enableRowScaling(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1007
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->enableMainFragmentScaling(Z)V

    .line 1008
    return-void
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 890
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getBrandColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 780
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    return v0
.end method

.method public getHeadersState()I
    .locals 1

    .line 1745
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    return v0
.end method

.method public getHeadersSupportFragment()Landroid/support/v17/leanback/app/HeadersSupportFragment;
    .locals 1

    .line 933
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    return-object v0
.end method

.method public getMainFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 925
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getMainFragmentRegistry()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;
    .locals 1

    .line 883
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .locals 1

    .line 953
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;
    .locals 1

    .line 904
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-object v0
.end method

.method public getRowsSupportFragment()Landroid/support/v17/leanback/app/RowsSupportFragment;
    .locals 1

    .line 914
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    return-object v0

    .line 918
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 1581
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    return v0
.end method

.method public getSelectedRowViewHolder()Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 2

    .line 1588
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->getSelectedPosition()I

    move-result v0

    .line 1590
    .local v0, "rowPos":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    return-object v1

    .line 1592
    .end local v0    # "rowPos":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isFirstRowWithContent(I)Z
    .locals 5
    .param p1, "rowPosition"    # I

    .line 1406
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1409
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1410
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/Row;

    .line 1411
    .local v3, "row":Landroid/support/v17/leanback/widget/Row;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1412
    if-ne p1, v2, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    .line 1409
    .end local v3    # "row":Landroid/support/v17/leanback/widget/Row;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1415
    .end local v2    # "i":I
    :cond_3
    return v1

    .line 1407
    :cond_4
    :goto_1
    return v1
.end method

.method isFirstRowWithContentOrPageRow(I)Z
    .locals 5
    .param p1, "rowPosition"    # I

    .line 1393
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1396
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1397
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/Row;

    .line 1398
    .local v3, "row":Landroid/support/v17/leanback/widget/Row;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, v3, Landroid/support/v17/leanback/widget/PageRow;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1396
    .end local v3    # "row":Landroid/support/v17/leanback/widget/Row;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1399
    .restart local v3    # "row":Landroid/support/v17/leanback/widget/Row;
    :cond_2
    :goto_1
    if-ne p1, v2, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    .line 1402
    .end local v2    # "i":I
    .end local v3    # "row":Landroid/support/v17/leanback/widget/Row;
    :cond_4
    return v1

    .line 1394
    :cond_5
    :goto_2
    return v1
.end method

.method final isHeadersDataReady()Z
    .locals 1

    .line 1111
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

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

    .line 1688
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    return v0
.end method

.method public isInHeadersTransition()Z
    .locals 1

    .line 980
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

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

    .line 987
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    return v0
.end method

.method isVerticalScrolling()Z
    .locals 1

    .line 1061
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScrolling()Z

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

    .line 1168
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1169
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1170
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1171
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsMarginStart:I

    .line 1172
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_browse_rows_margin_start:I

    .line 1173
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 1171
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    .line 1174
    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsMarginTop:I

    .line 1175
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_browse_rows_margin_top:I

    .line 1176
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 1174
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    .line 1177
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1179
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->readArguments(Landroid/os/Bundle;)V

    .line 1181
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v2, :cond_1

    .line 1182
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    if-eqz v2, :cond_0

    .line 1183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lbHeadersBackStack_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 1184
    new-instance v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    .line 1185
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1186
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->load(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1188
    :cond_0
    if-eqz p1, :cond_1

    .line 1189
    const-string v2, "headerShow"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    .line 1194
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$fraction;->lb_browse_rows_scale:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    .line 1195
    return-void
.end method

.method public onCreateHeadersSupportFragment()Landroid/support/v17/leanback/app/HeadersSupportFragment;
    .locals 1

    .line 1223
    new-instance v0, Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1230
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1231
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->onCreateHeadersSupportFragment()Landroid/support/v17/leanback/app/HeadersSupportFragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    .line 1233
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-direct {p0, v0, v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z

    .line 1234
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    .line 1235
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1237
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 1238
    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 1245
    :cond_0
    new-instance v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 1246
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    new-instance v4, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V

    .line 1249
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1250
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    goto :goto_3

    .line 1251
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    .line 1252
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    .line 1253
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    .line 1255
    if-eqz p3, :cond_2

    const-string v0, "isPageRow"

    .line 1256
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    .line 1261
    if-eqz p3, :cond_3

    const-string v0, "currentSelectedPosition"

    .line 1262
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    .line 1264
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentAdapter()V

    .line 1267
    :goto_3
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setHeadersGone(Z)V

    .line 1268
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_4

    .line 1269
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 1271
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 1272
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setOnHeaderViewSelectedListener(Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;)V

    .line 1273
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setOnHeaderClickedListener(Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;)V

    .line 1275
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_browse_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1277
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 1279
    sget v1, Landroid/support/v17/leanback/R$id;->browse_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    .line 1280
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    .line 1281
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    .line 1283
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, v1, p3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1285
    sget v1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    .line 1286
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setPivotX(F)V

    .line 1287
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setPivotY(F)V

    .line 1289
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColorSet:Z

    if-eqz v1, :cond_5

    .line 1290
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setBackgroundColor(I)V

    .line 1293
    :cond_5
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$6;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneWithHeaders:Ljava/lang/Object;

    .line 1299
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    .line 1305
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$8;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$8;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    .line 1312
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1209
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1212
    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onDestroy()V

    .line 1213
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    .line 1200
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    .line 1201
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 1202
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    .line 1203
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    .line 1204
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onDestroyView()V

    .line 1205
    return-void
.end method

.method protected onEntranceTransitionEnd()V
    .locals 1

    .line 1774
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionEnd()V

    .line 1778
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_1

    .line 1779
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionEnd()V

    .line 1781
    :cond_1
    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 2

    .line 1761
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionPrepare()Z

    .line 1762
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    .line 1763
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    .line 1764
    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 1

    .line 1768
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionStart()V

    .line 1769
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionStart()V

    .line 1770
    return-void
.end method

.method onRowSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .line 1509
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->post(IIZ)V

    .line 1511
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1155
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1156
    const-string v0, "currentSelectedPosition"

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1157
    const-string v0, "isPageRow"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1159
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->save(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1162
    :cond_0
    const-string v0, "headerShow"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1164
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1630
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onStart()V

    .line 1631
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setAlignment(I)V

    .line 1632
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentAlignment()V

    .line 1634
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    .line 1635
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1637
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    .line 1638
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1639
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1642
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_3

    .line 1643
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showHeaders(Z)V

    .line 1646
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 1647
    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entranceTransition"    # Ljava/lang/Object;

    .line 1756
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1757
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 835
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 836
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateWrapperPresenter()V

    .line 837
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 838
    return-void

    .line 841
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateMainFragmentRowsAdapter()V

    .line 842
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 843
    return-void
.end method

.method public setBrandColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 766
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColorSet:Z

    .line 769
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setBackgroundColor(I)V

    .line 772
    :cond_0
    return-void
.end method

.method public setBrowseTransitionListener(Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    .line 997
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    .line 998
    return-void
.end method

.method setEntranceTransitionEndState()V
    .locals 2

    .line 1801
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    .line 1802
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setSearchOrbViewOnScreen(Z)V

    .line 1803
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    .line 1804
    return-void
.end method

.method setEntranceTransitionStartState()V
    .locals 1

    .line 1793
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    .line 1794
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setSearchOrbViewOnScreen(Z)V

    .line 1798
    return-void
.end method

.method public setHeaderPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 2
    .param p1, "headerPresenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 1425
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 1426
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 1429
    :cond_0
    return-void
.end method

.method public setHeadersState(I)V
    .locals 4
    .param p1, "headersState"    # I

    .line 1711
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    .line 1716
    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    if-eq p1, v1, :cond_0

    .line 1717
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    .line 1718
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1732
    const-string v1, "BrowseSupportFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown headers state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1728
    :pswitch_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    .line 1729
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    .line 1730
    goto :goto_0

    .line 1724
    :pswitch_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    .line 1725
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    .line 1726
    goto :goto_0

    .line 1720
    :pswitch_2
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    .line 1721
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    .line 1722
    nop

    .line 1735
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v1, :cond_0

    .line 1736
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setHeadersGone(Z)V

    .line 1739
    :cond_0
    return-void

    .line 1712
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

    .line 1681
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    .line 1682
    return-void
.end method

.method setMainFragmentAdapter()V
    .locals 2

    .line 612
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;

    .line 613
    invoke-interface {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;->getMainFragmentAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 614
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V

    .line 615
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 616
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;

    .line 618
    invoke-interface {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;->getMainFragmentRowsAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    move-result-object v0

    .line 617
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    .line 622
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    goto :goto_2

    .line 624
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    .line 626
    :goto_2
    return-void
.end method

.method setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V
    .locals 3
    .param p1, "mainFragmentRowsAdapter"    # Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    .line 846
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-ne p1, v0, :cond_0

    .line 847
    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 856
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    .line 857
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 858
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-direct {v1, p0, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V

    .line 860
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    .line 863
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateMainFragmentRowsAdapter()V

    .line 864
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 943
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 944
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    .line 947
    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 897
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 898
    return-void
.end method

.method setSearchOrbViewOnScreen(Z)V
    .locals 3
    .param p1, "onScreen"    # Z

    .line 1784
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->getSearchAffordanceView()Landroid/view/View;

    move-result-object v0

    .line 1785
    .local v0, "searchOrbView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1786
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1787
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    neg-int v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1788
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1790
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1573
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setSelectedPosition(IZ)V

    .line 1574
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .line 1599
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->post(IIZ)V

    .line 1601
    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 1
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z
    .param p3, "rowHolderTask"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    .line 1617
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    if-nez v0, :cond_0

    .line 1618
    return-void

    .line 1620
    :cond_0
    if-eqz p3, :cond_1

    .line 1621
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransition(Z)V

    .line 1623
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 1624
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V

    .line 1626
    :cond_2
    return-void
.end method

.method setSelection(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .line 1514
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1515
    return-void

    .line 1518
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    .line 1519
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1523
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setSelectedPosition(IZ)V

    .line 1524
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->replaceMainFragment(I)V

    .line 1526
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 1527
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setSelectedPosition(IZ)V

    .line 1530
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    .line 1531
    return-void

    .line 1521
    :cond_3
    :goto_0
    return-void
.end method

.method showHeaders(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1442
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setHeadersEnabled(Z)V

    .line 1443
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    .line 1444
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->expandMainFragment(Z)V

    .line 1445
    return-void
.end method

.method public startHeadersTransition(Z)V
    .locals 2
    .param p1, "withHeaders"    # Z

    .line 967
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_2

    .line 970
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isInHeadersTransition()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 973
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V

    .line 974
    return-void

    .line 971
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start headers transition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startHeadersTransitionInternal(Z)V
    .locals 2
    .param p1, "withHeaders"    # Z

    .line 1022
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    return-void

    .line 1025
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isHeadersDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1026
    return-void

    .line 1028
    :cond_1
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    .line 1029
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    .line 1030
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionStart()V

    .line 1031
    xor-int/lit8 v0, p1, 0x1

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Z)V

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->onExpandTransitionStart(ZLjava/lang/Runnable;)V

    .line 1057
    return-void
.end method

.method updateMainFragmentRowsAdapter()V
    .locals 2

    .line 871
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->detach()V

    .line 873
    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    .line 875
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 876
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;-><init>(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :goto_0
    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    .line 878
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 880
    :cond_2
    return-void
.end method

.method updateTitleViewVisibility()V
    .locals 4

    .line 1357
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1359
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    .local v0, "showTitleView":Z
    goto :goto_0

    .line 1364
    .end local v0    # "showTitleView":Z
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isFirstRowWithContent(I)Z

    move-result v0

    .line 1366
    .restart local v0    # "showTitleView":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1367
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(I)V

    goto :goto_1

    .line 1369
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(Z)V

    .line 1371
    .end local v0    # "showTitleView":Z
    :goto_1
    goto :goto_3

    .line 1375
    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_3

    .line 1376
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    .local v0, "showBranding":Z
    goto :goto_2

    .line 1378
    .end local v0    # "showBranding":Z
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isFirstRowWithContent(I)Z

    move-result v0

    .line 1380
    .restart local v0    # "showBranding":Z
    :goto_2
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isFirstRowWithContentOrPageRow(I)Z

    move-result v2

    .line 1381
    .local v2, "showSearch":Z
    const/4 v3, 0x0

    .line 1382
    .local v3, "flags":I
    if-eqz v0, :cond_4

    or-int/lit8 v3, v3, 0x2

    .line 1383
    :cond_4
    if-eqz v2, :cond_5

    or-int/lit8 v3, v3, 0x4

    .line 1384
    :cond_5
    if-eqz v3, :cond_6

    .line 1385
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(I)V

    goto :goto_3

    .line 1387
    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(Z)V

    .line 1390
    .end local v0    # "showBranding":Z
    .end local v2    # "showSearch":Z
    .end local v3    # "flags":I
    :goto_3
    return-void
.end method
