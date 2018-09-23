.class Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;I)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;ILcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    iput-object p0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 3

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-lt v1, v2, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    if-le v1, v2, :cond_4

    :cond_3
    return-void

    :cond_4
    if-eq p2, v0, :cond_5

    add-int/2addr v1, p2

    :cond_5
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return-void
.end method

.method calculateCachedEnd()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget-boolean v3, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-ne v4, v2, :cond_0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    return-void
.end method

.method calculateCachedStart()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget-boolean v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->invalidateCache()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$600(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$600(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$600(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$600(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 8

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    const/4 v2, -0x1

    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v4, p1

    :goto_1
    if-eq v4, p2, :cond_3

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-ge v6, v1, :cond_2

    if-le v7, v0, :cond_2

    if-eqz p3, :cond_1

    if-lt v6, v0, :cond_2

    if-gt v7, v1, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    return v2

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    return v2

    :cond_2
    add-int/2addr v4, v3

    goto :goto_1

    :cond_3
    return v2
.end method

.method public getDeletedSize()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method getEndLine()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0
.end method

.method getEndLine(I)I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v1
.end method

.method getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method getNormalizedOffset(III)I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gez p1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v0

    sub-int/2addr v0, p3

    if-gtz v0, :cond_1

    return v1

    :cond_1
    neg-int v1, p1

    if-le v1, v0, :cond_2

    neg-int v1, v0

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v0

    sub-int v0, p2, v0

    if-gtz v0, :cond_4

    return v1

    :cond_4
    if-ge v0, p1, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    move v1, p1

    :goto_1
    return v1
.end method

.method getStartLine()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method getStartLine(I)I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method invalidateCache()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method

.method isEmpty(II)Z
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method onOffset(I)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_1
    return-void
.end method

.method popEnd()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_1
    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_2
    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method

.method popStart()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_0

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    iput-object p0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method
