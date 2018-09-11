.class final Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChangeBackgroundRunnable"
.end annotation


# instance fields
.field final mDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroid/support/v17/leanback/app/BackgroundManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BackgroundManager;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BackgroundManager;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 998
    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    iput-object p2, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1000
    return-void
.end method

.method private runTask()V
    .locals 4

    .line 1009
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-nez v0, :cond_0

    .line 1011
    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->getImageInWrapper()Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    move-result-object v0

    .line 1015
    .local v0, "imageInWrapper":Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;
    if-eqz v0, :cond_2

    .line 1016
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager;->sameDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1018
    return-void

    .line 1024
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imagein:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    .line 1025
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imageout:I

    .line 1026
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1025
    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    .line 1029
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->applyBackgroundChanges()V

    .line 1030
    return-void
.end method


# virtual methods
.method applyBackgroundChanges()V
    .locals 4

    .line 1033
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-static {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->access$000(Landroid/support/v17/leanback/app/BackgroundManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->getImageInWrapper()Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    move-result-object v0

    .line 1040
    .local v0, "imageInWrapper":Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1042
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imagein:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    move-result-object v0

    .line 1045
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget v2, v2, Landroid/support/v17/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->setWrapperAlpha(II)V

    .line 1048
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1049
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1051
    return-void
.end method

.method public run()V
    .locals 2

    .line 1004
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->runTask()V

    .line 1005
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    .line 1006
    return-void
.end method
