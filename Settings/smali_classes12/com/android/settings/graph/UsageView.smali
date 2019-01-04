.class public Lcom/android/settings/graph/UsageView;
.super Landroid/widget/FrameLayout;
.source "UsageView.java"


# instance fields
.field private final mBottomLabels:[Landroid/widget/TextView;

.field private final mLabels:[Landroid/widget/TextView;

.field private final mUsageGraph:Lcom/android/settings/graph/UsageGraph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02cd

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a05bc

    invoke-virtual {p0, v0}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/graph/UsageGraph;

    iput-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/TextView;

    const v2, 0x7f0a02c3

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0a02c8

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x7f0a02cb

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    new-array v1, v5, [Landroid/widget/TextView;

    const v2, 0x7f0a02ca

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v3

    const v2, 0x7f0a02c4

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    sget-object v1, Lcom/android/settingslib/R$styleable;->UsageView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v5, v2

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v5, v2

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v2, v6

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const v2, 0x800005

    if-ne v0, v2, :cond_4

    const v5, 0x7f0a021b

    invoke-virtual {p0, v5}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0a02c6

    invoke-virtual {p0, v6}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v2, 0x7f0a00a5

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v7, 0x7f0a00a6

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    const v2, 0x800003

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported gravity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/graph/UsageGraph;->setAccentColor(I)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setWeight(IF)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->addPath(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public addProjectedPath(Landroid/util/SparseIntArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->addProjectedPath(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public clearPaths()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0}, Lcom/android/settings/graph/UsageGraph;->clearPaths()V

    return-void
.end method

.method public configureGraph(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/graph/UsageGraph;->setMax(II)V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->setAccentColor(I)V

    return-void
.end method

.method public setBottomLabels([Ljava/lang/CharSequence;)V
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerColors(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/graph/UsageGraph;->setDividerColors(II)V

    return-void
.end method

.method public setDividerLoc(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->setDividerLoc(I)V

    return-void
.end method

.method public setSideLabelWeights(FF)V
    .locals 1

    const v0, 0x7f0a0504

    invoke-direct {p0, v0, p1}, Lcom/android/settings/graph/UsageView;->setWeight(IF)V

    const v0, 0x7f0a0505

    invoke-direct {p0, v0, p2}, Lcom/android/settings/graph/UsageView;->setWeight(IF)V

    return-void
.end method

.method public setSideLabels([Ljava/lang/CharSequence;)V
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
