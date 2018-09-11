.class Landroid/support/v17/leanback/widget/ActionPresenterSelector$TwoLineActionPresenter;
.super Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionPresenter;
.source "ActionPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ActionPresenterSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TwoLineActionPresenter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 7
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 120
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 121
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/Action;

    .line 122
    .local v0, "action":Landroid/support/v17/leanback/widget/Action;
    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;

    .line 124
    .local v1, "vh":Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v2

    .line 125
    .local v2, "line1":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v3

    .line 126
    .local v3, "line2":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    iget-object v4, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v4, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_action_2_lines:I

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method
