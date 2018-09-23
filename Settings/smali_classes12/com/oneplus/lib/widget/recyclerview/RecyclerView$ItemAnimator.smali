.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;
    }
.end annotation


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J

.field private mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mAddDuration:J

    iput-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mRemoveDuration:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mMoveDuration:J

    iput-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mChangeDuration:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
.end method

.method public abstract animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
.end method

.method public abstract animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
.end method

.method public abstract animateRemove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
.end method

.method public final dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final dispatchAddStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onAddStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final dispatchChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;->onChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final dispatchChangeStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onChangeStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;->onMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final dispatchMoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onMoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;->onRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final dispatchRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public abstract endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return v0
.end method

.method public onAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onAddStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onChangeStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onMoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mAddDuration:J

    return-void
.end method

.method public setChangeDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-void
.end method

.method setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    return-void
.end method

.method public setMoveDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method
