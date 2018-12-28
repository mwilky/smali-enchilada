.class public Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPApplicationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppType:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    iput-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGameAPP(I)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelected(I)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0145

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;)V

    move-object v0, v2

    const v2, 0x7f0a03ff

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a05a9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v2, 0x7f0a009c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    const v2, 0x7f0a0353

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    const v2, 0x7f0a0533

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    const v2, 0x7f0a00a7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    const v2, 0x7f0a021f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const v2, 0x7f0a00fe

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;

    :goto_0
    const/4 v2, 0x0

    const v3, 0x7f120c16

    const/16 v4, 0x44

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-nez p1, :cond_3

    iget-object v7, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget v7, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppType:I

    if-ne v7, v4, :cond_2

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v4, 0x7f120c59

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v4, 0x7f120a4f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppType:I

    if-ne v7, v4, :cond_6

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v4}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->getSelected(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    return-object p2
.end method

.method public setAppType(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppType:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setGameAPP(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelected(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->notifyDataSetChanged()V

    return-void
.end method
