.class public abstract Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.super Ljava/lang/Object;
.source "AbstractItemHierarchy.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemHierarchy;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractItemHierarchy"


# instance fields
.field private mId:I

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwAbstractItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwAbstractItem_android_id:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    return v0
.end method

.method public getViewId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->getId()I

    move-result v0

    return v0
.end method

.method public notifyChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;

    invoke-interface {v1, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 3

    if-gez p1, :cond_0

    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeChanged: Invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p2, :cond_1

    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeChanged: Invalid itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onItemRangeChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 3

    if-gez p1, :cond_0

    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeInserted: Invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p2, :cond_1

    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeInserted: Invalid itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onItemRangeInserted(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifyItemRangeMoved(III)V
    .locals 3

    if-gez p1, :cond_0

    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeMoved: Invalid fromPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p2, :cond_1

    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeMoved: Invalid toPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-gez p3, :cond_2

    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeMoved: Invalid itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onItemRangeMoved(Lcom/android/setupwizardlib/items/ItemHierarchy;III)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 3

    if-gez p1, :cond_0

    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeInserted: Invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p2, :cond_1

    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeInserted: Invalid itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onItemRangeRemoved(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    return-void
.end method

.method public unregisterObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
