.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;",
        ">;",
        "Lcom/android/settingslib/applications/ApplicationsState$Callbacks;",
        "Lcom/android/settings/applications/AppStateBaseBridge$Callback;"
    }
.end annotation


# static fields
.field private static final STATE_LAST_SCROLL_INDEX:Ljava/lang/String; = "state_last_scroll_index"

.field private static final VIEW_TYPE_APP:I = 0x0

.field private static final VIEW_TYPE_EXTRA_VIEW:I = 0x1


# instance fields
.field private mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field private mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private final mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

.field private mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mLastIndex:I

.field private mLastSortMode:I

.field private final mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private final mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

.field mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mResumed:Z

.field private final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "state"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p2, "manageApplications"    # Lcom/android/settings/applications/manageapplications/ManageApplications;
    .param p3, "appFilter"    # Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .param p4, "savedInstanceState"    # Landroid/os/Bundle;

    .line 978
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 960
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 961
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 970
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    .line 979
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setHasStableIds(Z)V

    .line 980
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 981
    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 982
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 983
    new-instance v1, Lcom/android/settings/widget/LoadingViewController;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 984
    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$700(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 985
    invoke-static {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$800(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 987
    invoke-virtual {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 988
    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 989
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v1, v0, :cond_0

    .line 990
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 991
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v6

    .line 992
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1000(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/os/UserManager;

    move-result-object v7

    .line 993
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1100(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v8

    move-object v2, v0

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/applications/AppStateNotificationBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 995
    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 997
    new-instance v0, Lcom/android/settings/applications/AppStatePowerBridge;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStatePowerBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    .line 998
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 999
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    .line 1000
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 1001
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 1002
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 1003
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 1004
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 1005
    new-instance v0, Lcom/android/settings/applications/AppStateDirectoryAccessBridge;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/AppStateDirectoryAccessBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 1006
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 1007
    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 1009
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_8

    .line 1010
    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 1011
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_9

    .line 1012
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 1015
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    .line 1017
    :goto_0
    if-eqz p4, :cond_a

    .line 1018
    const-string v0, "state_last_scroll_index"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    .line 1020
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 943
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    .param p1, "x1"    # Z

    .line 943
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 943
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
    .param p1, "x1"    # Z

    .line 943
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 943
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/FileViewHolderController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 943
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    return-object v0
.end method

.method private hasExtraView()Z
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    .line 1495
    invoke-interface {v0}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1494
    :goto_0
    return v0
.end method

.method public static synthetic lambda$rebuild$2(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "entries"    # Ljava/util/ArrayList;

    .line 1194
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onRebuildComplete(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$rebuild$3(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V
    .locals 2
    .param p1, "finalFilterObj"    # Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .param p2, "comparatorObj"    # Ljava/util/Comparator;

    .line 1191
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1193
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v0, :cond_0

    .line 1194
    new-instance v1, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$u5dJjouyXSv-EkAyCVJkIO0SEV0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$u5dJjouyXSv-EkAyCVJkIO0SEV0;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1196
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setExtraViewController$0(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    .line 1063
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onExtraViewCompleted()V

    .line 1064
    return-void
.end method

.method public static synthetic lambda$setExtraViewController$1(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    invoke-interface {v0}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->queryStats()V

    .line 1062
    new-instance v0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$zUDf4sT2ElTE4vuQaXRj16znehk;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$zUDf4sT2ElTE4vuQaXRj16znehk;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1065
    return-void
.end method

.method private static packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z
    .locals 2
    .param p0, "info1"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "info2"    # Landroid/content/pm/PackageItemInfo;

    .line 1214
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1217
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1220
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1218
    :cond_2
    :goto_0
    return v0

    .line 1215
    :cond_3
    :goto_1
    return v0
.end method

.method private removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 1225
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1227
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1230
    .local v1, "returnEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v2, 0x0

    .line 1231
    .local v2, "lastInfo":Landroid/content/pm/PackageItemInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1232
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1233
    .local v4, "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 1234
    .local v5, "info":Landroid/content/pm/PackageItemInfo;
    iget-object v6, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1235
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_0
    move-object v2, v5

    .line 1231
    .end local v4    # "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v5    # "info":Landroid/content/pm/PackageItemInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1239
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 1240
    return-object v1
.end method

.method static shouldUseStableItemHeight(I)Z
    .locals 1
    .param p0, "listType"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1201
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1209
    return v0

    .line 1205
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 5
    .param p1, "holder"    # Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
    .param p2, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1421
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1470
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_2

    .line 1466
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1467
    goto/16 :goto_2

    .line 1461
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1462
    goto/16 :goto_2

    .line 1457
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1458
    goto/16 :goto_2

    .line 1454
    :pswitch_3
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1455
    goto/16 :goto_2

    .line 1451
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1452
    goto :goto_2

    .line 1448
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1449
    goto :goto_2

    .line 1445
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1446
    goto :goto_2

    .line 1442
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1443
    goto :goto_2

    .line 1432
    :pswitch_8
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1433
    nop

    .line 1434
    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-object v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    const v0, 0x7f12016e

    goto :goto_0

    .line 1436
    :cond_0
    const v0, 0x7f12016f

    .line 1433
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(I)V

    goto :goto_2

    .line 1438
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1440
    goto :goto_2

    .line 1423
    :cond_2
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1424
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v4, 0x7f0a04ca

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v2, v1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1428
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1430
    nop

    .line 1473
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 5
    .param p1, "holder"    # Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
    .param p2, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1476
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    check-cast v0, Lcom/android/settings/applications/AppStateNotificationBridge;

    .line 1479
    invoke-virtual {v0, p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSwitchOnClickListener(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 1480
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->enableSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v2

    .line 1481
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->checkSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v3

    .line 1478
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSwitch(Landroid/view/View$OnClickListener;ZZ)V

    .line 1482
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1483
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v4, 0x7f0a04ca

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v2, v1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1487
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1491
    :goto_1
    return-void
.end method


# virtual methods
.method public getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .line 1378
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getApplicationCount()I
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1367
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1368
    const/4 v0, 0x0

    return v0

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hasExtraView()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 1383
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1384
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1131
    .local v0, "isLastItem":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hasExtraView()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 1132
    goto :goto_1

    .line 1133
    :cond_1
    nop

    .line 1131
    move v1, v2

    :goto_1
    return v1
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .line 1390
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1395
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1396
    invoke-virtual {v2, v3}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v2

    .line 1395
    xor-int/2addr v1, v2

    return v1

    .line 1392
    .end local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_1
    :goto_0
    return v1
.end method

.method public onAllSizesComputed()V
    .locals 2

    .line 1352
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v1, 0x7f0a04cb

    if-ne v0, v1, :cond_0

    .line 1353
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1355
    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1024
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1025
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1026
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 1027
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1028
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 943
    check-cast p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onBindViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
    .param p2, "position"    # I

    .line 1401
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    invoke-interface {v0, p1}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->setupView(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    goto :goto_0

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1407
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 1408
    :try_start_0
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 1409
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 1410
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1411
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 1412
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 1413
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateDisableView(Landroid/content/pm/ApplicationInfo;)V

    .line 1414
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    .line 1417
    .end local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :goto_0
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1418
    return-void

    .line 1414
    .restart local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 943
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 1119
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1120
    invoke-static {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_0

    .line 1122
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1124
    .restart local v0    # "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 1125
    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->shouldUseStableItemHeight(I)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;-><init>(Landroid/view/View;Z)V

    .line 1124
    return-object v1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1032
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1033
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 1035
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1036
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .line 1291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    .line 1292
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1293
    return-void
.end method

.method public onExtraViewCompleted()V
    .locals 1

    .line 1358
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hasExtraView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1359
    return-void

    .line 1362
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->notifyItemChanged(I)V

    .line 1363
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1300(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1348
    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    .line 1313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 1315
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1316
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 1309
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 1302
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1303
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1320
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1321
    return-void

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1324
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1325
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1326
    .local v2, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 1327
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1328
    goto :goto_1

    .line 1330
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1335
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1336
    return-void

    .line 1338
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {v4, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->postNotifyItemChange(I)V

    .line 1324
    .end local v2    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1341
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 1245
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v0

    .line 1246
    .local v0, "filterType":I
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 1248
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1250
    :cond_1
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 1251
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 1252
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_2

    .line 1253
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1254
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1256
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1257
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1261
    :goto_0
    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v2

    iget v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    if-le v2, v4, :cond_3

    .line 1262
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    iget v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1263
    iput v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    .line 1266
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1267
    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$800(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1268
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    .line 1270
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 1272
    return-void

    .line 1275
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasDisabled(Z)V

    .line 1276
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState;->haveInstantApps()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasInstant(Z)V

    .line 1277
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .line 1297
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1298
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1095
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1096
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 1097
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const-string v1, "state_last_scroll_index"

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1098
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1084
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 1085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 1086
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 1087
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    .line 1091
    :cond_0
    return-void
.end method

.method public rebuild()V
    .locals 5

    .line 1137
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1144
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 1145
    .local v0, "emulated":Z
    if-eqz v0, :cond_1

    .line 1146
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 1148
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 1150
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v1

    .line 1151
    .local v1, "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    if-eqz v2, :cond_2

    .line 1152
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v1, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v1, v2

    .line 1154
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1300(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1155
    sget-object v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v3, v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1156
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v1, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v1, v2

    goto :goto_1

    .line 1159
    :cond_3
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v1, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v1, v2

    .line 1163
    :cond_4
    :goto_1
    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v2, :pswitch_data_0

    .line 1184
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    .line 1165
    :pswitch_0
    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v2, :pswitch_data_1

    .line 1173
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1174
    .local v2, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 1170
    .end local v2    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_1
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1171
    .restart local v2    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 1167
    .end local v2    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_2
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1168
    .restart local v2    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 1178
    .end local v2    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_3
    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->RECENT_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    .line 1179
    .restart local v2    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 1181
    .end local v2    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->FREQUENCY_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    .line 1182
    .restart local v2    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    nop

    .line 1184
    :goto_2
    nop

    .line 1188
    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v4, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v3, v1, v4}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v1, v3

    .line 1189
    nop

    .line 1190
    .local v3, "finalFilterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    new-instance v4, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$z53WdtAYQ69qQ4PsDaqCwHe1hfA;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$z53WdtAYQ69qQ4PsDaqCwHe1hfA;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V

    invoke-static {v4}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1197
    return-void

    .line 1140
    .end local v0    # "emulated":Z
    .end local v1    # "filterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .end local v2    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    .end local v3    # "finalFilterObj":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a04c9
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .line 1108
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 1109
    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput p1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 1112
    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 1113
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1114
    return-void
.end method

.method public release()V
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    .line 1102
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    .line 1105
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 3
    .param p1, "sort"    # I

    .line 1069
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    .line 1071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 1072
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 1073
    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 1074
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->resume()V

    .line 1077
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    goto :goto_0

    .line 1079
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1081
    :goto_0
    return-void
.end method

.method public setCompositeFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0
    .param p1, "compositeFilter"    # Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1039
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1040
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1041
    return-void
.end method

.method public setExtraViewController(Lcom/android/settings/applications/manageapplications/FileViewHolderController;)V
    .locals 1
    .param p1, "extraViewController"    # Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    .line 1057
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    .line 1060
    new-instance v0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$qMEtWjKuRu1RgrWKYhF-ScJDD7E;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$qMEtWjKuRu1RgrWKYhF-ScJDD7E;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1066
    return-void
.end method

.method public setFilter(Lcom/android/settings/applications/manageapplications/AppFilterItem;)V
    .locals 2
    .param p1, "appFilter"    # Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 1044
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 1047
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    .line 1048
    const v0, 0x7f0a04c9

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    .line 1049
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1050
    const v0, 0x7f0a04ca

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    .line 1052
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1054
    :goto_0
    return-void
.end method

.method updateLoading()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1281
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1282
    .local v0, "appLoaded":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1283
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    goto :goto_1

    .line 1285
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v1}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    .line 1287
    :goto_1
    return-void
.end method
