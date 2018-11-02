.class public Lcom/android/settings/graph/BottomLabelLayout;
.super Landroid/widget/LinearLayout;
.source "BottomLabelLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BottomLabelLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isStacked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/graph/BottomLabelLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/graph/BottomLabelLayout;->isStacked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_0

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/graph/BottomLabelLayout;->getMeasuredWidthAndState()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/graph/BottomLabelLayout;->setStacked(Z)V

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_2
    return-void
.end method

.method setStacked(Z)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/graph/BottomLabelLayout;->setOrientation(I)V

    if-eqz p1, :cond_0

    const v0, 0x800003

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/graph/BottomLabelLayout;->setGravity(I)V

    const v0, 0x7f0a0504

    invoke-virtual {p0, v0}, Lcom/android/settings/graph/BottomLabelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
