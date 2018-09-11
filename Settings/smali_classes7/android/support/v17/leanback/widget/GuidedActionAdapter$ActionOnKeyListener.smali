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

    .line 460
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    .line 461
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 468
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 471
    :cond_0
    const/4 v1, 0x0

    .line 472
    .local v1, "handled":Z
    const/16 v2, 0x17

    if-eq p2, v2, :cond_1

    const/16 v2, 0x42

    if-eq p2, v2, :cond_1

    const/16 v2, 0xa0

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 479
    :cond_1
    :pswitch_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 480
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 481
    .local v2, "avh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v3

    .line 483
    .local v3, "action":Landroid/support/v17/leanback/widget/GuidedAction;
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/GuidedAction;->infoOnly()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 491
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 513
    goto :goto_0

    .line 507
    :pswitch_1
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    if-eqz v4, :cond_3

    .line 508
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    .line 509
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    invoke-virtual {v0, v2, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_0

    .line 496
    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    if-nez v0, :cond_3

    .line 497
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    .line 498
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    invoke-virtual {v0, v2, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 519
    .end local v2    # "avh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .end local v3    # "action":Landroid/support/v17/leanback/widget/GuidedAction;
    :cond_3
    :goto_0
    return v1

    .line 484
    .restart local v2    # "avh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .restart local v3    # "action":Landroid/support/v17/leanback/widget/GuidedAction;
    :cond_4
    :goto_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 488
    return v5

    .line 469
    .end local v1    # "handled":Z
    .end local v2    # "avh":Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .end local v3    # "action":Landroid/support/v17/leanback/widget/GuidedAction;
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
