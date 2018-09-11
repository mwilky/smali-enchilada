.class abstract Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "ActionPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ActionPresenterSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ActionPresenter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 7
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 62
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/Action;

    .line 63
    .local v0, "action":Landroid/support/v17/leanback/widget/Action;
    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;

    .line 64
    .local v1, "vh":Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;
    iput-object v0, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mAction:Landroid/support/v17/leanback/widget/Action;

    .line 65
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 66
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 67
    iget-object v4, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_action_with_icon_padding_start:I

    .line 68
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 69
    .local v4, "startPadding":I
    iget-object v5, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v17/leanback/R$dimen;->lb_action_with_icon_padding_end:I

    .line 70
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 71
    .local v5, "endPadding":I
    iget-object v6, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v6, v4, v3, v5, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 72
    .end local v4    # "startPadding":I
    .end local v5    # "endPadding":I
    goto :goto_0

    .line 73
    :cond_0
    iget-object v4, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_action_padding_horizontal:I

    .line 74
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 75
    .local v4, "padding":I
    iget-object v5, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v5, v4, v3, v4, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 77
    .end local v4    # "padding":I
    :goto_0
    iget v3, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mLayoutDirection:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 78
    iget-object v3, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 80
    :cond_1
    iget-object v3, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_1
    return-void
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 86
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;

    .line 87
    .local v0, "vh":Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    iput-object v2, v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mAction:Landroid/support/v17/leanback/widget/Action;

    .line 90
    return-void
.end method
