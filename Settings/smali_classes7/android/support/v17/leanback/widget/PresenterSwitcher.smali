.class public abstract Landroid/support/v17/leanback/widget/PresenterSwitcher;
.super Ljava/lang/Object;
.source "PresenterSwitcher.java"


# instance fields
.field private mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field private mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field private mParent:Landroid/view/ViewGroup;

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showView(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 65
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->showView(Landroid/view/View;Z)V

    .line 68
    :cond_0
    return-void
.end method

.method private switchView(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    .line 72
    .local v0, "presenter":Landroid/support/v17/leanback/widget/Presenter;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eq v0, v1, :cond_1

    .line 73
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->showView(Z)V

    .line 74
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->clear()V

    .line 75
    iput-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 76
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-nez v1, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 80
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->insertView(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-nez v1, :cond_2

    .line 83
    return-void

    .line 85
    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 87
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->onViewSelected(Landroid/view/View;)V

    .line 89
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 107
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 109
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 111
    iput-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 113
    :cond_0
    return-void
.end method

.method public final getParentViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public init(Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "presenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 37
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->clear()V

    .line 38
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    .line 39
    iput-object p2, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 40
    return-void
.end method

.method protected abstract insertView(Landroid/view/View;)V
.end method

.method protected onViewSelected(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 97
    return-void
.end method

.method public select(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 46
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->switchView(Ljava/lang/Object;)V

    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->showView(Z)V

    .line 48
    return-void
.end method

.method protected showView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .line 100
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public unselect()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->showView(Z)V

    .line 55
    return-void
.end method
