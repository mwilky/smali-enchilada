.class public Landroid/support/v17/leanback/widget/RecyclerViewParallax;
.super Landroid/support/v17/leanback/widget/Parallax;
.source "RecyclerViewParallax.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/widget/Parallax<",
        "Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;",
        ">;"
    }
.end annotation


# instance fields
.field mIsVertical:Z

.field mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field mRecylerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Parallax;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$1;-><init>(Landroid/support/v17/leanback/widget/RecyclerViewParallax;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    new-instance v0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$2;-><init>(Landroid/support/v17/leanback/widget/RecyclerViewParallax;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method


# virtual methods
.method public createProperty(Ljava/lang/String;I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic createProperty(Ljava/lang/String;I)Landroid/util/Property;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->createProperty(Ljava/lang/String;I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object p1

    return-object p1
.end method

.method public getMaxValue()F
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mIsVertical:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    goto :goto_0

    :goto_1
    return v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mIsVertical:Z

    iget-object v1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    return-void
.end method

.method public updateValues()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    move-object v2, v1

    check-cast v2, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    invoke-virtual {v2, p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->updateValue(Landroid/support/v17/leanback/widget/RecyclerViewParallax;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/widget/Parallax;->updateValues()V

    return-void
.end method
