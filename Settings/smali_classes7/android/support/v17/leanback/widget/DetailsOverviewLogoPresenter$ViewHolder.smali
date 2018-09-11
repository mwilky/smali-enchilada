.class public Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "DetailsOverviewLogoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field protected mParentPresenter:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

.field protected mParentViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

.field private mSizeFromDrawableIntrinsic:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 37
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getParentPresenter()Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;
    .locals 1

    .line 41
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mParentPresenter:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    return-object v0
.end method

.method public getParentViewHolder()Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    .locals 1

    .line 45
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mParentViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    return-object v0
.end method

.method public isSizeFromDrawableIntrinsic()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mSizeFromDrawableIntrinsic:Z

    return v0
.end method

.method public setSizeFromDrawableIntrinsic(Z)V
    .locals 0
    .param p1, "sizeFromDrawableIntrinsic"    # Z

    .line 73
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mSizeFromDrawableIntrinsic:Z

    .line 74
    return-void
.end method
