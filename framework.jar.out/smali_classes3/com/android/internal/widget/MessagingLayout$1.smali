.class Lcom/android/internal/widget/MessagingLayout$1;
.super Ljava/lang/Object;
.source "MessagingLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MessagingLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MessagingLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MessagingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout$1;->this$0:Lcom/android/internal/widget/MessagingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout$1;->this$0:Lcom/android/internal/widget/MessagingLayout;

    invoke-static {v0}, Lcom/android/internal/widget/MessagingLayout;->access$000(Lcom/android/internal/widget/MessagingLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeIn(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeIn(Landroid/view/View;)V

    nop

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->getHeight()I

    move-result v2

    sget-object v3, Lcom/android/internal/widget/MessagingLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startLocalTranslationFrom(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout$1;->this$0:Lcom/android/internal/widget/MessagingLayout;

    invoke-static {v0}, Lcom/android/internal/widget/MessagingLayout;->access$000(Lcom/android/internal/widget/MessagingLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout$1;->this$0:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0
.end method
