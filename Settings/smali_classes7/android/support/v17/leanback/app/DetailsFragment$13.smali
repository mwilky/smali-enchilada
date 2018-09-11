.class Landroid/support/v17/leanback/app/DetailsFragment$13;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsFragment;->setupDpadNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/DetailsFragment;

    .line 849
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 858
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 859
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_fragment_root:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 860
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    if-nez v0, :cond_2

    .line 861
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->slideInGridView()V

    .line 862
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    if-ne v0, v1, :cond_1

    .line 865
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->slideOutGridView()V

    .line 866
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    goto :goto_0

    .line 868
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    .line 871
    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 853
    const/4 v0, 0x0

    return v0
.end method
