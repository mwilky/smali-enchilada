.class Landroid/support/v17/leanback/app/ListRowDataAdapter;
.super Landroid/support/v17/leanback/widget/ObjectAdapter;
.source "ListRowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;,
        Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;
    }
.end annotation


# static fields
.field public static final ON_CHANGED:I = 0x10

.field public static final ON_ITEM_RANGE_CHANGED:I = 0x2

.field public static final ON_ITEM_RANGE_INSERTED:I = 0x4

.field public static final ON_ITEM_RANGE_REMOVED:I = 0x8


# instance fields
.field private final mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field final mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mLastVisibleRowIndex:I


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 29
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 30
    iput-object p1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 31
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->initialize()V

    .line 38
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->isImmediateNotifySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;-><init>(Landroid/support/v17/leanback/app/ListRowDataAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;-><init>(Landroid/support/v17/leanback/app/ListRowDataAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    .line 43
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->attach()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/app/ListRowDataAdapter;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/app/ListRowDataAdapter;

    .line 18
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->notifyChanged()V

    return-void
.end method


# virtual methods
.method attach()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->initialize()V

    .line 52
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 53
    return-void
.end method

.method detach()V
    .locals 2

    .line 47
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 48
    return-void
.end method

.method doNotify(III)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 79
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->notifyChanged()V

    .line 91
    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->notifyItemRangeRemoved(II)V

    .line 88
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->notifyItemRangeInserted(II)V

    .line 85
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->notifyItemRangeChanged(II)V

    .line 82
    nop

    .line 95
    :goto_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 75
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method initialize()V
    .locals 3

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 57
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 58
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 59
    iget-object v1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Row;

    .line 60
    .local v1, "item":Landroid/support/v17/leanback/widget/Row;
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iput v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 62
    goto :goto_1

    .line 64
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 65
    .end local v1    # "item":Landroid/support/v17/leanback/widget/Row;
    goto :goto_0

    .line 66
    :cond_1
    :goto_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
