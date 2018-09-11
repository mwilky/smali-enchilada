.class Landroid/support/v17/leanback/app/BrowseFragment$5;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseFragment;

    .line 1137
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 1162
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->isInHeadersTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1166
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1167
    .local v0, "childId":I
    sget v1, Landroid/support/v17/leanback/R$id;->browse_container_dock:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_2

    .line 1168
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    goto :goto_0

    .line 1169
    :cond_2
    sget v1, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v1, :cond_3

    .line 1170
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    .line 1172
    :cond_3
    :goto_0
    return-void

    .line 1165
    .end local v0    # "childId":I
    :cond_4
    :goto_1
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1141
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1142
    return v1

    .line 1145
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1147
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    return v1

    .line 1152
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 1153
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    return v1

    .line 1156
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    .line 1157
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
