.class Landroid/support/v17/leanback/app/BackgroundManager$2;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BackgroundManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BackgroundManager;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$2;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$2;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$2;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$2;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    iget v2, v2, Landroid/support/v17/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->setWrapperAlpha(II)V

    :cond_0
    return-void
.end method
