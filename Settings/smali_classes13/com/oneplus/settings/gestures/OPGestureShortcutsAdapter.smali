.class public Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPGestureShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;
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
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureSummary:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    iput-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureSummary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/gestures/OPGestureAppModel;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->getItem(I)Lcom/oneplus/settings/gestures/OPGestureAppModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d017e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;)V

    move-object v0, v2

    const v2, 0x7f0a03ff

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a05a9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v2, 0x7f0a025c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    const v2, 0x7f0a0353

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    const v2, 0x7f0a00a7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    const v2, 0x7f0a021f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const v2, 0x7f0a0462

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;

    :goto_0
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x1

    const/16 v4, 0x8

    if-ne p1, v2, :cond_1

    iget-object v5, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v6, 0x7f120b5e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v5, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    iget-object v5, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v5, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureSummary:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_3
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureSummary:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method
