.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageList.java"


# static fields
.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "network_template"

.field public static final EXTRA_SUB_ID:Ljava/lang/String; = "sub_id"

.field private static final KEY_APPS_GROUP:Ljava/lang/String; = "apps_group"

.field private static final KEY_CHART_DATA:Ljava/lang/String; = "chart_data"

.field private static final KEY_USAGE_AMOUNT:Ljava/lang/String; = "usage_amount"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOADER_SUMMARY:I = 0x3

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "DataUsage"


# instance fields
.field private mApps:Landroid/support/v7/preference/PreferenceGroup;

.field private mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private final mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mHeader:Landroid/view/View;

.field private mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field mSubId:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field mTemplate:Landroid/net/NetworkTemplate;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUsageAmount:Landroid/support/v7/preference/Preference;

.field private tv_filter_datetime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 103
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 599
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 626
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 650
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$7;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$7;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settingslib/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;
    .param p1, "x1"    # Lcom/android/settingslib/net/ChartData;

    .line 88
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/datausage/DataUsageList;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/AppItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;
    .param p1, "x1"    # Lcom/android/settingslib/AppItem;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->startAppDataUsage(Lcom/android/settingslib/AppItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/DataUsageList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/DataUsageList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/widget/LoadingViewController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    return-object v0
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J
    .locals 8
    .param p0, "collapseKey"    # I
    .param p2, "entry"    # Landroid/net/NetworkStats$Entry;
    .param p3, "itemCategory"    # I
    .param p5, "largest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/AppItem;",
            ">;J)J"
        }
    .end annotation

    .line 529
    .local p1, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/AppItem;>;"
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/AppItem;>;"
    iget v0, p2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 530
    .local v0, "uid":I
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    .line 531
    .local v1, "item":Lcom/android/settingslib/AppItem;
    if-nez v1, :cond_0

    .line 532
    new-instance v2, Lcom/android/settingslib/AppItem;

    invoke-direct {v2, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    move-object v1, v2

    .line 533
    iput p3, v1, Lcom/android/settingslib/AppItem;->category:I

    .line 534
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    iget v2, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 538
    iget-wide v2, v1, Lcom/android/settingslib/AppItem;->total:J

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settingslib/AppItem;->total:J

    .line 539
    iget-wide v2, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 550
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 551
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 553
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    nop

    .line 554
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 556
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 558
    return v3

    .line 561
    :cond_0
    const/4 v4, 0x1

    .line 562
    .local v4, "isReady":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 563
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    and-int/2addr v4, v7

    .line 565
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    move v3, v7

    nop

    .line 573
    .local v3, "retVal":Z
    :cond_3
    return v3
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 584
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 585
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 586
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v2

    .line 587
    .local v2, "slotId":I
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-ne v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 589
    .local v3, "isReady":Z
    :goto_0
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    .line 596
    .local v4, "retVal":Z
    :goto_1
    return v4
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/android/settings/datausage/DataUsageList;Landroid/view/View;)V
    .locals 3
    .param p1, "btn"    # Landroid/view/View;

    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "network_template"

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 174
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 175
    const v2, 0x7f12026e

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 179
    return-void
.end method

