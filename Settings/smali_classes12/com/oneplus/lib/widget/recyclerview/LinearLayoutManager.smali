.class public Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ViewDropHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;,
        Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

.field mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setReverseLayout(Z)V

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void
.end method

.method private computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;ZZ)I

    move-result v0

    return v0
.end method

.method private computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/16 v0, 0x11

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_6

    const/16 v0, 0x21

    const/4 v3, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    return v3

    :pswitch_1
    return v1

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v0, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v2

    :cond_2
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    nop

    :goto_1
    return v2

    :cond_4
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    nop

    move v1, v2

    :goto_2
    return v1

    :cond_6
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    nop

    move v1, v2

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private findReferenceChildClosestToStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    neg-int v2, v0

    invoke-virtual {p0, v2, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v2

    neg-int v1, v2

    add-int/2addr p1, v1

    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v0, v2, p1

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    add-int v2, v0, v1

    return v2

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v2

    neg-int v1, v2

    add-int/2addr p1, v1

    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v0, p1, v2

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    sub-int v2, v1, v0

    return v2

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private layoutForPredictiveAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move v9, v4

    move v4, v3

    move v3, v7

    :goto_0
    if-ge v3, v6, :cond_5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v8, :cond_2

    move v13, v12

    goto :goto_1

    :cond_2
    move v13, v7

    :goto_1
    iget-boolean v14, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v15, -0x1

    if-eq v13, v14, :cond_3

    move v12, v15

    nop

    :cond_3
    if-ne v12, v15, :cond_4

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-object v14, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v4, v13

    goto :goto_2

    :cond_4
    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iget-object v14, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v14}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v9, v13

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput-object v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-lez v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v11, p3

    invoke-direct {v0, v10, v11}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v4, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v7, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v10, v2, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    goto :goto_3

    :cond_6
    move/from16 v11, p3

    :goto_3
    if-lez v9, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v12, p4

    invoke-direct {v0, v10, v12}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v9, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v7, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v10, v2, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    goto :goto_4

    :cond_7
    move/from16 v12, p4

    :goto_4
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v7, 0x0

    iput-object v7, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void

    :cond_8
    :goto_5
    move/from16 v11, p3

    move/from16 v12, p4

    return-void
.end method

.method private logChildren()V
    .locals 5

    const-string v0, "LinearLayoutManager"

    const-string v1, "internal representation of views on the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "LinearLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "LinearLayoutManager"

    const-string v1, "=============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V
    .locals 2

    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleViewsFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleViewsFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    :goto_0
    return-void
.end method

