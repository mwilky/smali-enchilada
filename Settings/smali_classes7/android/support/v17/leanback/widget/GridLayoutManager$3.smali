.class Landroid/support/v17/leanback/widget/GridLayoutManager$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;->slideIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .line 1853
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 1856
    if-nez p2, :cond_0

    .line 1857
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/BaseGridView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1858
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 1860
    :cond_0
    return-void
.end method
