.class Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;
.super Ljava/lang/Object;
.source "GuidedActionAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionOnFocusListener"
.end annotation


# instance fields
.field private mFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;

.field private mSelectedView:Landroid/view/View;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->mFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-eqz p2, :cond_1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->mSelectedView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->mFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->mFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;->onGuidedActionFocused(Landroid/support/v17/leanback/widget/GuidedAction;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->mSelectedView:Landroid/view/View;

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemPressedCancelled(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->mSelectedView:Landroid/view/View;

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemFocused(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    return-void
.end method

.method public setFocusListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->mFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;

    return-void
.end method

.method public unFocus()V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemFocused(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_0

    :cond_0
    const-string v1, "GuidedActionAdapter"

    const-string v2, "RecyclerView returned null view holder"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
