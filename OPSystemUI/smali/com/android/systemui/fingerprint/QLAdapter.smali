.class public Lcom/android/systemui/fingerprint/QLAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QLAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;,
        Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;,
        Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mIconPadding:I

.field private final mIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mAppMap:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconSize:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconPadding:I

    return-void
.end method


# virtual methods
.method public getIconPadding()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconPadding:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/fingerprint/QLAdapter;->onBindViewHolder(Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;

    invoke-virtual {p1}, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/fingerprint/QLAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08024d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v1, 0x3f2b851f    # 0.67f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconPadding:I

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconPadding:I

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;

    invoke-direct {v2, v0}, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method public onQLExit()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mAppMap:Ljava/util/ArrayList;

    return-void
.end method
