.class Landroid/support/v17/leanback/app/BrowseFragment$11;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;


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

    .line 1519
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderSelected(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;
    .param p2, "row"    # Landroid/support/v17/leanback/widget/Row;

    .line 1522
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getSelectedPosition()I

    move-result v0

    .line 1524
    .local v0, "position":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$11;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->onRowSelected(I)V

    .line 1525
    return-void
.end method
