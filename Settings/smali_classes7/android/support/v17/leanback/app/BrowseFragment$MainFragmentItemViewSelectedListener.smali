.class Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainFragmentItemViewSelectedListener"
.end annotation


# instance fields
.field mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->getSelectedPosition()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->onRowSelected(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method
