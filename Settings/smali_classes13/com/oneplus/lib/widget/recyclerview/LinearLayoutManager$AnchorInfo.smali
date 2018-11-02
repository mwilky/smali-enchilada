.class Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mPosition:I

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v0

    return v0
.end method

.method private isViewValidAsAnchor(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    return-void
.end method

.method public assignFromView(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int v4, v1, v3

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v4, :cond_1

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v6, v5

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v8, v7

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v7

    sub-int v9, v6, v2

    if-gez v9, :cond_1

    iget v10, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v11, v9

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v3, v1, v3

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v3, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v5, v0

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v7, v2

    sub-int v2, v7, v4

    if-gez v2, :cond_3

    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v9, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_3
    :goto_0
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
