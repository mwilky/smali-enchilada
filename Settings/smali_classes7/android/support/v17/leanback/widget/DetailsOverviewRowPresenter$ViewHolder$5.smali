.class Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$5;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    .line 212
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$5;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 216
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 219
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$5;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->checkFirstAndLastPosition(Z)V

    .line 220
    return-void
.end method
