.class public Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "OPViewPagerGuideCategory.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$400(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$100(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$200(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$300(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$200(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$100(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$400(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$300(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->playCurrentPageAnim(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->access$502(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;I)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