.method private recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V
    .locals 1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_1
    if-le v0, p3, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-ge v5, v1, :cond_1

    invoke-direct {p0, p1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v1, :cond_3

    add-int/lit8 v4, v0, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private recycleViewsFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 6

    if-gez p2, :cond_0

    return-void

    :cond_0
    move v0, p2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v0, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    if-le v5, v0, :cond_3

    invoke-direct {p0, p1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p3, v0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->access$000(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    return v2

    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget-boolean v3, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_8

    invoke-virtual {p3, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_7

    iget-boolean v4, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    :goto_3
    iput v4, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method private updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    goto/16 :goto_5

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_0
    return v2

    :cond_3
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v0, v3, :cond_c

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v4

    if-le v3, v4, :cond_4

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    return v2

    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_5

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v2

    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    if-gez v1, :cond_6

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v2, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v2

    :cond_6
    iget-boolean v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpaceChange()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    :goto_1
    iput v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v4, v3, :cond_9

    move v4, v2

    goto :goto_2

    :cond_9
    move v4, v1

    :goto_2
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v4, v5, :cond_a

    move v1, v2

    nop

    :cond_a
    iput-boolean v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :cond_b
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    :goto_3
    return v2

    :cond_c
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_4
    return v2

    :cond_e
    :goto_5
    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    iput v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    return v1

    :cond_f
    :goto_6
    return v1
.end method

.method private updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateAnchorFromChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method private updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_2

    move v0, v1

    nop

    :cond_2
    iput v0, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p2, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 2

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    nop

    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_2

    const/4 v2, -0x1

    nop

    :cond_2
    move v0, v2

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x0

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method createLayoutState()Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->createLayoutState()Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    :cond_1
    return-void
.end method

.method fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I
    .locals 7

    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v1, :cond_0

    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V

    :cond_1
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;-><init>()V

    :cond_2
    if-lez v1, :cond_8

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->hasMore(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V

    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_4

    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v4

    :cond_5
    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_7

    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_6

    iget v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->recycleByLayoutState(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;)V

    :cond_7
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_2

    nop

    :cond_8
    :goto_0
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v2, v0, v2

    return v2
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    move v3, p1

    :goto_1
    if-eq v3, p2, :cond_4

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-ge v6, v1, :cond_3

    if-le v7, v0, :cond_3

    if-eqz p3, :cond_2

    if-lt v6, v0, :cond_1

    if-gt v7, v1, :cond_1

    return-object v5

    :cond_1
    if-eqz p4, :cond_3

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_2

    :cond_2
    return-object v5

    :cond_3
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    :cond_4
    return-object v4
.end method

.method findReferenceChild(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;III)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

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
    if-eq v0, p4, :cond_5

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_4

    if-ge v7, p5, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_3

    :cond_1
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v3, :cond_3

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v2, :cond_2

    goto :goto_2

    :cond_2
    return-object v6

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    move-object v1, v6

    :cond_4
    :goto_3
    add-int/2addr v0, v4

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v0, v5

    :goto_4
    return-object v0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int v2, p1, v1

    if-ltz v2, :cond_1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x1

    if-nez v10, :cond_0

    iput-boolean v11, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    move v3, v11

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    invoke-virtual {v6, v10}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v10, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    iget-boolean v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    move v3, v11

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    invoke-virtual {v6, v10}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v10, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_2
    invoke-virtual {v6, v10, v2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne v0, v11, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_3
    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_7

    iget v1, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    :goto_4
    move v15, v1

    goto :goto_6

    :cond_7
    iget v3, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v1, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, v4

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPaddingTop()I

    move-result v3

    iget-object v0, v6, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    iget v2, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v2, v1, :cond_9

    iget v1, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v2, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v2, v4

    :goto_5
    move v15, v0

    move v0, v1

    :goto_6
    move v13, v2

    move v14, v3

    goto :goto_7

    :cond_9
    iget v2, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v1, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, v4

    goto :goto_5

    :goto_7
    move/from16 v16, v0

    iget v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    add-int v2, v13, v0

    iget v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    add-int v3, v14, v0

    iget v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    sub-int v4, v16, v0

    iget v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v5, v15, v0

    move-object v0, v6

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iput-boolean v11, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :cond_b
    invoke-virtual {v10}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method

.method onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;
    .locals 8

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    const v5, 0x3ea8f5c3    # 0.33f

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v2, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput-boolean v6, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v6, 0x1

    invoke-virtual {p0, p3, v2, p4, v6}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    :goto_1
    if-eq v2, v4, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    return-object v2

    :cond_6
    :goto_2
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->reset()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getExtraLayoutSpace(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v3, :cond_3

    move v3, v0

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move v4, v0

    move v3, v2

    :goto_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndPadding()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v5

    const/high16 v6, -0x80000000

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v5, v1, :cond_6

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v5, v6, :cond_6

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v8, v7, v8

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v8, v7

    :goto_1
    if-lez v8, :cond_5

    add-int/2addr v4, v8

    goto :goto_2

    :cond_5
    sub-int/2addr v3, v8

    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p1, p2, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->onAnchorReady(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->detachAndScrapAttachedViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v7

    iput-boolean v7, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    iget-boolean v5, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v4, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v5, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v8

    :cond_7
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v9, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v10, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v8, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_8

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v4, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    invoke-direct {p0, v7, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v4, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v9, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v5, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    :cond_8
    nop

    move v7, v5

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v5, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v7

    :cond_a
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$AnchorInfo;)V

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v4, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v9, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v10, v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v7, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v9, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_b

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    invoke-direct {p0, v5, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v3, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v9, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    iget-object v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v8, v9, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_d

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v9, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v5, v9

    const/4 v9, 0x1

    if-eqz v5, :cond_c

    invoke-direct {p0, v8, p1, p2, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v5

    add-int/2addr v7, v5

    add-int/2addr v8, v5

    invoke-direct {p0, v7, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v2

    add-int/2addr v7, v2

    add-int/2addr v8, v2

    goto :goto_4

    :cond_c
    invoke-direct {p0, v7, p1, p2, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutStartGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v5

    add-int/2addr v7, v5

    add-int/2addr v8, v5

    invoke-direct {p0, v8, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fixLayoutEndGap(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v2

    add-int/2addr v7, v2

    add-int/2addr v8, v2

    :cond_d
    :goto_4
    invoke-direct {p0, p1, p2, v7, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->layoutForPredictiveAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;II)V

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_e

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    iput v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->onLayoutComplete()V

    :cond_e
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    :goto_0
    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    :goto_1
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 6

    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->resolveShouldLayoutReverse()V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    if-ne v4, v3, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_1
    return-void
.end method

.method scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->ensureLayoutState()V

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->updateLayoutState(IIZLcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p2, v4, p3, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)I

    move-result v4

    add-int/2addr v4, v2

    if-gez v4, :cond_2

    return v1

    :cond_2
    if-le v3, v4, :cond_3

    mul-int v1, v0, v4

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int v6, v1

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;

    iput v1, v5, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    return v1

    :cond_4
    :goto_2
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPosition:I

    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->invalidateAnchor()V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientation:I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$1;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->startSmoothScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method validateChildOrder()V
    .locals 11

    const-string v0, "LinearLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validating child count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4

    move v4, v1

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v6, v2, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v3, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    if-gt v7, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "detected invalid location"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v4, v1

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->mOrientationHelper:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v6, v2, :cond_6

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v3, :cond_5

    move v0, v1

    nop

    :cond_5
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    if-lt v7, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->logChildren()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "detected invalid location"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method
