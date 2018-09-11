.class Landroid/support/v17/leanback/app/BrowseSupportFragment$11;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseSupportFragment;

    .line 1497
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderSelected(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;
    .param p2, "row"    # Landroid/support/v17/leanback/widget/Row;

    .line 1500
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getSelectedPosition()I

    move-result v0

    .line 1502
    .local v0, "position":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->onRowSelected(I)V

    .line 1503
    return-void
.end method
