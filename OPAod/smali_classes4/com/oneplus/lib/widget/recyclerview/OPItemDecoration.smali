.class public Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
.source "OPItemDecoration.java"


# instance fields
.field protected mSpace:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;->mSpace:I

    return-void
.end method


# virtual methods
.method public getSpace()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;->mSpace:I

    return v0
.end method

.method public setSpace(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;->mSpace:I

    return-void
.end method
