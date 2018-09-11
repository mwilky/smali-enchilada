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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    .line 46
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwAbstractItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 47
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwAbstractItem_android_id:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    .line 48
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    return v0
.end method

.method public getViewId()I
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->getId()I

    move-result v0

    return v0
.end method

.method public notifyChanged()V
    .locals 2

    .line 77
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

    .line 78
    .local v1, "observer":Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
    invoke-interface {v1, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 79
    .end local v1    # "observer":Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "itemCount"    # I

    .line 86
    if-gez p1, :cond_0

    .line 87
    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeChanged: Invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 90
    :cond_0
    if-gez p2, :cond_1

    .line 91
    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeChanged: Invalid itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 95
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

    .line 96
    .local v1, "observer":Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
    invoke-interface {v1, p0, p1, p2}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onItemRangeChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V

    .line 97
    .end local v1    # "observer":Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
    goto :goto_0

    .line 98
    :cond_2
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "itemCount"    # I

    .line 104
    if-gez p1, :cond_0

    .line 105
    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeInserted: Invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 108
    :cond_0
    if-gez p2, :cond_1

    .line 109
    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeInserted: Invalid itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
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

    .line 114
    .local v1, "observer":Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
    invoke-interface {v1, p0, p1, p2}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onItemRangeInserted(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V

    .line 115
    .end local v1    # "observer":Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
    goto :goto_0

    .line 116
    :cond_2
    return-void
.end method

.method public notifyItemRangeMoved(III)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 122
    if-gez p1, :cond_0

    .line 123
    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeMoved: Invalid fromPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 126
    :cond_0
    if-gez p2, :cond_1

    .line 127
    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeMoved: Invalid toPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 130
    :cond_1
    if-gez p3, :cond_2

    .line 131
    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeMoved: Invalid itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
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

    .line 136
    .local v1, "observer":Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onItemRangeMoved(Lcom/android/setupwizardlib/items/ItemHierarchy;III)V

    .line 137
    .end local v1    # "observer":Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
    goto :goto_0

    .line 138
    :cond_3
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "itemCount"    # I

    .line 144
    if-gez p1, :cond_0

    .line 145
    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeInserted: Invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 148
    :cond_0
    if-gez p2, :cond_1

    .line 149
    const-string v0, "AbstractItemHierarchy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemRangeInserted: Invalid itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 153
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

    .line 154
    .local v1, "observer":Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
    invoke-interface {v1, p0, p1, p2}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onItemRangeRemoved(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V

    .line 155
    .end local v1    # "observer":Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
    goto :goto_0

    .line 156
    :cond_2
    return-void
.end method

.method public registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;

    .line 65
    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 52
    iput p1, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    .line 53
    return-void
.end method

.method public unregisterObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;

    .line 70
    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method
