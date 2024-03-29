.class public Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
.super Lcom/android/internal/widget/AutoScrollHelper;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbsListViewAutoScroller"
.end annotation


# instance fields
.field private final mTarget:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    add-int v5, v4, v3

    if-lez p1, :cond_2

    if-lt v5, v1, :cond_4

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_1

    return v2

    :cond_1
    goto :goto_0

    :cond_2
    if-gez p1, :cond_5

    if-gtz v4, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-ltz v7, :cond_3

    return v2

    :cond_3
    nop

    :cond_4
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_5
    return v2
.end method

.method public scrollTargetBy(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    return-void
.end method
