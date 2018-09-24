.class Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingOnPageChangeListener"
.end annotation


# instance fields
.field private final mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/RtlViewPager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/RtlViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$401(Lcom/android/systemui/qs/customize/RtlViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p3

    :goto_0
    if-ge p1, v2, :cond_0

    if-lez v3, :cond_0

    add-int/lit8 p1, p1, 0x1

    int-to-float v4, v0

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    sub-int v4, v2, p1

    add-int/lit8 p1, v4, -0x1

    neg-int p3, v3

    int-to-float v4, p3

    int-to-float v5, v0

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    mul-float/2addr v5, v6

    div-float p2, v4, v5

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$601(Lcom/android/systemui/qs/customize/RtlViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 p1, v1, -0x1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method
