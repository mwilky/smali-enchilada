.class public Landroid/preference/PreferenceFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PreferenceFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER_BOTTOM:I

.field private static final DEFAULT_BORDER_LEFT:I

.field private static final DEFAULT_BORDER_RIGHT:I

.field private static final DEFAULT_BORDER_TOP:I


# instance fields
.field private final mBorderBottom:I

.field private final mBorderLeft:I

.field private final mBorderRight:I

.field private final mBorderTop:I

.field private mPaddingApplied:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const v0, 0x11100a4

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    sget-object v0, Lcom/android/internal/R$styleable;->PreferenceFrameLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 58
    .local v1, "density":F
    const/4 v2, 0x0

    mul-float v3, v1, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 59
    .local v3, "defaultBorderTop":I
    mul-float v5, v1, v2

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 60
    .local v5, "defaultBottomPadding":I
    mul-float v6, v1, v2

    add-float/2addr v6, v4

    float-to-int v6, v6

    .line 61
    .local v6, "defaultLeftPadding":I
    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 63
    .local v2, "defaultRightPadding":I
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    .line 69
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    .line 72
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingTop()I

    move-result v0

    .line 90
    .local v0, "borderTop":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingBottom()I

    move-result v1

    .line 91
    .local v1, "borderBottom":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingLeft()I

    move-result v2

    .line 92
    .local v2, "borderLeft":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingRight()I

    move-result v3

    .line 94
    .local v3, "borderRight":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 95
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 98
    .local v5, "layoutParams":Landroid/preference/PreferenceFrameLayout$LayoutParams;
    :goto_0
    if-eqz v5, :cond_1

    iget-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    if-eqz v6, :cond_1

    .line 99
    iget-boolean v6, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    if-eqz v6, :cond_2

    .line 100
    iget v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    sub-int/2addr v0, v6

    .line 101
    iget v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    sub-int/2addr v1, v6

    .line 102
    iget v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    sub-int/2addr v2, v6

    .line 103
    iget v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    sub-int/2addr v3, v6

    .line 104
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    goto :goto_1

    .line 109
    :cond_1
    iget-boolean v6, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    if-nez v6, :cond_2

    .line 110
    iget v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    add-int/2addr v0, v6

    .line 111
    iget v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    add-int/2addr v1, v6

    .line 112
    iget v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    add-int/2addr v2, v6

    .line 113
    iget v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    add-int/2addr v3, v6

    .line 114
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    .line 118
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingTop()I

    move-result v6

    .line 119
    .local v6, "previousTop":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingBottom()I

    move-result v7

    .line 120
    .local v7, "previousBottom":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingLeft()I

    move-result v8

    .line 121
    .local v8, "previousLeft":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingRight()I

    move-result v9

    .line 122
    .local v9, "previousRight":I
    if-ne v6, v0, :cond_3

    if-ne v7, v1, :cond_3

    if-ne v8, v2, :cond_3

    if-eq v9, v3, :cond_4

    .line 124
    :cond_3
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/preference/PreferenceFrameLayout;->setPadding(IIII)V

    .line 127
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/preference/PreferenceFrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 84
    new-instance v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/preference/PreferenceFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/preference/PreferenceFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method
