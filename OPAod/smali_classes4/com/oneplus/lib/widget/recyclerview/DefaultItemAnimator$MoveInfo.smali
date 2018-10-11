.class Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIIILcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
