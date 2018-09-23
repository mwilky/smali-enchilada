.class Lcom/airbnb/lottie/utils/LottieValueAnimator$2;
.super Ljava/lang/Object;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator$2;->this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator$2;->this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-static {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->access$200(Lcom/airbnb/lottie/utils/LottieValueAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator$2;->this$0:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->access$302(Lcom/airbnb/lottie/utils/LottieValueAnimator;F)F

    :cond_0
    return-void
.end method
