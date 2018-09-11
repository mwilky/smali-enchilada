.class Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;
.super Ljava/lang/Object;
.source "DetailsOverviewSharedElementHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->onBindToDrawable(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    .line 227
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 231
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 232
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    .line 238
    return-void
.end method
