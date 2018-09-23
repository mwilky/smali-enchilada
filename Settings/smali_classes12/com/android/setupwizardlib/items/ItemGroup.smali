.class public Lcom/android/setupwizardlib/items/ItemGroup;
.super Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.source "ItemGroup.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemGroup"


# instance fields
.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/setupwizardlib/items/ItemHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mDirty:Z

.field private mHierarchyStart:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    return-void
.end method

.method private static binarySearch(Landroid/util/SparseIntArray;I)I
    .locals 6

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-gt v1, v2, :cond_2

    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-ge v4, p1, :cond_0

    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_0
    if-le v4, p1, :cond_1

    add-int/lit8 v2, v3, -0x1

    :goto_1
    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    return v5

    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    return v3
.end method

.method private getChildPosition(I)I
    .locals 5

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    move v1, p1

    :goto_0
    if-gez v3, :cond_0

    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-gez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->getCount()I

    move-result v3

    :cond_1
    return v3

    :cond_2
    return v0
.end method

.method private getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(I)I

    move-result v0

    return v0
.end method

.method private getItemIndex(I)I
    .locals 3

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->binarySearch(Landroid/util/SparseIntArray;I)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot have item start index < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private updateDataIfNeeded()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    iget-object v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v2}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    iget v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-interface {v2}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    invoke-interface {p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeInserted(II)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v2, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->unregisterObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    iget-object v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;
    .locals 3

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v1, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    iget v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    return v0
.end method

.method public getItemAt(I)Lcom/android/setupwizardlib/items/IItem;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getItemIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/ItemHierarchy;

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v3

    return-object v3
.end method

.method public onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyChanged()V

    return-void
.end method

.method public onItemRangeChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int v1, v0, p2

    invoke-virtual {p0, v1, p3}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeChanged(II)V

    goto :goto_0

    :cond_0
    const-string v1, "ItemGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected child change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onItemRangeInserted(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int v1, v0, p2

    invoke-virtual {p0, v1, p3}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeInserted(II)V

    goto :goto_0

    :cond_0
    const-string v1, "ItemGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected child insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onItemRangeMoved(Lcom/android/setupwizardlib/items/ItemHierarchy;III)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int v1, v0, p2

    add-int v2, v0, p3

    invoke-virtual {p0, v1, v2, p4}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeMoved(III)V

    goto :goto_0

    :cond_0
    const-string v1, "ItemGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected child move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onItemRangeRemoved(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int v1, v0, p2

    invoke-virtual {p0, v1, p3}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeRemoved(II)V

    goto :goto_0

    :cond_0
    const-string v1, "ItemGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected child remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeChild(Lcom/android/setupwizardlib/items/ItemHierarchy;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(I)I

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-interface {p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->unregisterObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    if-lez v3, :cond_0

    invoke-virtual {p0, v1, v3}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeRemoved(II)V

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method
