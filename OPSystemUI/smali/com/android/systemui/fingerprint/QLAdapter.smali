.class public Lcom/android/systemui/fingerprint/QLAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "QLAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final ITEM_SIZE:I

.field private mContext:Landroid/content/Context;

.field private mDataSet:[Ljava/lang/String;

.field private mIconPadding:I

.field private mIconSize:I

.field private mViewIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataSet"    # [Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->ITEM_SIZE:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mViewIndex:I

    .line 27
    iput v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconSize:I

    .line 28
    iput v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconPadding:I

    .line 59
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mDataSet:[Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconSize:I

    .line 65
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconPadding:I

    .line 68
    return-void
.end method


# virtual methods
.method public getIconPadding()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconPadding:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 107
    const/4 v0, 0x6

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/fingerprint/QLAdapter;->onBindViewHolder(Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mDataSet:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 94
    .local v1, "v":Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "v":Landroid/widget/ImageView;
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mDataSet:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;->setIntent(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p1}, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/fingerprint/QLAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 76
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "v":Landroid/widget/ImageView;
    const v1, 0x7f080206

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget v2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 79
    .local v1, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget v2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconPadding:I

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 80
    iget v2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mIconPadding:I

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget v2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mViewIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 83
    iget v2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mViewIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/fingerprint/QLAdapter;->mViewIndex:I

    .line 85
    new-instance v2, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;

    invoke-direct {v2, v0}, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method
