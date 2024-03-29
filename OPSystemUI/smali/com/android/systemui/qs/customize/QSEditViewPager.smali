.class public Lcom/android/systemui/qs/customize/QSEditViewPager;
.super Lcom/android/systemui/qs/customize/RtlViewPager;
.source "QSEditViewPager.java"


# instance fields
.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/RtlViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/qs/customize/QSEditViewPager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSEditViewPager$1;-><init>(Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSEditViewPager;)Lcom/android/systemui/qs/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditViewPager;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object v0
.end method


# virtual methods
.method public setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditViewPager;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-void
.end method

.method public updateIndicator()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditViewPager;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditViewPager;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/PageIndicator;->setVisibility(I)V

    return-void
.end method
