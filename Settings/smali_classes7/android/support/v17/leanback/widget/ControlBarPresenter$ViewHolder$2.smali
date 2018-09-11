.class Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "ControlBarPresenter.java"


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

    .line 103
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->val$this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 106
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->showControls(Landroid/support/v17/leanback/widget/Presenter;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 112
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 114
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    add-int v2, p1, v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroid/support/v17/leanback/widget/Presenter;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
