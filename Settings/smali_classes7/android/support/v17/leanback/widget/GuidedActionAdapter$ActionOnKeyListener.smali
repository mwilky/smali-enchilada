.class Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;
.super Ljava/lang/Object;
.source "GuidedActionAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionOnKeyListener"
.end annotation


# instance fields
.field private mKeyPressed:Z

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x17

    if-eq p2, v2, :cond_1

    const/16 v2, 0x42

    if-eq p2, v2, :cond_1

    const/16 v2, 0xa0

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/GuidedAction;->infoOnly()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    if-eqz v4, :cond_3

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    invoke-virtual {v0, v2, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    if-nez v0, :cond_3

    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    invoke-virtual {v0, v2, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    return v5

    :cond_5
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
