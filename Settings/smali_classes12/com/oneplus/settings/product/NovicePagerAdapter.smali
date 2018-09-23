.class public Lcom/oneplus/settings/product/NovicePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "NovicePagerAdapter.java"


# instance fields
.field public mListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/product/NovicePagerAdapter;->mListViews:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/product/NovicePagerAdapter;->mListViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/oneplus/settings/product/NovicePagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/product/NovicePagerAdapter;->mListViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/product/NovicePagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/oneplus/settings/product/NovicePagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/oneplus/settings/product/NovicePagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
