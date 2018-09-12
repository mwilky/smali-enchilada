.class Lcom/oneplus/aod/NotificationCustomViewWrapper$1;
.super Ljava/lang/Object;
.source "NotificationCustomViewWrapper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/NotificationCustomViewWrapper;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationCustomViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/NotificationCustomViewWrapper;

    .line 72
    iput-object p1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper$1;->this$0:Lcom/oneplus/aod/NotificationCustomViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 75
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper$1;->this$0:Lcom/oneplus/aod/NotificationCustomViewWrapper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->updateGrayscaleMatrix(F)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper$1;->this$0:Lcom/oneplus/aod/NotificationCustomViewWrapper;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->access$000(Lcom/oneplus/aod/NotificationCustomViewWrapper;)Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper$1;->this$0:Lcom/oneplus/aod/NotificationCustomViewWrapper;

    iget-object v2, v2, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 77
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper$1;->this$0:Lcom/oneplus/aod/NotificationCustomViewWrapper;

    iget-object v0, v0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper$1;->this$0:Lcom/oneplus/aod/NotificationCustomViewWrapper;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->access$000(Lcom/oneplus/aod/NotificationCustomViewWrapper;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 78
    return-void
.end method
