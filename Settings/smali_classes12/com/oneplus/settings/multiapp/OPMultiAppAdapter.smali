.class public Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPMultiAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;
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
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/better/OPAppModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "position"    # I

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 76
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 77
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0181

    .line 78
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v3, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;)V

    move-object v0, v3

    .line 80
    const v3, 0x7f0a03d2

    .line 81
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    .line 82
    const v3, 0x7f0a056c

    .line 83
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    .line 84
    const v3, 0x7f0a023b

    .line 85
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    .line 86
    const v3, 0x7f0a032e

    .line 87
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f0a04f8

    .line 89
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    .line 90
    const v3, 0x7f0a00a2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    .line 91
    const v3, 0x7f0a0202

    .line 92
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    .line 93
    const v3, 0x7f0a0520

    .line 94
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;

    .line 99
    :goto_0
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    const v3, 0x7f120b8f

    const/4 v6, 0x1

    if-nez p1, :cond_2

    .line 102
    iget-object v7, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v7, 0x7f120b91

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 106
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 109
    :cond_1
    iget-object v5, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v8, p1, -0x1

    .line 113
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v7}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 114
    iget-object v5, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v5, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v7, p1, 0x1

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 118
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_4
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_5
    :goto_1
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setClickable(Z)V

    .line 132
    iget-object v3, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->getSelected(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    iget-object v2, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    .line 136
    :cond_6
    iget-object v2, v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 138
    :goto_2
    return-object p2
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

    .line 36
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/better/OPAppModel;>;"
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public setSelected(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    .line 45
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method
