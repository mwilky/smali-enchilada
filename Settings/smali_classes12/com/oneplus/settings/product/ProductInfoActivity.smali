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
    .locals 11

    const v0, 0x7f0d019b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/product/ProductInfoActivity;->setContentView(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo16859(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x12

    if-ge v3, v4, :cond_0

    const v4, 0x7f0d019a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a024a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "product_info_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x1

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/oneplus/settings/product/ProductInfoActivity;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v3, 0x7f0a02fe

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/product/ProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f0a0543

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/product/ProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Lcom/oneplus/settings/product/NovicePagerAdapter;

    iget-object v4, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViews:Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/oneplus/settings/product/NovicePagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    iget-object v3, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v3, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v2, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mPagerAdapter:Lcom/oneplus/settings/product/NovicePagerAdapter;

    invoke-virtual {v2}, Lcom/oneplus/settings/product/NovicePagerAdapter;->getCount()I

    move-result v2

    sput v2, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    iget-object v2, p0, Lcom/oneplus/settings/product/ProductInfoActivity;->mCountTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/oneplus/settings/product/ProductInfoActivity;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p0}, Lcom/oneplus/settings/product/ProductInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/product/ProductInfoActivity;->setRequestedOrientation(I)V

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
