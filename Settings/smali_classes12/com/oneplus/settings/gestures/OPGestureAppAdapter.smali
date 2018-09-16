.class public Lcom/oneplus/settings/gestures/OPGestureAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPGestureAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_ITEM:I = 0x1

.field private static final VIEW_TYPE_TITLE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePackageName:Ljava/lang/String;

.field private mGestureSummary:Ljava/lang/String;

.field private mGestureUid:I

.field private mHasShortCut:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mSelectedPosition:I

.field private mShortcutName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "gestureSummary"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "position"    # I

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 86
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    if-nez p2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0172

    const/4 v4, 0x0

    .line 88
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    new-instance v2, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/gestures/OPGestureAppAdapter;)V

    move-object v0, v2

    .line 90
    const v2, 0x7f0a03d4

    .line 91
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    .line 92
    const v2, 0x7f0a056e

    .line 93
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    .line 94
    const v2, 0x7f0a023b

    .line 95
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    .line 96
    const v2, 0x7f0a032e

    .line 97
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f0a04fa

    .line 99
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f0a00a2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    .line 101
    const v2, 0x7f0a0202

    .line 102
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    .line 103
    const v2, 0x7f0a0433

    .line 104
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;

    .line 109
    :goto_0
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    const/4 v2, 0x1

    const/4 v4, 0x6

    const/16 v5, 0x8

    if-ne p1, v2, :cond_1

    .line 111
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v7, 0x7f120b4e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 112
    :cond_1
    if-ne p1, v4, :cond_2

    .line 113
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v7, 0x7f120b4f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_1
    if-ge p1, v4, :cond_3

    .line 118
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 120
    :cond_3
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_2
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    if-eqz p1, :cond_5

    const/4 v6, 0x5

    if-ne p1, v6, :cond_4

    goto :goto_3

    .line 127
    :cond_4
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 125
    :cond_5
    :goto_3
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_4
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 130
    if-ge p1, v4, :cond_6

    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    if-lt p1, v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGesturePackageName:Ljava/lang/String;

    .line 131
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 132
    :cond_7
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 133
    iget-boolean v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mHasShortCut:Z

    if-eqz v2, :cond_8

    .line 134
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mShortcutName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 137
    :cond_8
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 141
    :cond_9
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 142
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_5
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/better/OPAppModel;>;"
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    .line 46
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "pacakgeName"    # Ljava/lang/String;
    .param p3, "pacakgeUid"    # I
    .param p4, "hasShortcut"    # Z
    .param p5, "shortCutName"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGesturePackageName:Ljava/lang/String;

    .line 57
    iput p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureUid:I

    .line 58
    iput-boolean p4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mHasShortCut:Z

    .line 59
    iput-object p5, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mShortcutName:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->notifyDataSetChanged()V

    .line 61
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 50
    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mSelectedPosition:I

    .line 51
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method
