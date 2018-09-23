.class public Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
.super Landroid/support/v17/leanback/widget/ObjectAdapter;
.source "ArrayObjectAdapter.java"


# static fields
.field private static final DEBUG:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "ArrayObjectAdapter"


# instance fields
.field private final mItems:Ljava/util/List;

.field mListUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

.field private final mOldItems:Ljava/util/List;

.field private mUnmodifiableItems:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public move(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyArrayItemRangeChanged(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeRemoved(II)V

    :cond_0
    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public removeItems(II)I
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    nop

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeRemoved(II)V

    return v0
.end method

.method public replace(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public setItems(Ljava/util/List;Landroid/support/v17/leanback/widget/DiffCallback;)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter$1;-><init>(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/util/List;Landroid/support/v17/leanback/widget/DiffCallback;)V

    invoke-static {v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mListUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter$2;-><init>(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mListUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mListUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public unmodifiableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mUnmodifiableItems:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mUnmodifiableItems:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->mUnmodifiableItems:Ljava/util/List;

    return-object v0
.end method
