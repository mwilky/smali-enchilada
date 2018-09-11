.class Landroid/support/v17/leanback/app/BaseRowSupportFragment$1;
.super Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;
.source "BaseRowSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BaseRowSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BaseRowSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BaseRowSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BaseRowSupportFragment;

    .line 49
    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/BaseRowSupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .line 53
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/BaseRowSupportFragment;

    invoke-static {v0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->access$000(Landroid/support/v17/leanback/app/BaseRowSupportFragment;)Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->mIsLateSelection:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/BaseRowSupportFragment;

    iput p3, v0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    .line 55
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/BaseRowSupportFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 57
    :cond_0
    return-void
.end method
