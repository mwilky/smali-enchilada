.class public Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "QLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/QLRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QLLayoutManager"
.end annotation


# instance fields
.field mSmoothScroller:Landroid/support/v7/widget/LinearSmoothScroller;

.field final synthetic this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p2, "context"    # Landroid/content/Context;

    .line 256
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 257
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .line 260
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 261
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 263
    new-instance v0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager$1;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;Landroid/content/Context;Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->mSmoothScroller:Landroid/support/v7/widget/LinearSmoothScroller;

    .line 269
    return-void
.end method


# virtual methods
.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 273
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 274
    .local v0, "scrolled":I
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$000(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    .line 275
    return v0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 280
    new-instance v0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager$2;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager$2;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;Landroid/content/Context;)V

    .line 286
    .local v0, "scroller":Landroid/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 288
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->vibrate(I)V

    .line 289
    return-void
.end method
