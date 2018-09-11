.class public Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;
.source "ListRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ListRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectItemViewHolderTask"
.end annotation


# instance fields
.field private mItemPosition:I

.field mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

.field private mSmoothScroll:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "itemPosition"    # I

    .line 153
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;-><init>()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mSmoothScroll:Z

    .line 154
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->setItemPosition(I)V

    .line 155
    return-void
.end method


# virtual methods
.method public getItemPosition()I
    .locals 1

    .line 170
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    return v0
.end method

.method public getItemTask()Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;
    .locals 1

    .line 195
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    return-object v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mSmoothScroll:Z

    return v0
.end method

.method public run(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 208
    instance-of v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v0, :cond_2

    .line 209
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v0

    .line 210
    .local v0, "gridView":Landroid/support/v17/leanback/widget/HorizontalGridView;
    const/4 v1, 0x0

    .line 211
    .local v1, "task":Landroid/support/v17/leanback/widget/ViewHolderTask;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    if-eqz v2, :cond_0

    .line 212
    new-instance v2, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;)V

    move-object v1, v2

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->isSmoothScroll()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    iget v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setSelectedPositionSmooth(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    goto :goto_0

    .line 224
    :cond_1
    iget v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    .line 227
    .end local v0    # "gridView":Landroid/support/v17/leanback/widget/HorizontalGridView;
    .end local v1    # "task":Landroid/support/v17/leanback/widget/ViewHolderTask;
    :cond_2
    :goto_0
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0
    .param p1, "itemPosition"    # I

    .line 162
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    .line 163
    return-void
.end method

.method public setItemTask(Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 0
    .param p1, "itemTask"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    .line 203
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    .line 204
    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 0
    .param p1, "smoothScroll"    # Z

    .line 179
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mSmoothScroll:Z

    .line 180
    return-void
.end method
