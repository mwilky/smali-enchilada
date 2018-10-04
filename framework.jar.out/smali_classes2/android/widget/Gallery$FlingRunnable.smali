.class Landroid/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method public constructor <init>(Landroid/widget/Gallery;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic access$100(Landroid/widget/Gallery$FlingRunnable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v0}, Landroid/widget/Gallery;->access$500(Landroid/widget/Gallery;)V

    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v0, v0, Landroid/widget/Gallery;->mItemCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/Gallery;->access$602(Landroid/widget/Gallery;Z)Z

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iget v4, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_2

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v6}, Landroid/widget/Gallery;->access$800(Landroid/widget/Gallery;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v6, v6, Landroid/widget/Gallery;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v7}, Landroid/widget/Gallery;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v6, v1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v6, v6, Landroid/widget/Gallery;->mFirstPosition:I

    :goto_0
    invoke-static {v5, v6}, Landroid/widget/Gallery;->access$702(Landroid/widget/Gallery;I)I

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/Gallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v6}, Landroid/widget/Gallery;->access$900(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v6}, Landroid/widget/Gallery;->access$1000(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    :cond_2
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/Gallery;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v1

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v7}, Landroid/widget/Gallery;->access$800(Landroid/widget/Gallery;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v7, v7, Landroid/widget/Gallery;->mFirstPosition:I

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v7, v7, Landroid/widget/Gallery;->mFirstPosition:I

    iget-object v8, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v8}, Landroid/widget/Gallery;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v1

    :goto_1
    invoke-static {v6, v7}, Landroid/widget/Gallery;->access$702(Landroid/widget/Gallery;I)I

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v6}, Landroid/widget/Gallery;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v7}, Landroid/widget/Gallery;->access$1100(Landroid/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v7}, Landroid/widget/Gallery;->access$1200(Landroid/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v1

    neg-int v6, v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_2
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5, v4}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    if-eqz v2, :cond_4

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->access$600(Landroid/widget/Gallery;)Z

    move-result v5

    if-nez v5, :cond_4

    iput v3, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v1, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    invoke-direct {p0, v1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    :goto_3
    return-void
.end method

.method public startUsingDistance(I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, p1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v0}, Landroid/widget/Gallery;->access$400(Landroid/widget/Gallery;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    if-gez p1, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v2, v0

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v1, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method
