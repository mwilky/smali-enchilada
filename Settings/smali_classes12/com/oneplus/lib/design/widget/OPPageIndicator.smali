.class public Lcom/oneplus/lib/design/widget/OPPageIndicator;
.super Landroid/view/ViewGroup;
.source "OPPageIndicator.java"


# static fields
.field private static final ANIMATION_DURATION:J = 0xfaL

.field private static final DEBUG:Z = false

.field private static final MINOR_ALPHA:F = 0.3f

.field private static final SINGLE_SCALE:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "OPPageIndicator"


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    .line 223
    new-instance v0, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;-><init>(Lcom/oneplus/lib/design/widget/OPPageIndicator;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    .line 40
    nop

    .line 41
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->op_qs_page_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    .line 42
    nop

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->op_qs_page_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    .line 44
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/lib/design/widget/OPPageIndicator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/OPPageIndicator;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/OPPageIndicator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/OPPageIndicator;

    .line 17
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/design/widget/OPPageIndicator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/OPPageIndicator;
    .param p1, "x1"    # I

    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setPosition(I)V

    return-void
.end method

.method private animate(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 115
    shr-int/lit8 v0, p1, 0x1

    .line 116
    .local v0, "fromIndex":I
    shr-int/lit8 v1, p2, 0x1

    .line 120
    .local v1, "toIndex":I
    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    .line 122
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 123
    .local v2, "fromTransition":Z
    :goto_0
    if-eqz v2, :cond_2

    if-le p1, p2, :cond_1

    :goto_1
    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    if-ge p1, p2, :cond_1

    goto :goto_1

    .line 124
    .local v5, "isAState":Z
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 125
    .local v6, "firstIndex":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 126
    .local v7, "secondIndex":I
    if-ne v7, v6, :cond_3

    .line 127
    add-int/lit8 v7, v7, 0x1

    .line 129
    :cond_3
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 130
    .local v8, "first":Landroid/widget/ImageView;
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 131
    .local v9, "second":Landroid/widget/ImageView;
    if-eqz v8, :cond_5

    if-nez v9, :cond_4

    goto :goto_3

    .line 136
    :cond_4
    invoke-virtual {v8}, Landroid/widget/ImageView;->getX()F

    move-result v10

    invoke-virtual {v9}, Landroid/widget/ImageView;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 138
    invoke-direct {p0, v2, v5, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getTransition(ZZZ)I

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 139
    invoke-direct {p0, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 141
    invoke-direct {p0, v2, v5, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getTransition(ZZZ)I

    move-result v3

    invoke-direct {p0, v9, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 142
    invoke-direct {p0, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 144
    iput-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    .line 145
    return-void

    .line 133
    :cond_5
    :goto_3
    return-void
.end method

.method private getAlpha(Z)F
    .locals 1
    .param p1, "isMajor"    # Z

    .line 148
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    return v0
.end method

.method private getTransition(ZZZ)I
    .locals 1
    .param p1, "fromB"    # Z
    .param p2, "isMajorAState"    # Z
    .param p3, "isMajor"    # Z

    .line 162
    if-eqz p3, :cond_3

    .line 163
    if-eqz p1, :cond_1

    .line 164
    if-eqz p2, :cond_0

    .line 165
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_b_a_animation:I

    return v0

    .line 167
    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_b_c_animation:I

    return v0

    .line 170
    :cond_1
    if-eqz p2, :cond_2

    .line 171
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_a_b_animation:I

    return v0

    .line 173
    :cond_2
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_c_b_animation:I

    return v0

    .line 177
    :cond_3
    if-eqz p1, :cond_5

    .line 178
    if-eqz p2, :cond_4

    .line 179
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_b_c_animation:I

    return v0

    .line 181
    :cond_4
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_b_a_animation:I

    return v0

    .line 184
    :cond_5
    if-eqz p2, :cond_6

    .line 185
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_c_b_animation:I

    return v0

    .line 187
    :cond_6
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_a_b_animation:I

    return v0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "res"    # I

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 153
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 158
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    return-void
.end method

.method private setIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v0

    .line 103
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 104
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 106
    .local v3, "v":Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 107
    sget v4, Lcom/oneplus/commonctrl/R$drawable;->op_major_a_b:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-direct {p0, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 103
    .end local v3    # "v":Landroid/widget/ImageView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 91
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->animate(II)V

    goto :goto_0

    .line 96
    :cond_0
    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    .line 98
    :goto_0
    iput p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    .line 99
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 213
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v0

    .line 214
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 218
    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v2

    .line 219
    .local v3, "left":I
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {v4, v3, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 217
    .end local v3    # "left":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v0

    .line 196
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 197
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 198
    return-void

    .line 200
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 202
    .local v1, "widthChildSpec":I
    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 204
    .local v2, "heightChildSpec":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 205
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v3    # "i":I
    :cond_1
    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    add-int/2addr v3, v4

    .line 208
    .local v3, "width":I
    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setMeasuredDimension(II)V

    .line 209
    return-void
.end method

.method public setLocation(F)V
    .locals 7
    .param p1, "location"    # F

    .line 70
    float-to-int v0, p1

    .line 71
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$string;->op_accessibility_quick_settings_page:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    shl-int/lit8 v1, v0, 0x1

    int-to-float v2, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    move v5, v6

    nop

    :cond_0
    or-int/2addr v1, v5

    .line 76
    .local v1, "position":I
    iget v2, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    .line 77
    .local v2, "lastPosition":I
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    :cond_1
    if-ne v1, v2, :cond_2

    return-void

    .line 81
    :cond_2
    iget-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void

    .line 87
    :cond_3
    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setPosition(I)V

    .line 88
    return-void
.end method

.method public setNumPages(I)V
    .locals 7
    .param p1, "numPages"    # I

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setVisibility(I)V

    .line 49
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 50
    const-string v2, "OPPageIndicator"

    const-string v3, "setNumPages during animation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->removeViewAt(I)V

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v1, [I

    const v4, 0x1010030

    aput v4, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 57
    .local v2, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 58
    .local v0, "color":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v3

    if-le p1, v3, :cond_3

    .line 60
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v3, "v":Landroid/widget/ImageView;
    sget v4, Lcom/oneplus/commonctrl/R$drawable;->op_minor_a_b:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 63
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget v6, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .end local v3    # "v":Landroid/widget/ImageView;
    goto :goto_2

    .line 66
    :cond_3
    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    shr-int/lit8 v1, v3, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    .line 67
    return-void
.end method
