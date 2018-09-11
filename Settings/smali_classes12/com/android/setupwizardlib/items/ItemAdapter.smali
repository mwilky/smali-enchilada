.class public Lcom/android/setupwizardlib/items/ItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ItemAdapter.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;
    }
.end annotation


# instance fields
.field private final mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

.field private mViewTypes:Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 2
    .param p1, "hierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;-><init>(Lcom/android/setupwizardlib/items/ItemAdapter$1;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mViewTypes:Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;

    .line 36
    iput-object p1, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 37
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    .line 38
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemAdapter;->refreshViewTypes()V

    .line 39
    return-void
.end method

.method private refreshViewTypes()V
    .locals 4

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/items/ItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v1

    .line 71
    .local v1, "item":Lcom/android/setupwizardlib/items/IItem;
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mViewTypes:Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;

    invoke-interface {v1}, Lcom/android/setupwizardlib/items/IItem;->getLayoutResource()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->add(I)I

    .line 69
    .end local v1    # "item":Lcom/android/setupwizardlib/items/IItem;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;
    .locals 1
    .param p1, "id"    # I

    .line 119
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/setupwizardlib/items/IItem;
    .locals 1
    .param p1, "position"    # I

    .line 48
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    .line 59
    .local v0, "item":Lcom/android/setupwizardlib/items/IItem;
    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->getLayoutResource()I

    move-result v1

    .line 60
    .local v1, "layoutRes":I
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mViewTypes:Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;

    invoke-virtual {v2, v1}, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->get(I)I

    move-result v2

    return v2
.end method

.method public getRootItemHierarchy()Lcom/android/setupwizardlib/items/ItemHierarchy;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    .line 78
    .local v0, "item":Lcom/android/setupwizardlib/items/IItem;
    if-nez p2, :cond_0

    .line 79
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 80
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->getLayoutResource()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-interface {v0, p2}, Lcom/android/setupwizardlib/items/IItem;->onBindView(Landroid/view/View;)V

    .line 83
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mViewTypes:Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 0
    .param p1, "hierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 88
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemAdapter;->refreshViewTypes()V

    .line 89
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method public onItemRangeChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 95
    return-void
.end method

.method public onItemRangeInserted(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 100
    return-void
.end method

.method public onItemRangeMoved(Lcom/android/setupwizardlib/items/ItemHierarchy;III)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "fromPosition"    # I
    .param p3, "toPosition"    # I
    .param p4, "itemCount"    # I

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 106
    return-void
.end method

.method public onItemRangeRemoved(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 111
    return-void
.end method
