.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field bottom:I

.field holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field left:I

.field right:I

.field top:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    iput p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->right:I

    iput p5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->bottom:I

    return-void
.end method
