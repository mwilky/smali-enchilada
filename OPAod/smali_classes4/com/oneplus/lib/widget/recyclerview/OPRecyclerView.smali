.class public Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.source "OPRecyclerView.java"


# instance fields
.field private final mContentPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->mContentPadding:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->mContentPadding:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->mContentPadding:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method public addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;->getSpace()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;->getSpace()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setPadding(IIII)V

    return-void
.end method
