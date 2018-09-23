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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".headersState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$1;

    const-string v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "headerFragmentViewCreated"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "mainFragmentViewCreated"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "screenDataReady"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    return-void
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p0, v0

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_8

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-ge p2, v1, :cond_c

    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

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

    iget-boolean v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v5, :cond_4

    move-object v5, v0

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iput-object v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-nez v5, :cond_5

    const/4 v2, 0x1

    :goto_4
    goto :goto_6

    :cond_5
    if-eqz v1, :cond_9

    iget-boolean v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v5, :cond_8

    if-nez v4, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    iget-object v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    if-eq v4, v5, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    goto :goto_4

    :cond_8
    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    :goto_6
    if-eqz v2, :cond_b

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->createFragment(Ljava/lang/Object;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    instance-of v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentAdapter()V

    goto :goto_7

    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Fragment must implement MainFragmentAdapterProvider"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    :goto_7
    return v2

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Invalid position %d requested"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_8
    return v3
.end method

.method private expandMainFragment(Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setExpand(Z)V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentAlignment()V

    if-nez p1, :cond_1

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setLayoutScaleY(F)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setChildScale(F)V

    return-void
.end method

.method private onExpandTransitionStart(ZLjava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Ljava/lang/Runnable;Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->execute()V

    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersState(I)V

    :cond_2
    return-void
.end method

.method private replaceMainFragment(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {p0, v0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->swapToMainFragment()V

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

    :cond_2
    return-void
.end method

.method private setHeadersOnScreen(Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    neg-int v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMainFragmentAlignment()V
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setAlignment(I)V

    return-void
.end method

.method private swapToMainFragment()V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isShowingHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    new-instance v3, Landroid/support/v4/app/Fragment;

    invoke-direct {v3}, Landroid/support/v4/app/Fragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/widget/VerticalGridView;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method private updateWrapperPresenter()V
    .locals 6

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/widget/InvisibleRowPresenter;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/InvisibleRowPresenter;-><init>()V

    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Landroid/support/v17/leanback/widget/Presenter;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aput-object v2, v3, v4

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    new-instance v5, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;

    invoke-direct {v5, p0, v0, v2, v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/widget/PresenterSelector;Landroid/support/v17/leanback/widget/Presenter;[Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Adapter.getPresenterSelector() is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_entrance_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createHeadersTransition()V
    .locals 2

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

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method createStateMachineStates()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public enableMainFragmentScaling(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    return-void
.end method

.method public enableRowScaling(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->enableMainFragmentScaling(Z)V

    return-void
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getBrandColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    return v0
.end method

.method public getHeadersState()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    return v0
.end method

.method public getHeadersSupportFragment()Landroid/support/v17/leanback/app/HeadersSupportFragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    return-object v0
.end method

.method public getMainFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getMainFragmentRegistry()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-object v0
.end method

.method public getRowsSupportFragment()Landroid/support/v17/leanback/app/RowsSupportFragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    return v0
.end method

.method public getSelectedRowViewHolder()Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->getSelectedPosition()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isFirstRowWithContent(I)Z
    .locals 5

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne p1, v2, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method isFirstRowWithContentOrPageRow(I)Z
    .locals 5

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, v3, Landroid/support/v17/leanback/widget/PageRow;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne p1, v2, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v1
.end method

.method final isHeadersDataReady()Z
    .locals 1

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

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    return v0
.end method

.method public isInHeadersTransition()Z
    .locals 1

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

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    return v0
.end method

.method isVerticalScrolling()Z
    .locals 1

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

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsMarginStart:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_browse_rows_margin_start:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsMarginTop:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_browse_rows_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->readArguments(Landroid/os/Bundle;)V

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lbHeadersBackStack_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->load(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "headerShow"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$fraction;->lb_browse_rows_scale:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    return-void
.end method

.method public onCreateHeadersSupportFragment()Landroid/support/v17/leanback/app/HeadersSupportFragment;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->onCreateHeadersSupportFragment()Landroid/support/v17/leanback/app/HeadersSupportFragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-direct {p0, v0, v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    new-instance v4, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz p3, :cond_2

    const-string v0, "isPageRow"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz p3, :cond_3

    const-string v0, "currentSelectedPosition"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentAdapter()V

    :goto_3
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setHeadersGone(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setOnHeaderViewSelectedListener(Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setOnHeaderClickedListener(Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;)V

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_browse_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    sget v1, Landroid/support/v17/leanback/R$id;->browse_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, v1, p3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    sget v1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setPivotX(F)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setPivotY(F)V

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColorSet:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setBackgroundColor(I)V

    :cond_5
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$6;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneWithHeaders:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$8;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$8;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onDestroyView()V

    return-void
.end method

.method protected onEntranceTransitionEnd()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionEnd()V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionEnd()V

    :cond_1
    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionPrepare()Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionStart()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionStart()V

    return-void
.end method

.method onRowSelected(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->post(IIZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "currentSelectedPosition"

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isPageRow"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->save(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "headerShow"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onStart()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setAlignment(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentAlignment()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showHeaders(Z)V

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateWrapperPresenter()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateMainFragmentRowsAdapter()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    return-void
.end method

.method public setBrandColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColorSet:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBrowseTransitionListener(Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    return-void
.end method

.method setEntranceTransitionEndState()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setSearchOrbViewOnScreen(Z)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    return-void
.end method

.method setEntranceTransitionStartState()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setSearchOrbViewOnScreen(Z)V

    return-void
.end method

.method public setHeaderPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    :cond_0
    return-void
.end method

.method public setHeadersState(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

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

    :pswitch_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    nop

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setHeadersGone(Z)V

    :cond_0
    return-void

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

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    return-void
.end method

.method setMainFragmentAdapter()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;

    invoke-interface {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;->getMainFragmentAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;

    invoke-interface {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;->getMainFragmentRowsAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

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

    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    :goto_2
    return-void
.end method

.method setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-direct {v1, p0, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateMainFragmentRowsAdapter()V

    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method setSearchOrbViewOnScreen(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->getSearchAffordanceView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    neg-int v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->post(IIZ)V

    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransition(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V

    :cond_2
    return-void
.end method

.method setSelection(IZ)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setSelectedPosition(IZ)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->replaceMainFragment(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setSelectedPosition(IZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method showHeaders(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setHeadersEnabled(Z)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->expandMainFragment(Z)V

    return-void
.end method

.method public startHeadersTransition(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isInHeadersTransition()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V

    return-void

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start headers transition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startHeadersTransitionInternal(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isHeadersDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionStart()V

    xor-int/lit8 v0, p1, 0x1

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Z)V

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->onExpandTransitionStart(ZLjava/lang/Runnable;)V

    return-void
.end method

.method updateMainFragmentRowsAdapter()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->detach()V

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;-><init>(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :goto_0
    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_2
    return-void
.end method

.method updateTitleViewVisibility()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isFirstRowWithContent(I)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(Z)V

    :goto_1
    goto :goto_3

    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    goto :goto_2

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isFirstRowWithContent(I)Z

    move-result v0

    :goto_2
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isFirstRowWithContentOrPageRow(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    or-int/lit8 v3, v3, 0x2

    :cond_4
    if-eqz v2, :cond_5

    or-int/lit8 v3, v3, 0x4

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(Z)V

    :goto_3
    return-void
.end method
