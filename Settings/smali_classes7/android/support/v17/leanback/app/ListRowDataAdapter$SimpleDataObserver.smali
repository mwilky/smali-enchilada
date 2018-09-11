.class Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "ListRowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/ListRowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/ListRowDataAdapter;)V
    .locals 0

    .line 99
    iput-object p1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    .line 100
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 146
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->initialize()V

    .line 147
    const/4 v0, -0x1

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0, v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    .line 148
    return-void
.end method

.method protected onEventFired(III)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 151
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->doNotify(III)V

    .line 152
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 104
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v0, v0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    if-gt p1, v0, :cond_0

    .line 105
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v1, v1, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 106
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 105
    invoke-virtual {p0, v0, p1, v1}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    .line 108
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 112
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v0, v0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    const/4 v1, 0x4

    if-gt p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v2, v0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    add-int/2addr v2, p2

    iput v2, v0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 114
    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    .line 115
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v0, v0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 119
    .local v0, "lastVisibleRowIndex":I
    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->initialize()V

    .line 120
    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v2, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    if-le v2, v0, :cond_1

    .line 121
    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v2, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    sub-int/2addr v2, v0

    .line 122
    .local v2, "totalItems":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v3, v2}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    .line 124
    .end local v2    # "totalItems":I
    :cond_1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 128
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v1, v1, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    const/16 v2, 0x8

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v1, v0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 130
    invoke-virtual {p0, v2, p1, p2}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    .line 131
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v0, v0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 135
    .local v0, "lastVisibleRowIndex":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->initialize()V

    .line 136
    iget-object v1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v1, v1, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    sub-int v1, v0, v1

    .line 137
    .local v1, "totalItems":I
    if-lez v1, :cond_1

    .line 138
    iget-object v3, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v3, v3, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    add-int/lit8 v3, v3, 0x1

    .line 139
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 138
    invoke-virtual {p0, v2, v3, v1}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    .line 142
    :cond_1
    return-void
.end method
