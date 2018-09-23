.class Landroid/support/v17/leanback/app/SearchSupportFragment$2;
.super Ljava/lang/Object;
.source "SearchSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/SearchSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setSelectedPosition(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->updateSearchBarVisibility()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget v1, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->updateFocus()V

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->updateSearchBarNextFocusId()V

    return-void
.end method
