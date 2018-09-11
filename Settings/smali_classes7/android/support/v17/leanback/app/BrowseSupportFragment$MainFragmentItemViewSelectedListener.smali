.class Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainFragmentItemViewSelectedListener"
.end annotation


# instance fields
.field mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseSupportFragment;
    .param p2, "fragmentRowsAdapter"    # Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    .line 1479
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1480
    iput-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    .line 1481
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 2
    .param p1, "itemViewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Landroid/support/v17/leanback/widget/Row;

    .line 1486
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->getSelectedPosition()I

    move-result v0

    .line 1488
    .local v0, "position":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->onRowSelected(I)V

    .line 1489
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    if-eqz v1, :cond_0

    .line 1490
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 1493
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1476
    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method
