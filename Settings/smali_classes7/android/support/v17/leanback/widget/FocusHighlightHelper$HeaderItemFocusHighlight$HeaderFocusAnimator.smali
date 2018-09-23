.class Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;
.super Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;
.source "FocusHighlightHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderFocusAnimator"
.end annotation


# instance fields
.field mViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/view/View;FI)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;-><init>(Landroid/view/View;FZI)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;->mViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    :cond_2
    return-void
.end method


# virtual methods
.method setFocusLevel(F)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;->mViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;->mViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;F)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->setFocusLevel(F)V

    return-void
.end method
