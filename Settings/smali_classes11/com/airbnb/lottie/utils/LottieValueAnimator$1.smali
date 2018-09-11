.class Lcom/airbnb/lottie/utils/LottieValueAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LottieValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/utils/LottieValueAnimator;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/utils/LottieValueAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 28
    iput-object p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;->this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;->this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;->this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-static {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->access$000(Lcom/airbnb/lottie/utils/LottieValueAnimator;)F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;->this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-static {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->access$100(Lcom/airbnb/lottie/utils/LottieValueAnimator;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    .line 35
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;->this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;->this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-static {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->access$000(Lcom/airbnb/lottie/utils/LottieValueAnimator;)F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;->this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-static {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->access$100(Lcom/airbnb/lottie/utils/LottieValueAnimator;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    .line 31
    return-void
.end method
