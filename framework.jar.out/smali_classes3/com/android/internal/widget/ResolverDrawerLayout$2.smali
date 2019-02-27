.class Lcom/android/internal/widget/ResolverDrawerLayout$2;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;->animateTitleBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 526
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$2;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 529
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$2;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->access$300(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 530
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$2;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->access$400(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$2;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->access$300(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    return-void
.end method
