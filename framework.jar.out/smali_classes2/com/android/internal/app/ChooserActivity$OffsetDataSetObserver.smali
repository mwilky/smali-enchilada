.class Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffsetDataSetObserver"
.end annotation


# instance fields
.field private mCachedView:Landroid/view/View;

.field private mCachedViewType:I

.field private final mListView:Landroid/widget/AbsListView;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AbsListView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mListView:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getItemViewType(I)I

    move-result v4

    iget v5, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iget v6, v6, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    add-int/2addr v1, v6

    if-ltz v4, :cond_2

    iput v4, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    return-void
.end method
