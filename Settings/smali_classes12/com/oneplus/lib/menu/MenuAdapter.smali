.class public Lcom/oneplus/lib/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# static fields
.field static final ITEM_LAYOUT:I

.field static final PADDING_BOTTOM:I

.field static final PADDING_TOP:I


# instance fields
.field mAdapterMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mOverflowOnly:Z

.field private mPaddingBottom:I

.field private mPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_abc_popup_menu_item_layout:I

    sput v0, Lcom/oneplus/lib/menu/MenuAdapter;->ITEM_LAYOUT:I

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_top1:I

    sput v0, Lcom/oneplus/lib/menu/MenuAdapter;->PADDING_TOP:I

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_bottom1:I

    sput v0, Lcom/oneplus/lib/menu/MenuAdapter;->PADDING_BOTTOM:I

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mExpandedIndex:I

    iput-boolean p3, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mOverflowOnly:Z

    iput-object p2, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mAdapterMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/lib/menu/MenuAdapter;->PADDING_BOTTOM:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mPaddingBottom:I

    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/lib/menu/MenuAdapter;->PADDING_TOP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mPaddingTop:I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuAdapter;->findExpandedIndex()V

    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mAdapterMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getExpandedItem()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mAdapterMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/MenuItemImpl;

    if-ne v4, v0, :cond_0

    iput v3, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getAdapterMenu()Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mAdapterMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mAdapterMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mAdapterMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getForceShowIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mForceShowIcon:Z

    return v0
.end method

.method public getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mAdapterMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mAdapterMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/oneplus/lib/menu/MenuAdapter;->ITEM_LAYOUT:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/oneplus/lib/menu/MenuView$ItemView;

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mForceShowIcon:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/menu/ListMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/menu/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/oneplus/lib/menu/MenuView$ItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuAdapter;->findExpandedIndex()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuAdapter;->mForceShowIcon:Z

    return-void
.end method
