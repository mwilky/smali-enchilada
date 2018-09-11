.class public abstract Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "AbstractMediaListHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mBackgroundColor:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mThemeResId"    # I

    .line 72
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mBackgroundColor:I

    .line 73
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mContext:Landroid/content/Context;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 94
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_media_list_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 98
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 99
    new-instance v2, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;

    invoke-direct {v2, v1}, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 100
    .local v2, "vh":Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mBackgroundColorSet:Z

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    iget v4, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    :cond_1
    return-object v2
.end method

.method public isUsingDefaultSelectEffect()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onBindMediaListHeaderViewHolder(Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;Ljava/lang/Object;)V
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 108
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 109
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;

    invoke-virtual {p0, v0, p2}, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->onBindMediaListHeaderViewHolder(Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mBackgroundColorSet:Z

    .line 120
    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mBackgroundColor:I

    .line 121
    return-void
.end method
