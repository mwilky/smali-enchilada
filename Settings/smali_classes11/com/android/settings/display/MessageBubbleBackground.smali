.class public Lcom/android/settings/display/MessageBubbleBackground;
.super Landroid/widget/LinearLayout;
.source "MessageBubbleBackground.java"


# instance fields
.field private final mSnapWidthPixels:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/MessageBubbleBackground;->mSnapWidthPixels:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/settings/display/MessageBubbleBackground;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/display/MessageBubbleBackground;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/display/MessageBubbleBackground;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v3, v1

    iget v4, p0, Lcom/android/settings/display/MessageBubbleBackground;->mSnapWidthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    iget v5, p0, Lcom/android/settings/display/MessageBubbleBackground;->mSnapWidthPixels:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v3, v1, v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
