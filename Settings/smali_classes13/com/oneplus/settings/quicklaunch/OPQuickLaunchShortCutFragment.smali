.class public Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;
.super Landroid/support/v4/app/Fragment;
.source "OPQuickLaunchShortCutFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final sPayWaysKey:[Ljava/lang/String;

.field public static final sPayWaysValue:[I


# instance fields
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

.field private mDefaultpayAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPShortcutListAdapter:Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPayWaysName:[Ljava/lang/String;

.field private mSelectedApp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->sPayWaysKey:[Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->sPayWaysValue:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mDefaultpayAppList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mSelectedApp:Ljava/util/Map;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mPayWaysName:[Ljava/lang/String;

    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;-><init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mOPShortcutListAdapter:Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mDefaultpayAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method private createDefaultAppList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mDefaultpayAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const-string v3, "com.tencent.mm"

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mPayWaysName:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v4, v2, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->isInQuickLaunchList(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    const-string v4, "com.tencent.mm"

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mPayWaysName:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v5, v3, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v9}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/oneplus/settings/utils/OPUtils;->isInQuickLaunchList(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mDefaultpayAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mDefaultpayAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    const-string v2, "com.eg.android.AlipayGphone"

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const-string v3, "com.eg.android.AlipayGphone"

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mPayWaysName:[Ljava/lang/String;

    aget-object v4, v2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->isInQuickLaunchList(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    const-string v4, "com.eg.android.AlipayGphone"

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mPayWaysName:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v5, v3, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v9}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/oneplus/settings/utils/OPUtils;->isInQuickLaunchList(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mDefaultpayAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mDefaultpayAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    const-string v2, "net.one97.paytm"

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const-string v3, "net.one97.paytm"

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mPayWaysName:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v5, v2, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    const-string v2, "net.one97.paytm"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->isInQuickLaunchList(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mDefaultpayAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mDefaultpayAppList:Ljava/util/List;

    return-object v0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0398

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mAppList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mOPShortcutListAdapter:Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mOPShortcutListAdapter:Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a030f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mLoadingContainer:Landroid/view/View;

    const v0, 0x7f0a03a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setNeedLoadWorkProfileApps(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d0144

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->initViews(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->createDefaultAppList()Ljava/util/List;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mOPShortcutListAdapter:Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->getSelected(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchShortcutsAccount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f120ba4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mOPShortcutListAdapter:Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

    invoke-virtual {v1, p3, v0}, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->setSelected(IZ)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchShortcutsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isQuickPayModel(Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
