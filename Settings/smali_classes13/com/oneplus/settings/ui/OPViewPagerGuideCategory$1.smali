.class Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$1;
.super Landroid/support/v4/view/PagerAdapter;
.source "OPViewPagerGuideCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->initViewPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$1;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$1;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$000(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$1;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$000(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$1;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$000(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$1;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$000(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
