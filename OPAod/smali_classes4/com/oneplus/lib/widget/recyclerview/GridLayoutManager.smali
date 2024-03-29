.class public Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;,
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field static final MAIN_DIR_SPEC:I

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    nop

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->MAIN_DIR_SPEC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;IIZ)V
    .locals 15

    move-object v0, p0

    const/4 v1, -0x1

    if-eqz p5, :cond_0

    const/4 v2, 0x0

    move/from16 v3, p3

    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p3, -0x1

    const/4 v4, -0x1

    move v5, v4

    move v4, v1

    :goto_0
    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->isLayoutRTL()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v6, v7

    const/4 v8, -0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    move v8, v7

    :goto_1
    move v9, v6

    move v6, v3

    :goto_2
    if-eq v6, v5, :cond_3

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, v10}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v12

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct {v0, v13, v14, v12}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$102(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    if-ne v8, v1, :cond_2

    invoke-static {v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v12

    if-le v12, v7, :cond_2

    invoke-static {v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v12

    sub-int/2addr v12, v7

    sub-int v12, v9, v12

    invoke-static {v11, v12}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$002(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    goto :goto_3

    :cond_2
    invoke-static {v11, v9}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$002(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;I)I

    :goto_3
    invoke-static {v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v12

    mul-int/2addr v12, v8

    add-int/2addr v9, v12

    add-int/2addr v6, v4

    goto :goto_2

    :cond_3
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    array-length v0, v0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    add-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    aget v0, v0, v2

    if-eq v0, p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    const/4 v2, 0x0

    aput v2, v0, v2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    div-int v0, p1, v0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    rem-int v2, p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    nop

    :goto_0
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-gt v1, v5, :cond_3

    move v5, v0

    add-int/2addr v4, v2

    if-lez v4, :cond_2

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v6, v4

    if-ge v6, v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v4, v6

    :cond_2
    add-int/2addr v3, v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    aput v3, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private ensureAnchorIsInFirstSpan(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2

    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v1, :cond_0

    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMainDirSpec(I)I
    .locals 1

    if-gez p1, :cond_0

    sget v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->MAIN_DIR_SPEC:I

    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 4

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 5

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    const-string v1, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 5

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    const-string v1, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    return v1
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-nez p4, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    :cond_1
    if-nez p4, :cond_2

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_3

    :cond_2
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private updateMeasurements()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private updateSpecWithExtra(III)I
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    nop

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method public checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    return v0
.end method

.method findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;
    .locals 10

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->ensureLayoutState()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-le p4, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    move-object v5, v0

    move v0, p3

    :goto_1
    if-eq v0, p4, :cond_6

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, p5, :cond_5

    invoke-direct {p0, p1, p2, v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v3, :cond_4

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    move-object v1, v6

    :cond_5
    :goto_3
    add-int/2addr v0, v4

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_4

    :cond_7
    move-object v0, v5

    :goto_4
    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    return v0
.end method

.method public getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v0

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget v0, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v13, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-nez v13, :cond_1

    iget v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v3

    iget v4, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v4

    add-int v2, v3, v4

    :cond_1
    move v14, v0

    move v15, v1

    :goto_1
    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ge v14, v0, :cond_5

    invoke-virtual {v9, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->hasMore(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-lez v2, :cond_5

    iget v0, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanSize(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v1

    iget v3, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-gt v1, v3, :cond_4

    sub-int/2addr v2, v1

    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v15, v1

    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " spans but GridLayoutManager has only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " spans."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    :goto_2
    move/from16 v16, v2

    if-nez v14, :cond_6

    iput-boolean v12, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_6
    const/16 v17, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v14

    move v4, v15

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->assignSpans(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;IIZ)V

    move v0, v11

    move/from16 v5, v17

    :goto_3
    const/high16 v1, 0x40000000    # 2.0f

    if-ge v0, v14, :cond_c

    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    iget-object v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_8

    if-eqz v13, :cond_7

    invoke-virtual {v6, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v6, v2, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_8
    if-eqz v13, :cond_9

    invoke-virtual {v6, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v6, v2, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v17

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v18

    add-int v17, v17, v18

    aget v4, v4, v17

    iget-object v11, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v17

    aget v11, v11, v17

    sub-int/2addr v4, v11

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    if-ne v4, v12, :cond_a

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->height:I

    invoke-direct {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v4

    const/4 v11, 0x0

    invoke-direct {v6, v2, v1, v4, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->width:I

    invoke-direct {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v4

    invoke-direct {v6, v2, v4, v1, v11}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :goto_5
    iget-object v4, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    if-le v4, v5, :cond_b

    move v1, v4

    move v5, v1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    invoke-direct {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getMainDirSpec(I)I

    move-result v4

    move v0, v11

    :goto_6
    if-ge v0, v14, :cond_f

    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    iget-object v3, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-eq v3, v5, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    iget-object v11, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v17

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$100(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v18

    add-int v17, v17, v18

    aget v11, v11, v17

    iget-object v12, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v17

    aget v12, v12, v17

    sub-int/2addr v11, v12

    invoke-static {v11, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v12, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v12, v1, :cond_d

    invoke-direct {v6, v2, v11, v4, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_7

    :cond_d
    invoke-direct {v6, v2, v4, v11, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :cond_e
    :goto_7
    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_6

    :cond_f
    iput v5, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v11, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    iget v11, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_10

    iget v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v2, v3, v5

    goto :goto_8

    :cond_10
    iget v2, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    add-int v3, v2, v5

    goto :goto_8

    :cond_11
    iget v11, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_12

    iget v1, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v0, v1, v5

    goto :goto_8

    :cond_12
    iget v0, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    add-int v1, v0, v5

    :goto_8
    const/16 v20, 0x0

    :goto_9
    move/from16 v11, v20

    if-ge v11, v14, :cond_16

    iget-object v12, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    move/from16 v22, v0

    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    move/from16 v23, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v17

    aget v1, v1, v17

    add-int/2addr v0, v1

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v12}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v17, v2

    move/from16 v18, v3

    goto :goto_a

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->access$000(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;)I

    move-result v17

    aget v1, v1, v17

    add-int/2addr v0, v1

    iget-object v1, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v12}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move/from16 v17, v0

    move/from16 v18, v1

    :goto_a
    iget v0, v7, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int v2, v22, v0

    iget v0, v7, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->topMargin:I

    add-int v3, v17, v0

    iget v0, v7, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v19, v23, v0

    iget v0, v7, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v20, v18, v0

    move-object v0, v6

    move-object v1, v12

    move/from16 v21, v4

    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_b

    :cond_14
    const/4 v0, 0x1

    goto :goto_c

    :cond_15
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :goto_c
    iget-boolean v1, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v12}, Landroid/view/View;->isFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v20, v11, 0x1

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v5, v19

    move/from16 v4, v21

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v7, p1

    goto/16 :goto_9

    :cond_16
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v21, v4

    move/from16 v19, v5

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->updateMeasurements()V

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->ensureAnchorIsInFirstSpan(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanGroupIndex(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    nop

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v6

    const/4 v7, 0x1

    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-le v8, v5, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v8

    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne v8, v9, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    const/4 v9, 0x0

    move v4, v6

    move v5, v2

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-static/range {v3 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v7

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v8

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-le v3, v5, :cond_3

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v3

    iget v9, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne v3, v9, :cond_3

    move v9, v5

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_1
    const/4 v10, 0x0

    move v3, v2

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    invoke-static/range {v3 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :goto_2
    return-void
.end method

.method public onItemsAdded(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;III)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->cachePreLayoutSpanMapping()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    :cond_1
    return-void
.end method

.method public setSpanCount(I)V
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    if-lt p1, v0, :cond_1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanCount:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpanSizeLookup(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mSpanSizeLookup:Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
