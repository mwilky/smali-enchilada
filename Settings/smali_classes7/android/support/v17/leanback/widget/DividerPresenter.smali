.class public Landroid/support/v17/leanback/widget/DividerPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "DividerPresenter.java"


# instance fields
.field private final mLayoutResourceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_divider:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/DividerPresenter;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "layoutResourceId"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    .line 41
    iput p1, p0, Landroid/support/v17/leanback/widget/DividerPresenter;->mLayoutResourceId:I

    .line 42
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/DividerPresenter;->mLayoutResourceId:I

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "headerView":Landroid/view/View;
    new-instance v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 58
    return-void
.end method
