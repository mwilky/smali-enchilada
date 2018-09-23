.class Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;,
        Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/Pools$Pool<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;Z)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;-><init>(Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    return-void
.end method

.method private applyAdd(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyMove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyRemove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 10

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v1, 0x0

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    const/4 v3, -0x1

    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v2, :cond_5

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v8, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, v6, :cond_1

    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    const/4 v7, 0x1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    const/4 v7, 0x1

    :cond_3
    const/4 v3, 0x1

    :goto_2
    if-eqz v7, :cond_4

    sub-int/2addr v4, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/2addr v4, v6

    goto :goto_0

    :cond_5
    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_6

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_6
    if-nez v3, :cond_7

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_4

    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    :goto_4
    return-void
.end method

.method private applyUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 9

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v1, 0x0

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    const/4 v3, -0x1

    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v2, :cond_4

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, v7, :cond_1

    iget-object v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    const/4 v1, 0x0

    move v0, v4

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    iget-object v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    const/4 v1, 0x0

    move v0, v4

    :cond_3
    const/4 v3, 0x1

    :goto_2
    add-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_5

    iget-object v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_5
    if-nez v3, :cond_6

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    :goto_3
    return-void
.end method

.method private canFindInPreLayout(I)Z
    .locals 8

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v4

    if-ne v4, p1, :cond_2

    return v6

    :cond_0
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-nez v4, :cond_2

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    :goto_1
    if-ge v5, v4, :cond_2

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v7

    if-ne v7, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 12

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "op should be remove or update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    nop

    :goto_0
    nop

    const/4 v4, 0x1

    move v5, v2

    move v2, v0

    move v0, v4

    :goto_1
    iget v6, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v0, v6, :cond_4

    iget v6, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v7, v3, v0

    add-int/2addr v6, v7

    iget v7, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v7

    const/4 v8, 0x0

    iget v9, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    add-int/lit8 v9, v2, 0x1

    if-ne v7, v9, :cond_0

    move v10, v4

    nop

    :cond_0
    move v8, v10

    goto :goto_2

    :pswitch_3
    if-ne v7, v2, :cond_1

    move v10, v4

    nop

    :cond_1
    move v8, v10

    :goto_2
    if-eqz v8, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget v9, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    iget-object v10, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v9, v2, v1, v10}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v9

    invoke-virtual {p0, v9, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V

    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget v10, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    add-int/2addr v5, v1

    :cond_3
    move v2, v7

    const/4 v1, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    if-lez v1, :cond_5

    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v4, v2, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ltz v1, :cond_e

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v5, v2, :cond_9

    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v5, :cond_0

    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_0
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v5, :cond_6

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v6, :cond_3

    if-nez p2, :cond_1

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    :cond_1
    if-ne p2, v3, :cond_2

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-nez p2, :cond_4

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    :cond_4
    if-ne p2, v3, :cond_5

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v6, :cond_8

    if-nez p2, :cond_7

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    :cond_7
    if-ne p2, v3, :cond_8

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    :cond_8
    :goto_4
    goto :goto_5

    :cond_9
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_b

    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-nez v2, :cond_a

    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_5

    :cond_a
    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v3, :cond_d

    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_5

    :cond_b
    if-nez p2, :cond_c

    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v3

    iput v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_5

    :cond_c
    if-ne p2, v3, :cond_d

    iget v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    iput v2, v4, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    :cond_d
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_6
    if-ltz v1, :cond_12

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v2, :cond_10

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v4, v5, :cond_f

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v4, :cond_11

    :cond_f
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_7

    :cond_10
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v4, :cond_11

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    :cond_11
    :goto_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_12
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_4

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_0

    const/4 v4, -0x1

    return v4

    :cond_0
    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    goto :goto_1

    :pswitch_1
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_4

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_2

    iget p1, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_2
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_4

    add-int/lit8 p1, p1, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method consumePostponedUpdates()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-interface {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumePostponedUpdates()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v6, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    nop

    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchFirstPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, p1

    move p1, p2

    :goto_0
    if-ge p1, v0, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v1, :cond_0

    iget v1, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, v1, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v1, :cond_5

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_3

    const/4 v3, -0x1

    return v3

    :cond_3
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_4
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-nez v3, :cond_5

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v3

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method hasPendingUpdates()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    if-nez v0, :cond_0

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iput p1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iput p3, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iput-object p4, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method onItemRangeInserted(II)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method onItemRangeMoved(III)Z
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onItemRangeRemoved(II)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method preProcess()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->reorderOps(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyMove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyRemove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyAdd(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    nop

    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method reset()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void
.end method
