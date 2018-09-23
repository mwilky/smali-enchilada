.class public Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MatchParentShrinkingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;,
        Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$DividerMode;,
        Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    const v3, 0x800033

    iput v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setOrientation(I)V

    :cond_0
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setGravity(I)V

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setBaselineAligned(Z)V

    :cond_2
    const/4 v5, 0x4

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v1, 0x6

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x7

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    const/16 v1, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v2, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v10, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v10, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    nop

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v2, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v10, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v10, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v5, v6

    :goto_1
    invoke-virtual {p0, p1, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingLeft()I

    move-result v3

    :goto_2
    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int v3, v4, v5

    :goto_3
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v3, v4, v5

    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "layout:baselineAligned"

    iget-boolean v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:baselineChildTop"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:orientation"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:gravity"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:totalLength"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "layout:totalLength"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "layout:useLargestChild"

    iget-boolean v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateDefaultLayoutParams()Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 3

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 6

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_1

    return v2

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBottom:I

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int v2, v4, v5

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBottom:I

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v4, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    :cond_3
    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 31

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->isLayoutRtl()Z

    move-result v9

    iget v10, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int v13, p4, p2

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int v14, v13, v0

    sub-int v0, v13, v10

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int v15, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v5

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v4, v0, v1

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v16, v0, 0x70

    iget-boolean v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    iget-object v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mMaxAscent:[I

    iget-object v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mMaxDescent:[I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLayoutDirection()I

    move-result v3

    invoke-static {v4, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    const/16 v17, 0x2

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v12, 0x5

    if-eq v11, v12, :cond_0

    iget v11, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    :goto_0
    move/from16 v18, v3

    goto :goto_1

    :cond_0
    iget v11, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    add-int v11, v11, p3

    sub-int v11, v11, p1

    iget v12, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v11, v12

    goto :goto_0

    :cond_1
    iget v11, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    sub-int v12, p3, p1

    move/from16 v18, v3

    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v12, v3

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    nop

    :goto_1
    move v3, v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v9, :cond_2

    add-int/lit8 v11, v5, -0x1

    const/4 v12, -0x1

    :cond_2
    const/16 v19, 0x0

    move/from16 v20, v3

    :goto_2
    move/from16 v3, v19

    if-ge v3, v5, :cond_d

    mul-int v19, v12, v3

    add-int v7, v11, v19

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v19

    add-int v20, v20, v19

    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v30, v9

    goto/16 :goto_5

    :cond_3
    move/from16 v21, v3

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v22, v4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_c

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    const/4 v3, -0x1

    nop

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move/from16 v24, v3

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    move/from16 v25, v2

    iget v2, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-eq v2, v3, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v2

    goto :goto_3

    :cond_4
    move/from16 v25, v2

    :cond_5
    move/from16 v2, v24

    :goto_3
    iget v3, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_6

    move/from16 v3, v16

    :cond_6
    move/from16 v24, v3

    and-int/lit8 v3, v24, 0x70

    move/from16 v27, v5

    const/16 v5, 0x10

    if-eq v3, v5, :cond_9

    const/16 v5, 0x30

    if-eq v3, v5, :cond_8

    const/16 v5, 0x50

    if-eq v3, v5, :cond_7

    move v3, v10

    goto :goto_4

    :cond_7
    sub-int v3, v14, v23

    iget v5, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v2

    aget v26, v0, v17

    sub-int v26, v26, v5

    sub-int v3, v3, v26

    goto :goto_4

    :cond_8
    iget v3, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    const/4 v5, 0x1

    aget v26, v1, v5

    sub-int v26, v26, v2

    add-int v3, v3, v26

    goto :goto_4

    :cond_9
    sub-int v3, v15, v23

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v10

    iget v5, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    nop

    :cond_a
    :goto_4
    nop

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    add-int v20, v20, v5

    :cond_b
    iget v5, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int v20, v20, v5

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int v5, v20, v5

    move-object/from16 v26, v0

    move-object v0, v6

    move-object/from16 v28, v1

    move-object v1, v8

    move/from16 v29, v2

    move v2, v5

    move-object v5, v4

    move/from16 v4, v19

    move/from16 v30, v9

    move-object v9, v5

    move/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int v0, v19, v0

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v21, v0

    goto :goto_5

    :cond_c
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v27, v5

    move/from16 v30, v9

    move/from16 v3, v21

    :goto_5
    const/4 v0, 0x1

    add-int/lit8 v19, v3, 0x1

    move/from16 v4, v22

    move/from16 v2, v25

    move-object/from16 v0, v26

    move/from16 v5, v27

    move-object/from16 v1, v28

    move/from16 v9, v30

    goto/16 :goto_2

    :cond_d
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v30, v9

    return-void
.end method

.method layoutVertical(IIII)V
    .locals 24

    move-object/from16 v6, p0

    iget v9, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    sub-int v10, p3, p1

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    sub-int v11, v10, v0

    sub-int v0, v10, v9

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    sub-int v12, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v13

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v5, v0, 0x70

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v14, v0, v1

    const/16 v0, 0x10

    if-eq v5, v0, :cond_1

    const/16 v0, 0x50

    if-eq v5, v0, :cond_0

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    goto :goto_0

    :cond_0
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    nop

    :goto_0
    nop

    const/4 v1, 0x0

    :goto_1
    move v4, v1

    if-ge v4, v13, :cond_8

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v2

    add-int/2addr v0, v2

    move/from16 v20, v5

    move/from16 v23, v9

    const/16 v21, 0x1

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v1, 0x8

    if-eq v2, v1, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    nop

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v2, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    if-gez v2, :cond_3

    move v2, v14

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLayoutDirection()I

    move-result v7

    invoke-static {v2, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v18

    move/from16 v19, v2

    and-int/lit8 v2, v18, 0x7

    move/from16 v20, v5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    const/4 v5, 0x5

    if-eq v2, v5, :cond_4

    iget v2, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    goto :goto_2

    :cond_4
    sub-int v2, v11, v16

    iget v5, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    goto :goto_2

    :cond_5
    sub-int v2, v12, v16

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    iget v5, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    nop

    :goto_2
    move/from16 v15, v19

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v0, v5

    :cond_6
    iget v5, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int v19, v0, v5

    invoke-virtual {v6, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v5, v19, v0

    move-object v0, v6

    move/from16 v22, v7

    const/16 v21, 0x1

    move-object v7, v1

    move-object v1, v3

    move-object v8, v3

    move v3, v5

    move v5, v4

    move/from16 v4, v16

    move/from16 v23, v9

    move v9, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v19, v19, v0

    invoke-virtual {v6, v8, v9}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v4, v9, v0

    move/from16 v0, v19

    goto :goto_3

    :cond_7
    move/from16 v20, v5

    move/from16 v23, v9

    const/16 v21, 0x1

    move v9, v4

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move/from16 v5, v20

    move/from16 v9, v23

    goto/16 :goto_1

    :cond_8
    move/from16 v20, v5

    move/from16 v23, v9

    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "horizontal mode not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method measureNullChild(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 58

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    const/4 v6, 0x0

    const/4 v14, 0x0

    iget v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    iget-boolean v10, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    const/high16 v17, -0x80000000

    move/from16 v18, v6

    move v6, v2

    move v2, v0

    const/4 v0, 0x0

    move/from16 v57, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v57

    :goto_0
    move/from16 v19, v4

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-ge v0, v11, :cond_12

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    move/from16 v25, v1

    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v20

    add-int v1, v1, v20

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    nop

    move/from16 v34, v11

    move/from16 v33, v13

    move/from16 v4, v19

    move/from16 v1, v25

    goto/16 :goto_b

    :cond_0
    move/from16 v25, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v26, v2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    invoke-virtual {v7, v4, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    nop

    move/from16 v34, v11

    move/from16 v33, v13

    move/from16 v4, v19

    move/from16 v1, v25

    move/from16 v2, v26

    goto/16 :goto_b

    :cond_1
    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    add-float v21, v5, v1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v13, v5, :cond_3

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v1, :cond_3

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v23

    if-lez v1, :cond_3

    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v5, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v1

    move/from16 v27, v0

    iget v0, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    const/4 v14, 0x1

    nop

    move-object v0, v2

    move-object v8, v4

    move v9, v6

    move/from16 v34, v11

    move/from16 v33, v13

    move/from16 v30, v14

    move/from16 v35, v19

    move/from16 v14, v25

    move/from16 v32, v26

    move/from16 v29, v27

    goto/16 :goto_3

    :cond_3
    move/from16 v27, v0

    const/high16 v0, -0x80000000

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v1, :cond_4

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v23

    if-lez v1, :cond_4

    const/4 v0, 0x0

    const/4 v1, -0x2

    iput v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    :cond_4
    move v5, v0

    const/16 v24, 0x0

    cmpl-float v0, v21, v23

    if-nez v0, :cond_5

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v28, v0

    goto :goto_1

    :cond_5
    nop

    const/16 v28, 0x0

    :goto_1
    move/from16 v1, v27

    move-object v0, v7

    move/from16 v29, v1

    move/from16 v30, v14

    move/from16 v14, v25

    move-object v1, v4

    move-object/from16 v31, v2

    move/from16 v32, v26

    move/from16 v2, v29

    move/from16 v33, v13

    move v13, v3

    move v3, v8

    move-object v8, v4

    move/from16 v34, v11

    move/from16 v35, v19

    const/high16 v11, -0x80000000

    move/from16 v4, v24

    move v11, v5

    move v5, v9

    move v9, v6

    move/from16 v6, v28

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    const/high16 v0, -0x80000000

    if-eq v11, v0, :cond_6

    move-object/from16 v0, v31

    iput v11, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_6
    move-object/from16 v0, v31

    :goto_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    add-int v3, v2, v1

    iget v4, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    if-eqz v10, :cond_7

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    :cond_7
    move v3, v13

    :goto_3
    if-ltz v15, :cond_8

    move/from16 v1, v29

    add-int/lit8 v2, v1, 0x1

    if-ne v15, v2, :cond_9

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iput v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    goto :goto_4

    :cond_8
    move/from16 v1, v29

    :cond_9
    :goto_4
    if-ge v1, v15, :cond_b

    iget v2, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v2, v2, v23

    if-gtz v2, :cond_a

    goto :goto_5

    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    :goto_5
    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v12, v4, :cond_c

    iget v4, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_d

    const/16 v18, 0x1

    const/4 v2, 0x1

    goto :goto_6

    :cond_c
    const/4 v6, -0x1

    :cond_d
    :goto_6
    iget v4, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    iget v5, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    move/from16 v11, v32

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v13

    invoke-static {v14, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v13

    if-eqz v17, :cond_e

    iget v14, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    if-ne v14, v6, :cond_e

    move/from16 v6, v22

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    :goto_7
    iget v14, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v14, v14, v23

    if-lez v14, :cond_10

    nop

    if-eqz v2, :cond_f

    move v14, v4

    goto :goto_8

    :cond_f
    move v14, v5

    :goto_8
    move/from16 v36, v6

    move/from16 v6, v35

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_a

    :cond_10
    move/from16 v36, v6

    move/from16 v6, v35

    if-eqz v2, :cond_11

    move v14, v4

    goto :goto_9

    :cond_11
    move v14, v5

    :goto_9
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_a
    invoke-virtual {v7, v8, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v14

    add-int v0, v1, v14

    move v4, v6

    move v6, v9

    move v2, v11

    move v1, v13

    move/from16 v5, v21

    move/from16 v14, v30

    move/from16 v17, v36

    :goto_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v33

    move/from16 v11, v34

    move/from16 v8, p1

    move/from16 v9, p2

    goto/16 :goto_0

    :cond_12
    move v9, v6

    move/from16 v34, v11

    move/from16 v33, v13

    move/from16 v30, v14

    move/from16 v6, v19

    const/4 v0, -0x1

    move v14, v1

    move v11, v2

    move v13, v3

    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    if-lez v1, :cond_13

    move/from16 v1, v34

    invoke-virtual {v7, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    goto :goto_c

    :cond_13
    move/from16 v1, v34

    :cond_14
    :goto_c
    if-eqz v10, :cond_18

    move/from16 v2, v33

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_15

    if-nez v2, :cond_19

    :cond_15
    const/4 v3, 0x0

    iput v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_19

    invoke-virtual {v7, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_16

    iget v8, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v7, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v19

    add-int v8, v8, v19

    iput v8, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    goto :goto_e

    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v0, 0x8

    if-ne v8, v0, :cond_17

    invoke-virtual {v7, v4, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v3, v0

    nop

    :goto_e
    move/from16 v37, v3

    goto :goto_f

    :cond_17
    nop

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v8, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    add-int v19, v8, v13

    move/from16 v37, v3

    iget v3, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int v19, v19, v3

    iget v3, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v19, v19, v3

    invoke-virtual {v7, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v3, v19, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    :goto_f
    add-int/lit8 v3, v37, 0x1

    const/4 v0, -0x1

    goto :goto_d

    :cond_18
    move/from16 v2, v33

    :cond_19
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v3, p2

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->resolveSizeAndState(III)I

    move-result v8

    const v4, 0xffffff

    and-int v0, v8, v4

    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int v4, v0, v4

    if-nez v30, :cond_20

    if-eqz v4, :cond_1a

    cmpl-float v19, v5, v23

    if-lez v19, :cond_1a

    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    goto/16 :goto_13

    :cond_1a
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-eqz v10, :cond_1f

    move/from16 v38, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_1e

    const/16 v16, 0x0

    :goto_10
    move/from16 v0, v16

    if-ge v0, v1, :cond_1e

    move/from16 v39, v4

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1d

    move/from16 v40, v5

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v41, v6

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1b

    nop

    move/from16 v44, v9

    goto :goto_11

    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v6, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v16, v6, v23

    if-lez v16, :cond_1c

    nop

    move-object/from16 v42, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    move/from16 v43, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move/from16 v44, v9

    invoke-static {v13, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v4, v5, v9}, Landroid/view/View;->measure(II)V

    goto :goto_11

    :cond_1c
    move/from16 v44, v9

    goto :goto_11

    :cond_1d
    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v44, v9

    :goto_11
    add-int/lit8 v16, v0, 0x1

    move/from16 v4, v39

    move/from16 v5, v40

    move/from16 v6, v41

    move/from16 v9, v44

    goto :goto_10

    :cond_1e
    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v44, v9

    goto :goto_12

    :cond_1f
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v44, v9

    :goto_12
    move/from16 v51, v2

    move/from16 v45, v10

    move/from16 v46, v13

    move/from16 v47, v15

    move/from16 v13, p1

    goto/16 :goto_1e

    :cond_20
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    :goto_13
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_21

    iget v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    goto :goto_14

    :cond_21
    move/from16 v5, v40

    :goto_14
    move v0, v5

    const/4 v4, 0x0

    iput v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move v0, v4

    move/from16 v6, v39

    :goto_15
    if-ge v0, v1, :cond_2e

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    move/from16 v45, v10

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v10

    move/from16 v46, v13

    const/16 v13, 0x8

    if-ne v10, v13, :cond_22

    nop

    move/from16 v51, v2

    move/from16 v47, v15

    move/from16 v13, p1

    goto/16 :goto_1d

    :cond_22
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v13, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v16, v13, v23

    if-lez v16, :cond_27

    if-lez v6, :cond_27

    move/from16 v47, v15

    int-to-float v15, v6

    mul-float/2addr v15, v13

    div-float/2addr v15, v5

    float-to-int v15, v15

    sub-float/2addr v5, v13

    sub-int/2addr v6, v15

    move/from16 v48, v5

    iget v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    move/from16 v49, v6

    iget v6, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    move/from16 v50, v13

    move/from16 v13, p1

    invoke-static {v13, v5, v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildMeasureSpec(III)I

    move-result v5

    iget v6, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v6, :cond_25

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v2, v6, :cond_23

    move/from16 v51, v2

    goto :goto_17

    :cond_23
    nop

    if-lez v15, :cond_24

    move/from16 v51, v2

    move v2, v15

    goto :goto_16

    :cond_24
    move/from16 v51, v2

    const/4 v2, 0x0

    :goto_16
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/view/View;->measure(II)V

    move/from16 v52, v15

    goto :goto_18

    :cond_25
    move/from16 v51, v2

    :goto_17
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v15

    if-gez v2, :cond_26

    const/4 v2, 0x0

    :cond_26
    nop

    move/from16 v52, v15

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v4, v5, v15}, Landroid/view/View;->measure(II)V

    nop

    :goto_18
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    invoke-static {v14, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v14

    nop

    move/from16 v53, v48

    goto :goto_19

    :cond_27
    move/from16 v51, v2

    move/from16 v50, v13

    move/from16 v47, v15

    move/from16 v13, p1

    if-gez v6, :cond_29

    iget v2, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v2, v15, :cond_29

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    iget v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v2, v15

    iget v15, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v15

    iget v15, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v15

    iget v15, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    invoke-static {v13, v2, v15}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v6

    if-gez v15, :cond_28

    const/4 v15, 0x0

    :cond_28
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v16, v15, v16

    sub-int v6, v6, v16

    nop

    move/from16 v53, v5

    move/from16 v54, v6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    and-int/lit16 v5, v5, -0x100

    invoke-static {v14, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v14

    move/from16 v49, v54

    goto :goto_19

    :cond_29
    move/from16 v53, v5

    move/from16 v49, v6

    :goto_19
    iget v2, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    iget v5, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v11, 0x40000000    # 2.0f

    if-eq v12, v11, :cond_2a

    iget v11, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v11, v15, :cond_2a

    move/from16 v11, v22

    goto :goto_1a

    :cond_2a
    const/4 v11, 0x0

    :goto_1a
    nop

    if-eqz v11, :cond_2b

    move v15, v2

    goto :goto_1b

    :cond_2b
    move v15, v5

    :goto_1b
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-eqz v17, :cond_2c

    iget v15, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    move/from16 v55, v2

    const/4 v2, -0x1

    if-ne v15, v2, :cond_2d

    move/from16 v15, v22

    goto :goto_1c

    :cond_2c
    move/from16 v55, v2

    const/4 v2, -0x1

    :cond_2d
    const/4 v15, 0x0

    :goto_1c
    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v2, v16

    move/from16 v56, v5

    iget v5, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int v16, v16, v5

    iget v5, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v16, v16, v5

    invoke-virtual {v7, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int v5, v16, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move v11, v6

    move/from16 v17, v15

    move/from16 v6, v49

    move/from16 v5, v53

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v45

    move/from16 v13, v46

    move/from16 v15, v47

    move/from16 v2, v51

    const/4 v4, 0x0

    goto/16 :goto_15

    :cond_2e
    move/from16 v51, v2

    move/from16 v53, v5

    move/from16 v45, v10

    move/from16 v46, v13

    move/from16 v47, v15

    move/from16 v13, p1

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    nop

    move/from16 v39, v6

    move/from16 v44, v9

    :goto_1e
    if-nez v17, :cond_2f

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_2f

    move/from16 v11, v44

    :cond_2f
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v11, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v13, v14}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setMeasuredDimension(II)V

    if-eqz v18, :cond_30

    invoke-direct {v7, v1, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->forceUniformWidth(II)V

    :cond_30
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->layoutVertical(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->layoutHorizontal(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureVertical(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureHorizontal(II)V

    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int v1, p1, v0

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 v0, p1, 0x70

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
