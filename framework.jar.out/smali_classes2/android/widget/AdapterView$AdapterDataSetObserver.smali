.class Landroid/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Landroid/widget/AdapterView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AdapterView;

    .line 828
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .line 875
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 876
    return-void
.end method

.method public onChanged()V
    .locals 2

    .line 834
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 835
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget v1, v1, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 836
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 840
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget v0, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 842
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Landroid/widget/AdapterView;->access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    goto :goto_0

    .line 845
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 847
    :goto_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 848
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 849
    return-void
.end method

.method public onInvalidated()V
    .locals 5

    .line 853
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 855
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-static {v0}, Landroid/widget/AdapterView;->access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 862
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget v1, v1, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 863
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 864
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 865
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, v0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 866
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iput v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 867
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iput-wide v3, v0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 868
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iput-boolean v1, v0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 870
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 871
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 872
    return-void
.end method
