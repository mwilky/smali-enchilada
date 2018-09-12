.class public abstract Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1382
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1389
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$2;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1402
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .locals 4
    .param p0, "flags"    # I
    .param p1, "layoutDirection"    # I

    .line 1463
    const v0, 0xc0c0c

    and-int v1, p0, v0

    .line 1464
    .local v1, "masked":I
    if-nez v1, :cond_0

    .line 1465
    return p0

    .line 1467
    :cond_0
    not-int v2, v1

    and-int/2addr p0, v2

    .line 1468
    if-nez p1, :cond_1

    .line 1470
    shl-int/lit8 v0, v1, 0x2

    or-int/2addr p0, v0

    .line 1471
    return p0

    .line 1474
    :cond_1
    shl-int/lit8 v2, v1, 0x1

    const v3, -0xc0c0d

    and-int/2addr v2, v3

    or-int/2addr p0, v2

    .line 1476
    shl-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr p0, v0

    .line 1478
    return p0
.end method

.method public static getDefaultUIUtil()Landroid/support/v7/widget/helper/ItemTouchUIUtil;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1447
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;->INSTANCE:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    return-object v0
.end method

.method private getMaxDragScroll(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 1882
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1883
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1886
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return v0
.end method

.method public static makeFlag(II)I
    .locals 1
    .param p0, "actionState"    # I
    .param p1, "directions"    # I

    .line 1510
    mul-int/lit8 v0, p0, 0x8

    shl-int v0, p1, v0

    return v0
.end method

.method public static makeMovementFlags(II)I
    .locals 2
    .param p0, "dragFlags"    # I
    .param p1, "swipeFlags"    # I

    .line 1493
    or-int v0, p1, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    .line 1494
    const/4 v1, 0x1

    invoke-static {v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1495
    const/4 v1, 0x2

    invoke-static {v1, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "current"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1607
    const/4 v0, 0x1

    return v0
.end method

.method public chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 14
    .param p1, "selected"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "curX"    # I
    .param p4, "curY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .local p2, "dropTargets":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    move-object v0, p1

    .line 1783
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v1, p3, v1

    .line 1784
    .local v1, "right":I
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, p4, v2

    .line 1785
    .local v2, "bottom":I
    const/4 v3, 0x0

    .line 1786
    .local v3, "winner":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v4, -0x1

    .line 1787
    .local v4, "winnerScore":I
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, p3, v5

    .line 1788
    .local v5, "dx":I
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, p4, v6

    .line 1789
    .local v6, "dy":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    .line 1790
    .local v7, "targetsSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 1791
    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1792
    .local v10, "target":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-lez v5, :cond_0

    .line 1793
    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v11, v1

    .line 1794
    .local v11, "diff":I
    if-gez v11, :cond_0

    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    if-le v12, v13, :cond_0

    .line 1795
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1796
    .local v12, "score":I
    if-le v12, v4, :cond_0

    .line 1797
    move v4, v12

    .line 1798
    move-object v3, v10

    .line 1802
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_0
    if-gez v5, :cond_1

    .line 1803
    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v11, p3

    .line 1804
    .restart local v11    # "diff":I
    if-lez v11, :cond_1

    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 1805
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1806
    .restart local v12    # "score":I
    if-le v12, v4, :cond_1

    .line 1807
    move v4, v12

    .line 1808
    move-object v3, v10

    .line 1812
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_1
    if-gez v6, :cond_2

    .line 1813
    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v11, v11, p4

    .line 1814
    .restart local v11    # "diff":I
    if-lez v11, :cond_2

    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 1815
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1816
    .restart local v12    # "score":I
    if-le v12, v4, :cond_2

    .line 1817
    move v4, v12

    .line 1818
    move-object v3, v10

    .line 1823
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_2
    if-lez v6, :cond_3

    .line 1824
    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int/2addr v11, v2

    .line 1825
    .restart local v11    # "diff":I
    if-gez v11, :cond_3

    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    if-le v12, v13, :cond_3

    .line 1826
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1827
    .restart local v12    # "score":I
    if-le v12, v4, :cond_3

    .line 1828
    move v4, v12

    .line 1829
    move-object v3, v10

    .line 1790
    .end local v10    # "target":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1834
    .end local v8    # "i":I
    :cond_4
    move-object/from16 v9, p2

    return-object v3
.end method

.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2019
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;->INSTANCE:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 2020
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 4
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .line 1554
    const v0, 0x303030

    and-int v1, p1, v0

    .line 1555
    .local v1, "masked":I
    if-nez v1, :cond_0

    .line 1556
    return p1

    .line 1558
    :cond_0
    not-int v2, v1

    and-int/2addr p1, v2

    .line 1559
    if-nez p2, :cond_1

    .line 1561
    shr-int/lit8 v0, v1, 0x2

    or-int/2addr p1, v0

    .line 1562
    return p1

    .line 1565
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr p1, v2

    .line 1567
    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr p1, v0

    .line 1569
    return p1
.end method

.method final getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1574
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1575
    .local v0, "flags":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    return v1
.end method

.method public getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animationType"    # I
    .param p3, "animateDx"    # F
    .param p4, "animateDy"    # F

    .line 2113
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 2114
    .local v0, "itemAnimator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 2115
    if-ne p2, v1, :cond_0

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    return-wide v1

    .line 2118
    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v1

    goto :goto_1

    .line 2119
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    :goto_1
    return-wide v1
.end method

.method public getBoundingBoxMargin()I
    .locals 1

    .line 1671
    const/4 v0, 0x0

    return v0
.end method

.method public getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1701
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public abstract getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public getSwipeEscapeVelocity(F)F
    .locals 0
    .param p1, "defaultValue"    # F

    .line 1727
    return p1
.end method

.method public getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1687
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getSwipeVelocityThreshold(F)F
    .locals 0
    .param p1, "defaultValue"    # F

    .line 1751
    return p1
.end method

.method hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1579
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1580
    .local v0, "flags":I
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method hasSwipeFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1585
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1586
    .local v0, "flags":I
    const v1, 0xff00

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .line 2147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMaxDragScroll(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 2148
    .local v0, "maxScroll":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2149
    .local v1, "absOutOfBounds":I
    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    .line 2151
    .local v2, "direction":I
    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2152
    .local v3, "outOfBoundsRatio":F
    mul-int v4, v2, v0

    int-to-float v4, v4

    sget-object v5, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 2153
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 2155
    .local v4, "cappedScroll":I
    const-wide/16 v5, 0x7d0

    cmp-long v5, p5, v5

    if-lez v5, :cond_0

    .line 2156
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "timeRatio":F
    goto :goto_0

    .line 2158
    .end local v5    # "timeRatio":F
    :cond_0
    long-to-float v5, p5

    const/high16 v6, 0x44fa0000    # 2000.0f

    div-float/2addr v5, v6

    .line 2160
    .restart local v5    # "timeRatio":F
    :goto_0
    int-to-float v6, v4

    sget-object v7, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 2161
    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 2162
    .local v6, "value":I
    if-nez v6, :cond_2

    .line 2163
    if-lez p3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    return v7

    .line 2165
    :cond_2
    return v6
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 1659
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 1644
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 2052
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;->INSTANCE:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2054
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 2086
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;->INSTANCE:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2088
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "selected"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    move-object v8, p1

    .line 1959
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    .line 1960
    .local v9, "recoverAnimSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    if-ge v10, v9, :cond_0

    .line 1961
    move-object/from16 v11, p4

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1962
    .local v12, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v12}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1963
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1964
    .local v13, "count":I
    iget-object v3, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v4, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1966
    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1960
    .end local v12    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v13    # "count":I
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1968
    .end local v0    # "i":I
    :cond_0
    move-object/from16 v11, p4

    if-eqz p3, :cond_1

    .line 1969
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1970
    .local v12, "count":I
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1971
    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1973
    .end local v12    # "count":I
    :cond_1
    return-void
.end method

.method onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "selected"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    move-object v8, p1

    move-object/from16 v9, p4

    .line 1978
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    .line 1979
    .local v10, "recoverAnimSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_0

    .line 1980
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1981
    .local v12, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1982
    .local v13, "count":I
    iget-object v3, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v4, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1984
    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1979
    .end local v12    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v13    # "count":I
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1986
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 1987
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1988
    .local v12, "count":I
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1989
    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1991
    .end local v12    # "count":I
    :cond_1
    const/4 v0, 0x0

    .line 1992
    .local v0, "hasRunningAnimation":Z
    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1993
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1994
    .local v2, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v3, :cond_2

    .line 1995
    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1996
    :cond_2
    iget-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_3

    .line 1997
    const/4 v0, 0x1

    .line 1992
    .end local v2    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2000
    .end local v1    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 2001
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 2003
    :cond_5
    return-void
.end method

.method public abstract onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fromPos"    # I
    .param p4, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .line 1925
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1926
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;

    if-eqz v1, :cond_0

    .line 1927
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;

    iget-object v2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2, v3, p6, p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1929
    return-void

    .line 1933
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1934
    iget-object v1, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    .line 1935
    .local v1, "minLeft":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1936
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1938
    :cond_1
    iget-object v2, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 1939
    .local v2, "maxRight":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    .line 1940
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1944
    .end local v1    # "minLeft":I
    .end local v2    # "maxRight":I
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1945
    iget-object v1, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    .line 1946
    .local v1, "minTop":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 1947
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1949
    :cond_3
    iget-object v2, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    .line 1950
    .local v2, "maxBottom":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_4

    .line 1951
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1954
    .end local v1    # "minTop":I
    .end local v2    # "maxBottom":I
    :cond_4
    return-void
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "actionState"    # I

    .line 1876
    if-eqz p1, :cond_0

    .line 1877
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;->INSTANCE:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    .line 1879
    :cond_0
    return-void
.end method

.method public abstract onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
