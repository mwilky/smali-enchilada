.class Landroid/widget/RelativeLayout$DependencyGraph;
.super Ljava/lang/Object;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyGraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph$Node;
    }
.end annotation


# instance fields
.field private mKeyNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRoots:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RelativeLayout$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    return-object v0
.end method

.method private findRoots([I)Ljava/util/ArrayDeque;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayDeque<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    iget-object v1, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I

    move-result-object v7

    array-length v8, p1

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_3

    aget v10, p1, v9

    aget v10, v7, v10

    if-lez v10, :cond_2

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    if-eqz v11, :cond_2

    if-ne v11, v5, :cond_1

    goto :goto_3

    :cond_1
    iget-object v12, v11, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    nop

    :goto_4
    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    return-object v4
.end method


# virtual methods
.method add(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {p1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clear()V
    .locals 4

    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method varargs getSortedViews([Landroid/view/View;[I)V
    .locals 12

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->findRoots([I)Ljava/util/ArrayDeque;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-object v4, v3

    if-eqz v3, :cond_2

    iget-object v3, v4, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    aput-object v3, p1, v2

    iget-object v2, v4, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_1

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    iget-object v10, v9, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v0, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    nop

    move v2, v6

    goto :goto_0

    :cond_2
    array-length v1, p1

    if-lt v2, v1, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Circular dependencies cannot exist in RelativeLayout"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
