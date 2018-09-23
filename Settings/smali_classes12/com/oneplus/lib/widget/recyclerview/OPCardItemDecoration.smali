.class public Lcom/oneplus/lib/widget/recyclerview/OPCardItemDecoration;
.super Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;
.source "OPCardItemDecoration.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->opcardview_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OPCardItemDecoration;->setSpace(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/OPCardItemDecoration;->mSpace:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/OPCardItemDecoration;->mSpace:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
