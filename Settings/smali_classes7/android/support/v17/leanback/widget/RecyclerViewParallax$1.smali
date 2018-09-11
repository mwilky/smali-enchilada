.class Landroid/support/v17/leanback/widget/RecyclerViewParallax$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewParallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/RecyclerViewParallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/RecyclerViewParallax;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/RecyclerViewParallax;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/RecyclerViewParallax;

    .line 38
    iput-object p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$1;->this$0:Landroid/support/v17/leanback/widget/RecyclerViewParallax;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 41
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$1;->this$0:Landroid/support/v17/leanback/widget/RecyclerViewParallax;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->updateValues()V

    .line 42
    return-void
.end method
