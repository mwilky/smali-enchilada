.class Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;
.super Ljava/lang/Object;
.source "ControlBarPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

.field final synthetic val$this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;Landroid/support/v17/leanback/widget/ControlBarPresenter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    .line 87
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->val$this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildFocusedListener(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 94
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    if-ne v1, p1, :cond_1

    .line 95
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    .line 96
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    .line 97
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    .line 95
    invoke-interface {v1, v2, v3, v4}, Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;->onControlSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;)V

    .line 98
    goto :goto_1

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "position":I
    :cond_2
    :goto_1
    return-void
.end method
