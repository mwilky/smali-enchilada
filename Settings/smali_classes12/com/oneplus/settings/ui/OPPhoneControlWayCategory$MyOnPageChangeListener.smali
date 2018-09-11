.class public Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "OPPhoneControlWayCategory.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    .line 326
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .line 368
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .line 364
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .line 329
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 349
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$300(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 343
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$300(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    goto :goto_0

    .line 337
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$300(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    goto :goto_0

    .line 331
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$300(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    nop

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    .line 356
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$602(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;I)I

    .line 360
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
