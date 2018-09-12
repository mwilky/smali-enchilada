.class Lcom/oneplus/doze/NotificationDozeHelper$1;
.super Ljava/lang/Object;
.source "NotificationDozeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/doze/NotificationDozeHelper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/NotificationDozeHelper;

.field final synthetic val$target:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/NotificationDozeHelper;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/doze/NotificationDozeHelper;

    .line 31
    iput-object p1, p0, Lcom/oneplus/doze/NotificationDozeHelper$1;->this$0:Lcom/oneplus/doze/NotificationDozeHelper;

    iput-object p2, p0, Lcom/oneplus/doze/NotificationDozeHelper$1;->val$target:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 34
    iget-object v0, p0, Lcom/oneplus/doze/NotificationDozeHelper$1;->this$0:Lcom/oneplus/doze/NotificationDozeHelper;

    iget-object v1, p0, Lcom/oneplus/doze/NotificationDozeHelper$1;->val$target:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/doze/NotificationDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    .line 35
    return-void
.end method
