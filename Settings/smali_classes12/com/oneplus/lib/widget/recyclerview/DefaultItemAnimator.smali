.class public Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ViewPropertyAnimatorListener;,
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$VpaListenerAdapter;,
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;,
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateMoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateChangeImpl(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateAddImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private animateAddImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 5

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateChangeImpl(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
    .locals 8

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_0
    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v3, :cond_1

    iget-object v1, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    nop

    :cond_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget v6, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;

    invoke-direct {v6, p0, p1, v5, v1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method private animateMoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 13

    move-object v6, p1

    iget-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v8, p4, p2

    sub-int v9, p5, p3

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    move-object v11, p0

    iget-object v0, v11, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;

    move-object v0, v4

    move-object v1, v11

    move-object v2, v6

    move v3, v8

    move-object v6, v4

    move-object v4, v7

    move-object v12, v7

    move-object v7, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILandroid/view/View;I)V

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateRemoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 4

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v1, p2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
    .locals 1

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    iput-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    iput-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public animateAdd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v11

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v12

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v13

    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    sub-int v1, p5, p3

    int-to-float v1, v1

    sub-float/2addr v1, v11

    float-to-int v8, v1

    sub-int v1, p6, p4

    int-to-float v1, v1

    sub-float/2addr v1, v12

    float-to-int v7, v1

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    if-eqz v10, :cond_0

    iget-object v1, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {v0, v10}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v1, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v8

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v6, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v5, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    const/4 v14, 0x0

    move-object v1, v5

    move-object v2, v9

    move-object v3, v10

    move/from16 v4, p3

    move-object v15, v5

    move/from16 v5, p4

    move-object/from16 v16, v6

    move/from16 v6, p5

    move/from16 v17, v7

    move/from16 v7, p6

    move/from16 v18, v8

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIIILcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;)V

    move-object v2, v15

    move-object/from16 v1, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
    .locals 16

    move-object/from16 v7, p1

    iget-object v8, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move/from16 v0, p2

    int-to-float v1, v0

    iget-object v2, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v9, v1

    move/from16 v0, p3

    int-to-float v1, v0

    iget-object v2, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v10, v1

    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    sub-int v11, p4, v9

    sub-int v12, p5, v10

    if-nez v11, :cond_0

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz v11, :cond_1

    neg-int v0, v11

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    if-eqz v12, :cond_2

    neg-int v0, v12

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    move-object/from16 v13, p0

    iget-object v6, v13, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v5, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    const/4 v14, 0x0

    move-object v0, v5

    move-object v1, v7

    move v2, v9

    move v3, v10

    move/from16 v4, p4

    move-object v7, v5

    move/from16 v5, p5

    move-object v15, v8

    move-object v8, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIIILcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public animateRemove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 8

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    iget-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v4, p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_8

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    iget-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_a

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "after animation is cancelled, item should not be in mMoveAnimations list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "after animation is cancelled, item should not be in mChangeAnimations list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "after animation is cancelled, item should not be in mAddAnimations list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "after animation is cancelled, item should not be in mRemoveAnimations list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endAnimations()V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    iget-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v5, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_3
    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :goto_4
    if-ltz v4, :cond_7

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    :goto_5
    if-ltz v6, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    iget-object v8, v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v9, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v10, v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_6
    if-ltz v2, :cond_a

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    :goto_7
    if-ltz v5, :cond_9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v7, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_8
    if-ltz v2, :cond_d

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    :goto_9
    if-ltz v4, :cond_c

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_d
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public runPendingAnimations()V
    .locals 15

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateRemoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v8, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    invoke-virtual {v8, v6, v9, v10}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$3;

    invoke-direct {v6, p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$3;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_7
    :goto_3
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    goto :goto_4

    :cond_8
    move-wide v9, v7

    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v11

    goto :goto_5

    :cond_9
    move-wide v11, v7

    :goto_5
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v7

    nop

    :cond_a
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    add-long/2addr v13, v9

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v6, v13, v14}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    nop

    :cond_b
    :goto_6
    return-void
.end method
