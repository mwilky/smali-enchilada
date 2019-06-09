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

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d017e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/gestures/OPGestureAppAdapter;)V

    move-object v0, v2

    const v2, 0x7f0a03ff

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a05aa

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v2, 0x7f0a025c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    const v2, 0x7f0a0352

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    const v2, 0x7f0a0533

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    const v2, 0x7f0a00a7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    const v2, 0x7f0a021f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const v2, 0x7f0a0462

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;

    :goto_0
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x1

    const/4 v4, 0x6

    const/16 v5, 0x8

    if-ne p1, v2, :cond_1

    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v7, 0x7f120b6d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v7, 0x7f120b6e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-ge p1, v4, :cond_3

    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_5

    const/4 v6, 0x5

    if-ne p1, v6, :cond_4

    goto :goto_3

    :cond_4
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

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

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_7
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-boolean v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mHasShortCut:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mShortcutName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

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

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGesturePackageName:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureUid:I

    iput-boolean p4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mHasShortCut:Z

    iput-object p5, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mShortcutName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->notifyDataSetChanged()V

    return-void
.end method
