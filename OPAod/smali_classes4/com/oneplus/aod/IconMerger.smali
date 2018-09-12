.class public Lcom/oneplus/aod/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IconMerger"


# instance fields
.field private mIconHPadding:I

.field private mIconSize:I

.field private mMoreView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/oneplus/aod/IconMerger;->reloadDimens()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/IconMerger;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/IconMerger;

    .line 26
    iget-object v0, p0, Lcom/oneplus/aod/IconMerger;->mMoreView:Landroid/view/View;

    return-object v0
.end method

.method private checkOverflow(I)V
    .locals 6
    .param p1, "width"    # I

    .line 78
    iget-object v0, p0, Lcom/oneplus/aod/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/IconMerger;->getChildCount()I

    move-result v0

    .line 81
    .local v0, "N":I
    const/4 v1, 0x0

    .line 82
    .local v1, "visibleChildren":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "visibleChildren":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 83
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 82
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v2

    .line 86
    .local v1, "overflowShown":Z
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/aod/IconMerger;->getFullIconWidth()I

    move-result v5

    mul-int/2addr v5, v3

    if-le v5, p1, :cond_4

    move v2, v4

    nop

    .line 87
    .local v2, "moreRequired":Z
    :cond_4
    if-eq v2, v1, :cond_5

    .line 88
    new-instance v4, Lcom/oneplus/aod/IconMerger$1;

    invoke-direct {v4, p0, v2}, Lcom/oneplus/aod/IconMerger$1;-><init>(Lcom/oneplus/aod/IconMerger;Z)V

    invoke-virtual {p0, v4}, Lcom/oneplus/aod/IconMerger;->post(Ljava/lang/Runnable;)Z

    .line 95
    :cond_5
    return-void
.end method

.method private getFullIconWidth()I
    .locals 2

    .line 60
    iget v0, p0, Lcom/oneplus/aod/IconMerger;->mIconSize:I

    iget v1, p0, Lcom/oneplus/aod/IconMerger;->mIconHPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method private reloadDimens()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/oneplus/aod/IconMerger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f060234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/IconMerger;->mIconSize:I

    .line 46
    const v1, 0x7f060232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/IconMerger;->mIconHPadding:I

    .line 47
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 51
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52
    invoke-direct {p0}, Lcom/oneplus/aod/IconMerger;->reloadDimens()V

    .line 53
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 73
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 74
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/oneplus/aod/IconMerger;->checkOverflow(I)V

    .line 75
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 69
    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 56
    iput-object p1, p0, Lcom/oneplus/aod/IconMerger;->mMoreView:Landroid/view/View;

    .line 57
    return-void
.end method
