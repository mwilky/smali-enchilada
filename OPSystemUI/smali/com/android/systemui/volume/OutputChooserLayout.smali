.class public Lcom/android/systemui/volume/OutputChooserLayout;
.super Landroid/widget/LinearLayout;
.source "OutputChooserLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/OutputChooserLayout$Callback;,
        Lcom/android/systemui/volume/OutputChooserLayout$Item;,
        Lcom/android/systemui/volume/OutputChooserLayout$H;,
        Lcom/android/systemui/volume/OutputChooserLayout$Adapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAdapter:Lcom/android/systemui/volume/OutputChooserLayout$Adapter;

.field private mCallback:Lcom/android/systemui/volume/OutputChooserLayout$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private final mHandler:Lcom/android/systemui/volume/OutputChooserLayout$H;

.field private mItemList:Lcom/android/systemui/qs/AutoSizingList;

.field private mItems:[Lcom/android/systemui/volume/OutputChooserLayout$Item;

.field private mItemsVisible:Z

.field private mTag:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "OutputChooserLayout"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/OutputChooserLayout;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/volume/OutputChooserLayout$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OutputChooserLayout$H;-><init>(Lcom/android/systemui/volume/OutputChooserLayout;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mHandler:Lcom/android/systemui/volume/OutputChooserLayout$H;

    new-instance v0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;-><init>(Lcom/android/systemui/volume/OutputChooserLayout;Lcom/android/systemui/volume/OutputChooserLayout$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mAdapter:Lcom/android/systemui/volume/OutputChooserLayout$Adapter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemsVisible:Z

    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mContext:Landroid/content/Context;

    const-string v0, "OutputChooserLayout"

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/OutputChooserLayout;)[Lcom/android/systemui/volume/OutputChooserLayout$Item;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItems:[Lcom/android/systemui/volume/OutputChooserLayout$Item;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/OutputChooserLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/OutputChooserLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemsVisible:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/OutputChooserLayout;)Lcom/android/systemui/volume/OutputChooserLayout$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mCallback:Lcom/android/systemui/volume/OutputChooserLayout$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/OutputChooserLayout;[Lcom/android/systemui/volume/OutputChooserLayout$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OutputChooserLayout;->handleSetItems([Lcom/android/systemui/volume/OutputChooserLayout$Item;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/OutputChooserLayout;Lcom/android/systemui/volume/OutputChooserLayout$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OutputChooserLayout;->handleSetCallback(Lcom/android/systemui/volume/OutputChooserLayout$Callback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/OutputChooserLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OutputChooserLayout;->handleSetItemsVisible(Z)V

    return-void
.end method

.method private handleSetCallback(Lcom/android/systemui/volume/OutputChooserLayout$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mCallback:Lcom/android/systemui/volume/OutputChooserLayout$Callback;

    return-void
.end method

.method private handleSetItems([Lcom/android/systemui/volume/OutputChooserLayout$Item;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmpty:Landroid/view/View;

    const/16 v3, 0x8

    if-nez v1, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    if-nez v1, :cond_2

    move v0, v3

    nop

    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/AutoSizingList;->setVisibility(I)V

    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItems:[Lcom/android/systemui/volume/OutputChooserLayout$Item;

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mAdapter:Lcom/android/systemui/volume/OutputChooserLayout$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleSetItemsVisible(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemsVisible:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v2}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemsVisible:Z

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-boolean v0, Lcom/android/systemui/volume/OutputChooserLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mTag:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f070534

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0127

    const v4, 0x7f070542

    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v3, 0x1020010

    const v4, 0x7f070543

    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v3, 0x1020016

    const v4, 0x7f070538

    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/volume/OutputChooserLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mCallback:Lcom/android/systemui/volume/OutputChooserLayout$Callback;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/AutoSizingList;

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoSizingList;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mAdapter:Lcom/android/systemui/volume/OutputChooserLayout$Adapter;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/AutoSizingList;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmpty:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmpty:Landroid/view/View;

    const v1, 0x7f0a0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmptyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmpty:Landroid/view/View;

    const v1, 0x7f0a0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmptyIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0402

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/OutputChooserLayout$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mHandler:Lcom/android/systemui/volume/OutputChooserLayout$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mHandler:Lcom/android/systemui/volume/OutputChooserLayout$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/OutputChooserLayout$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEmptyIconColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setEmptyState(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEmptyTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setItems([Lcom/android/systemui/volume/OutputChooserLayout$Item;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mHandler:Lcom/android/systemui/volume/OutputChooserLayout$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mHandler:Lcom/android/systemui/volume/OutputChooserLayout$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/OutputChooserLayout$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
