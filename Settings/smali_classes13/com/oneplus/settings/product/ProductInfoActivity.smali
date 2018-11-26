.class public Lcom/oneplus/settings/product/ProductInfoActivity;
.super Landroid/app/Activity;
.source "ProductInfoActivity.java"


# static fields
.field private static count:I


# instance fields
.field private mCountTextView:Landroid/widget/TextView;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/product/ProductInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/product/ProductInfoActivity$1;-><init>(Lcom/oneplus/settings/product/ProductInfoActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/product/ProductInfoActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/product/ProductInfoActivity;->updatePagerViews(I)V

    return-void
.end method

.method public static autoGenericCode(II)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initViews()V
    .locals 15

    const v0, 0x7f0d01a8

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/product/ProductInfoActivity;->setContentView(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v2, 0x7f120ba6

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/product/ProductInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const v3, 0x7f0a026b

    const/4 v4, 0x0

    const v5, 0x7f0d01a7

    const/4 v6, 0x0

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v7, 0x7f120ba7

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/product/ProductInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo16859(Landroid/content/Context;)Z

    move-result v1

    move v7, v6

    :goto_0
    const/16 v8, 0x12

    if-ge v7, v8, :cond_2

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "product_info_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v7, 0x1

    invoke-static {v13, v2}, Lcom/oneplus/settings/product/ProductInfoActivity;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "drawable"

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v11, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v6

    :goto_2
    const/16 v7, 0xb

    if-ge v1, v7, :cond_2

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "product_info_6x_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v1, 0x1

    invoke-static {v12, v2}, Lcom/oneplus/settings/product/ProductInfoActivity;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const v1, 0x7f0a0323

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/product/ProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0a057f

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/product/ProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Lcom/oneplus/settings/product/NovicePagerAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/oneplus/settings/product/NovicePagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    invoke-virtual {v1}, Lcom/oneplus/settings/product/NovicePagerAdapter;->getCount()I

    move-result v1

    sput v1, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    iget-object v1, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePagerViews(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v1, 0x7f120ba6

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/product/ProductInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v1, 0x7f120ba7

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/product/ProductInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/product/ProductInfoActivity;->setRequestedOrientation(I)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->initViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
