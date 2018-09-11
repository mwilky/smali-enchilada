.class Landroid/support/v17/leanback/widget/BaseGridView$3;
.super Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;
.source "BaseGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/BaseGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseGridView;

.field final synthetic val$position:I

.field final synthetic val$task:Landroid/support/v17/leanback/widget/ViewHolderTask;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/BaseGridView;ILandroid/support/v17/leanback/widget/ViewHolderTask;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/BaseGridView;

    .line 763
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView$3;->this$0:Landroid/support/v17/leanback/widget/BaseGridView;

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseGridView$3;->val$position:I

    iput-object p3, p0, Landroid/support/v17/leanback/widget/BaseGridView$3;->val$task:Landroid/support/v17/leanback/widget/ViewHolderTask;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "selectedPosition"    # I
    .param p4, "subposition"    # I

    .line 767
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseGridView$3;->val$position:I

    if-ne p3, v0, :cond_0

    .line 768
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView$3;->this$0:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/BaseGridView;->removeOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 769
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView$3;->val$task:Landroid/support/v17/leanback/widget/ViewHolderTask;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/ViewHolderTask;->run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 771
    :cond_0
    return-void
.end method
