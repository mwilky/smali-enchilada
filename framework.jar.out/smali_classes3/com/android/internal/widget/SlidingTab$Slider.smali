.class Lcom/android/internal/widget/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x3

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field public static final ALIGN_TOP:I = 0x2

.field public static final ALIGN_UNKNOWN:I = 0x4

.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_PRESSED:I = 0x1


# instance fields
.field private alignment:I

.field private alignment_value:I

.field private currentState:I

.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;III)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x10303a7

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getTabHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method hide()V
    .locals 8

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    :goto_3
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v3

    int-to-float v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideTarget()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method layout(IIIII)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    iput v5, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    iget-object v6, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget-object v9, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int v12, v3, v1

    sub-int v13, v4, v2

    int-to-float v14, v12

    const v15, 0x3f2aaaab

    mul-float/2addr v14, v15

    float-to-int v14, v14

    sub-int/2addr v14, v10

    div-int/lit8 v16, v7, 0x2

    add-int v14, v14, v16

    int-to-float v15, v12

    const v16, 0x3eaaaaaa

    mul-float v15, v15, v16

    float-to-int v15, v15

    div-int/lit8 v18, v7, 0x2

    sub-int v15, v15, v18

    sub-int v18, v12, v7

    move-object/from16 v19, v6

    const/4 v6, 0x2

    move-object/from16 v20, v9

    div-int/lit8 v9, v18, 0x2

    add-int v6, v9, v7

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    if-ne v5, v3, :cond_0

    move/from16 v26, v7

    move/from16 v23, v10

    move/from16 v25, v12

    move/from16 v24, v14

    move/from16 v22, v15

    goto/16 :goto_1

    :cond_0
    sub-int v3, v12, v10

    const/16 v18, 0x2

    div-int/lit8 v3, v3, 0x2

    add-int v21, v12, v10

    move/from16 v22, v15

    div-int/lit8 v15, v21, 0x2

    int-to-float v1, v13

    const v17, 0x3f2aaaab

    mul-float v1, v1, v17

    float-to-int v1, v1

    div-int/lit8 v17, v8, 0x2

    add-int v1, v1, v17

    sub-int/2addr v1, v11

    move/from16 v23, v10

    int-to-float v10, v13

    mul-float v10, v10, v16

    float-to-int v10, v10

    div-int/lit8 v16, v8, 0x2

    sub-int v10, v10, v16

    move/from16 v24, v14

    const/4 v14, 0x2

    if-ne v5, v14, :cond_1

    iget-object v14, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move/from16 v25, v12

    const/4 v12, 0x0

    invoke-virtual {v14, v9, v12, v6, v8}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v14, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move/from16 v26, v7

    rsub-int/lit8 v7, v13, 0x0

    invoke-virtual {v14, v9, v7, v6, v12}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v7, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v12, v1, v11

    invoke-virtual {v7, v3, v1, v15, v12}, Landroid/widget/ImageView;->layout(IIII)V

    iput v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    :goto_0
    move/from16 v4, v22

    move/from16 v15, v24

    move/from16 v27, v25

    move/from16 v14, v26

    move/from16 v2, p3

    goto/16 :goto_3

    :cond_1
    move/from16 v26, v7

    move/from16 v25, v12

    iget-object v7, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sub-int v12, v13, v8

    invoke-virtual {v7, v9, v12, v6, v13}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v7, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    add-int v12, v13, v13

    invoke-virtual {v7, v9, v13, v6, v12}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v7, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v12, v10, v11

    invoke-virtual {v7, v3, v10, v15, v12}, Landroid/widget/ImageView;->layout(IIII)V

    iput v4, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto :goto_0

    :cond_2
    move/from16 v26, v7

    move/from16 v23, v10

    move/from16 v25, v12

    move/from16 v24, v14

    move/from16 v22, v15

    :goto_1
    sub-int v1, v13, v11

    const/4 v3, 0x2

    div-int/2addr v1, v3

    add-int v7, v1, v11

    sub-int v10, v13, v8

    div-int/2addr v10, v3

    add-int v12, v13, v8

    div-int/2addr v12, v3

    if-nez v5, :cond_3

    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move/from16 v14, v26

    const/4 v15, 0x0

    invoke-virtual {v3, v15, v10, v14, v12}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    rsub-int/lit8 v2, v25, 0x0

    invoke-virtual {v3, v2, v10, v15, v12}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v3, v24, v23

    move/from16 v15, v24

    invoke-virtual {v2, v15, v1, v3, v7}, Landroid/widget/ImageView;->layout(IIII)V

    move/from16 v2, p1

    iput v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    move/from16 v4, v22

    move/from16 v27, v25

    move/from16 v2, p3

    goto :goto_2

    :cond_3
    move/from16 v15, v24

    move/from16 v14, v26

    move/from16 v2, p1

    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sub-int v2, v25, v14

    move/from16 v4, v25

    invoke-virtual {v3, v2, v10, v4, v12}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    add-int v3, v4, v4

    invoke-virtual {v2, v4, v10, v3, v12}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v3, v22, v23

    move/from16 v27, v4

    move/from16 v4, v22

    invoke-virtual {v2, v4, v1, v3, v7}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v2, p3

    iput v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    :goto_2
    nop

    :goto_3
    return-void
.end method

.method public measure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method reset(Z)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10303a7

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    nop

    :cond_1
    :goto_0
    move v1, v2

    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-eqz v1, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_2
    if-eqz p1, :cond_6

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v4, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :goto_4
    return-void
.end method

.method setBarBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method setHintText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method setState(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    new-array v0, v2, [I

    const v2, 0x10100a2

    aput v2, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10303a6

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10303a7

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_2
    iput p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    return-void
.end method

.method setTabBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method setTarget(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method show(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    nop

    :cond_1
    :goto_0
    move v0, v2

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    neg-int v2, v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    neg-int v1, v1

    :goto_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    return-void
.end method

.method showTarget()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public updateDrawableStates()V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    return-void
.end method
