.class public Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "RowHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/RowHeaderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field mDescriptionView:Landroid/widget/TextView;

.field mOriginalTextColor:I

.field mSelectLevel:F

.field mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

.field mUnselectAlpha:F


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/RowHeaderView;)V
    .locals 0
    .param p1, "view"    # Landroid/support/v17/leanback/widget/RowHeaderView;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 109
    iput-object p1, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    .line 110
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->initColors()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 95
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    sget v0, Landroid/support/v17/leanback/R$id;->row_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowHeaderView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    .line 97
    sget v0, Landroid/support/v17/leanback/R$id;->row_header_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->initColors()V

    .line 99
    return-void
.end method


# virtual methods
.method public final getSelectLevel()F
    .locals 1

    .line 123
    iget v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mSelectLevel:F

    return v0
.end method

.method initColors()V
    .locals 3

    .line 114
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/RowHeaderView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mOriginalTextColor:I

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$fraction;->lb_browse_header_unselect_alpha:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mUnselectAlpha:F

    .line 120
    return-void
.end method
