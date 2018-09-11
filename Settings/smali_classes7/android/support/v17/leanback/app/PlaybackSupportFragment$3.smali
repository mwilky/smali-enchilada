.class Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;
.super Ljava/lang/Object;
.source "PlaybackSupportFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    .line 225
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 237
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 242
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget v0, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgAlpha:I

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->access$100(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Z)V

    .line 244
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;->onFadeInComplete()V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 250
    .local v0, "verticalView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v1

    if-nez v1, :cond_1

    .line 251
    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 253
    .local v1, "vh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 255
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 254
    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 258
    .end local v1    # "vh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;->onFadeOutComplete()V

    .line 262
    .end local v0    # "verticalView":Landroid/support/v17/leanback/widget/VerticalGridView;
    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 233
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 228
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->access$100(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Z)V

    .line 229
    return-void
.end method