.method private startAppDataUsage(Lcom/android/settingslib/AppItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/settingslib/AppItem;

    .line 502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "app_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 504
    const-string v1, "network_template"

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 507
    const-string v1, "arg_subid"

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string v1, "uid"

    iget v2, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/datausage/AppDataUsage;

    .line 511
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 512
    const v2, 0x7f120132

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 513
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 516
    return-void
.end method

.method private updateBody()V
    .locals 6

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 299
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v4, 0x0

    .line 300
    invoke-static {v3, v4}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 299
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 305
    const v1, 0x7f06040b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 306
    .local v1, "seriesColor":I
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 308
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 310
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_1

    .line 311
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v1

    .line 315
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/16 v2, 0x7f

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 316
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 315
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 317
    .local v2, "secondaryColor":I
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setColors(II)V

    .line 318
    return-void
.end method

.method private updateDetailData()V
    .locals 17

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v10

    .line 356
    .local v10, "start":J
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v12

    .line 357
    .local v12, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 359
    .local v14, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 361
    .local v1, "context":Landroid/content/Context;
    const/16 v16, 0x0

    .line 362
    .local v16, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v2, v2, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v9, 0x0

    move-wide v3, v10

    move-wide v5, v12

    move-wide v7, v14

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v16

    .line 367
    .end local v16    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v2, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    move-object/from16 v2, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 368
    invoke-static {v5, v10, v11, v12, v13}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 367
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 370
    if-eqz v2, :cond_1

    iget-wide v3, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    .line 371
    .local v3, "totalBytes":J
    :goto_0
    invoke-static {v1, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "totalPhrase":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    const v7, 0x7f1204ef

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v0, v7, v8}, Lcom/android/settings/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    return-void
.end method

.method private updatePolicy()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 326
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v2, 0x7f0a01d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 328
    .local v1, "configureButton":Landroid/view/View;
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/datausage/DataUsageList;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageList;->isMobileDataAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 342
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    .line 345
    :cond_1
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 27
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 379
    move-object/from16 v3, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 380
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/AppItem;>;"
    const-wide/16 v4, 0x0

    .line 382
    .local v4, "largest":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    .line 383
    .local v12, "currentUserId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v13

    .line 384
    .local v13, "userManager":Landroid/os/UserManager;
    invoke-virtual {v13}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v14

    .line 385
    .local v14, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v0

    .line 387
    .local v15, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/AppItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 388
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    move-object v6, v0

    .line 390
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v10, 0x1

    :try_start_0
    const-string v0, "com.android.dialer"

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "DataUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get dialer getApplicationInfo failed "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v17, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    move-object/from16 v17, v6

    const/4 v0, 0x0

    .line 396
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v10, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v10

    :goto_1
    move v8, v6

    .line 397
    .local v8, "size":I
    move-wide/from16 v18, v4

    move-object v4, v0

    move v0, v10

    .local v0, "i":I
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    .local v18, "largest":J
    :goto_2
    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    if-ge v7, v8, :cond_9

    .line 398
    invoke-virtual {v2, v7, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v6

    .line 401
    .end local v4    # "entry":Landroid/net/NetworkStats$Entry;
    .local v6, "entry":Landroid/net/NetworkStats$Entry;
    iget v5, v6, Landroid/net/NetworkStats$Entry;->uid:I

    .line 405
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 408
    .local v4, "userId":I
    :try_start_1
    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    .line 409
    .local v20, "packageNames":[Ljava/lang/String;
    aget-object v0, v20, v10

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 410
    .local v0, "systemInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v10, 0x3e7

    if-ne v4, v10, :cond_1

    if-eqz v0, :cond_1

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v16, 0x1

    and-int/lit8 v10, v10, 0x1

    if-lez v10, :cond_2

    .line 411
    nop

    .line 397
    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v25, v8

    move/from16 v26, v12

    move/from16 v12, v16

    const/16 v22, 0x0

    move-object/from16 v16, v9

    goto/16 :goto_a

    .line 415
    .end local v0    # "systemInfo":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "packageNames":[Ljava/lang/String;
    :cond_1
    const/16 v16, 0x1

    .line 417
    :cond_2
    move-object/from16 v23, v6

    goto :goto_3

    .line 413
    :catch_1
    move-exception v0

    const/16 v16, 0x1

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v6

    const-string v6, "get dialer getApplicationInfo failed "

    .end local v6    # "entry":Landroid/net/NetworkStats$Entry;
    .local v23, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 418
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 419
    if-eq v4, v12, :cond_3

    .line 421
    invoke-static {v4}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v0

    .line 422
    .local v0, "managedKey":I
    const/4 v2, 0x0

    move v10, v4

    move v4, v0

    .end local v4    # "userId":I
    .local v10, "userId":I
    move v6, v5

    move-object v5, v15

    .end local v5    # "uid":I
    .local v6, "uid":I
    move/from16 v24, v6

    move-object/from16 v20, v23

    move-object/from16 v6, v20

    .end local v6    # "uid":I
    .end local v23    # "entry":Landroid/net/NetworkStats$Entry;
    .local v20, "entry":Landroid/net/NetworkStats$Entry;
    .local v24, "uid":I
    move/from16 v21, v7

    move v7, v2

    .end local v7    # "i":I
    .local v21, "i":I
    move v2, v8

    move-object v8, v11

    .end local v8    # "size":I
    .local v2, "size":I
    move/from16 v25, v2

    move v2, v10

    move/from16 v26, v12

    move/from16 v12, v16

    const/16 v22, 0x0

    move-object/from16 v16, v9

    move-wide/from16 v9, v18

    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "userId":I
    .end local v12    # "currentUserId":I
    .local v2, "userId":I
    .local v16, "pm":Landroid/content/pm/PackageManager;
    .local v25, "size":I
    .local v26, "currentUserId":I
    invoke-static/range {v4 .. v10}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v18

    .end local v0    # "managedKey":I
    goto :goto_4

    .line 426
    .end local v2    # "userId":I
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v21    # "i":I
    .end local v24    # "uid":I
    .end local v25    # "size":I
    .end local v26    # "currentUserId":I
    .restart local v4    # "userId":I
    .restart local v5    # "uid":I
    .restart local v7    # "i":I
    .restart local v8    # "size":I
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "currentUserId":I
    .restart local v23    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_3
    move v2, v4

    move/from16 v24, v5

    move/from16 v21, v7

    move/from16 v25, v8

    move/from16 v26, v12

    move/from16 v12, v16

    move-object/from16 v20, v23

    const/16 v22, 0x0

    move-object/from16 v16, v9

    .end local v4    # "userId":I
    .end local v5    # "uid":I
    .end local v7    # "i":I
    .end local v8    # "size":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "currentUserId":I
    .end local v23    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v2    # "userId":I
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v21    # "i":I
    .restart local v24    # "uid":I
    .restart local v25    # "size":I
    .restart local v26    # "currentUserId":I
    :goto_4
    move/from16 v0, v24

    .line 427
    .local v0, "collapseKey":I
    const/4 v4, 0x2

    .line 445
    .local v4, "category":I
    move v7, v4

    .end local v4    # "category":I
    .end local v24    # "uid":I
    .local v7, "category":I
    .local v9, "uid":I
    :goto_5
    move/from16 v9, v24

    goto :goto_9

    .line 430
    .end local v0    # "collapseKey":I
    .end local v2    # "userId":I
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v21    # "i":I
    .end local v25    # "size":I
    .end local v26    # "currentUserId":I
    .local v4, "userId":I
    .restart local v5    # "uid":I
    .local v7, "i":I
    .restart local v8    # "size":I
    .local v9, "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "currentUserId":I
    .restart local v23    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_4
    move v2, v4

    move/from16 v24, v5

    move/from16 v21, v7

    move/from16 v25, v8

    move/from16 v26, v12

    move/from16 v12, v16

    move-object/from16 v20, v23

    const/16 v22, 0x0

    move-object/from16 v16, v9

    .end local v4    # "userId":I
    .end local v5    # "uid":I
    .end local v7    # "i":I
    .end local v8    # "size":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "currentUserId":I
    .end local v23    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v2    # "userId":I
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v21    # "i":I
    .restart local v24    # "uid":I
    .restart local v25    # "size":I
    .restart local v26    # "currentUserId":I
    invoke-virtual {v13, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 431
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_5

    .line 432
    const/4 v4, -0x4

    .line 433
    .local v4, "collapseKey":I
    const/4 v10, 0x2

    .local v10, "category":I
    goto :goto_6

    .line 436
    .end local v4    # "collapseKey":I
    .end local v10    # "category":I
    :cond_5
    invoke-static {v2}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v4

    .line 437
    .restart local v4    # "collapseKey":I
    nop

    .end local v0    # "info":Landroid/content/pm/UserInfo;
    move/from16 v10, v22

    .restart local v10    # "category":I
    :goto_6
    move v0, v10

    .line 439
    .end local v10    # "category":I
    .local v0, "category":I
    nop

    .line 445
    move v7, v0

    move v0, v4

    goto :goto_5

    .line 440
    .end local v0    # "category":I
    .end local v2    # "userId":I
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v21    # "i":I
    .end local v24    # "uid":I
    .end local v25    # "size":I
    .end local v26    # "currentUserId":I
    .local v4, "userId":I
    .restart local v5    # "uid":I
    .restart local v7    # "i":I
    .restart local v8    # "size":I
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "currentUserId":I
    .restart local v23    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_6
    move v2, v4

    move/from16 v24, v5

    move/from16 v21, v7

    move/from16 v25, v8

    move/from16 v26, v12

    move/from16 v12, v16

    move-object/from16 v20, v23

    const/16 v22, 0x0

    move-object/from16 v16, v9

    .end local v4    # "userId":I
    .end local v5    # "uid":I
    .end local v7    # "i":I
    .end local v8    # "size":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "currentUserId":I
    .end local v23    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v2    # "userId":I
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v21    # "i":I
    .restart local v24    # "uid":I
    .restart local v25    # "size":I
    .restart local v26    # "currentUserId":I
    const/4 v0, -0x4

    move/from16 v9, v24

    if-eq v9, v0, :cond_8

    .end local v24    # "uid":I
    .local v9, "uid":I
    const/4 v0, -0x5

    if-ne v9, v0, :cond_7

    goto :goto_7

    .line 444
    :cond_7
    const/16 v0, 0x3e8

    .line 445
    .local v0, "collapseKey":I
    const/4 v4, 0x2

    goto :goto_8

    .line 441
    .end local v0    # "collapseKey":I
    :cond_8
    :goto_7
    move v0, v9

    .line 442
    .restart local v0    # "collapseKey":I
    const/4 v4, 0x2

    .line 445
    .local v7, "category":I
    :goto_8
    move v7, v4

    .line 447
    :goto_9
    move v4, v0

    move-object v5, v15

    move-object/from16 v6, v20

    move-object v8, v11

    move/from16 v23, v9

    move-wide/from16 v9, v18

    .end local v9    # "uid":I
    .local v23, "uid":I
    invoke-static/range {v4 .. v10}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v18

    .line 397
    .end local v0    # "collapseKey":I
    .end local v2    # "userId":I
    .end local v7    # "category":I
    .end local v23    # "uid":I
    :goto_a
    add-int/lit8 v0, v21, 0x1

    .end local v21    # "i":I
    .local v0, "i":I
    move-object/from16 v9, v16

    move-object/from16 v4, v20

    move/from16 v10, v22

    move/from16 v8, v25

    move/from16 v12, v26

    move-object/from16 v2, p1

    goto/16 :goto_2

    .line 450
    .end local v0    # "i":I
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v25    # "size":I
    .end local v26    # "currentUserId":I
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    .restart local v8    # "size":I
    .local v9, "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "currentUserId":I
    :cond_9
    move/from16 v25, v8

    move-object/from16 v16, v9

    move/from16 v22, v10

    move/from16 v26, v12

    const/4 v12, 0x1

    .end local v8    # "size":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "currentUserId":I
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "size":I
    .restart local v26    # "currentUserId":I
    array-length v0, v3

    .line 451
    .local v0, "restrictedUidsMax":I
    move/from16 v2, v22

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_c

    .line 452
    aget v5, v3, v2

    .line 454
    .restart local v5    # "uid":I
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v14, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 455
    goto :goto_c

    .line 458
    :cond_a
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/AppItem;

    .line 459
    .local v6, "item":Lcom/android/settingslib/AppItem;
    if-nez v6, :cond_b

    .line 460
    new-instance v7, Lcom/android/settingslib/AppItem;

    invoke-direct {v7, v5}, Lcom/android/settingslib/AppItem;-><init>(I)V

    move-object v6, v7

    .line 461
    const-wide/16 v7, -0x1

    iput-wide v7, v6, Lcom/android/settingslib/AppItem;->total:J

    .line 462
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget v7, v6, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v15, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    :cond_b
    iput-boolean v12, v6, Lcom/android/settingslib/AppItem;->restricted:Z

    .line 451
    .end local v5    # "uid":I
    .end local v6    # "item":Lcom/android/settingslib/AppItem;
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 468
    .end local v2    # "i":I
    :cond_c
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 469
    iget-object v2, v1, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getCorpUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 471
    .local v2, "multiAppUserInfo":Landroid/content/pm/UserInfo;
    move/from16 v5, v22

    .local v5, "i":I
    :goto_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    .line 472
    const-wide/16 v6, 0x0

    cmp-long v6, v18, v6

    if-eqz v6, :cond_d

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/AppItem;

    iget-wide v6, v6, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    div-long v6, v6, v18

    long-to-int v10, v6

    goto :goto_e

    :cond_d
    move/from16 v10, v22

    :goto_e
    move v6, v10

    .line 473
    .local v6, "percentTotal":I
    new-instance v7, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 474
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/AppItem;

    iget-object v10, v1, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v7, v8, v9, v6, v10}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V

    .line 476
    .local v7, "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/AppItem;

    iget v8, v8, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/settings/datausage/AppDataUsagePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 471
    .end local v6    # "percentTotal":I
    .end local v7    # "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    const/16 v9, 0x3e7

    goto :goto_f

    .line 478
    .restart local v6    # "percentTotal":I
    .restart local v7    # "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    :cond_e
    new-instance v8, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v8, v1}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {v7, v8}, Lcom/android/settings/datausage/AppDataUsagePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 494
    if-eqz v2, :cond_f

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v9, 0x3e7

    if-ne v8, v9, :cond_10

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/AppItem;

    iget v8, v8, Lcom/android/settingslib/AppItem;->key:I

    if-gez v8, :cond_10

    .line 495
    goto :goto_f

    .line 497
    :cond_f
    const/16 v9, 0x3e7

    :cond_10
    iget-object v8, v1, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 471
    .end local v6    # "percentTotal":I
    .end local v7    # "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 499
    .end local v5    # "i":I
    :cond_11
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 132
    const/16 v0, 0x155

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 140
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isBandwidthControlEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    const-string v1, "DataUsage"

    const-string v2, "No bandwidth control; leaving"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 146
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    nop

    .line 151
    new-instance v1, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v1, v0}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 153
    const v1, 0x7f160038

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->addPreferencesFromResource(I)V

    .line 154
    const-string v1, "usage_amount"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    .line 155
    const-string v1, "chart_data"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    .line 156
    const-string v1, "apps_group"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->processArgument()V

    .line 160
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setShowWifi(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setSubId(I)V

    .line 163
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 261
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 263
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 264
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 252
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 253
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 254
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 223
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    .line 228
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 247
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageList$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 167
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 169
    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f0a01d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/settings/datausage/-$$Lambda$DataUsageList$YolaBauY8HvHsYGl5vfnCCKHiAQ;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageList$YolaBauY8HvHsYGl5vfnCCKHiAQ;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v2, 0x7f0a01d3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 183
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v3, 0x7f0a056d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->tv_filter_datetime:Landroid/widget/TextView;

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-static {v0, v3}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object v0

    .line 186
    .local v0, "section":[J
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const/4 v4, 0x0

    aget-wide v5, v0, v4

    const/4 v7, 0x1

    aget-wide v8, v0, v7

    invoke-virtual {v3, v5, v6, v8, v9}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setVisibleRange(JJ)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    aget-wide v4, v0, v4

    aget-wide v8, v0, v7

    invoke-static {v3, v4, v5, v8, v9}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "sectionTextString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->tv_filter_datetime:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 191
    .local v1, "filter_settings":Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    new-instance v2, Lcom/android/settings/datausage/CycleAdapter;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {v5, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 216
    new-instance v2, Lcom/android/settings/widget/LoadingViewController;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a02eb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 218
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v2}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    .line 219
    return-void
.end method

.method processArgument()V
    .locals 4

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 268
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 269
    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 270
    const-string v2, "network_template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    if-ne v2, v1, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 275
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "sub_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 276
    const-string v3, "network_template"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 279
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    if-ne v2, v1, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 281
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.provider.extra.SUB_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 282
    const-string v1, "network_template"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 284
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method
