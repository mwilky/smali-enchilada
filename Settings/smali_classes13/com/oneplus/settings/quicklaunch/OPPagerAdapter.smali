.class public Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "OPPagerAdapter.java"


# instance fields
.field private mCurrentItem:Landroid/support/v4/app/Fragment;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTransaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroid/support/v4/app/FragmentTransaction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method private getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroid/support/v4/app/FragmentTransaction;

    move-object v1, p3

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mCurrentItem:Landroid/support/v4/app/Fragment;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p2

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mCurrentItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mCurrentItem:Landroid/support/v4/app/Fragment;

    :cond_0
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
