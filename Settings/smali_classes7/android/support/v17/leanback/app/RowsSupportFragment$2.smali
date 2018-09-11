.class Landroid/support/v17/leanback/app/RowsSupportFragment$2;
.super Ljava/lang/Object;
.source "RowsSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ViewHolderTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/RowsSupportFragment;->setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

.field final synthetic val$rowHolderTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/RowsSupportFragment;Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 517
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$2;->val$rowHolderTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "rvh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 520
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/support/v17/leanback/app/RowsSupportFragment$2$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment$2$1;-><init>(Landroid/support/v17/leanback/app/RowsSupportFragment$2;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 527
    return-void
.end method
