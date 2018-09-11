.class public Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MatchParentShrinkingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x800003
                to = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x800005
                to = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field

.field public weight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1524
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1486
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1525
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    .line 1526
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "weight"    # F

    .line 1539
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1486
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1540
    iput p3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    .line 1541
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1508
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1486
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1509
    sget-object v1, Lcom/android/internal/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1512
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    .line 1514
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1517
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1518
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1547
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1486
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1548
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1554
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1486
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1555
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 1564
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1486
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1566
    iget v0, p1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    .line 1567
    iget v0, p1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1568
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MatchParentShrinkingLinearLayout.LayoutParams={width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    .line 1573
    invoke-static {v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    invoke-static {v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1572
    return-object v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1580
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1582
    const-string v0, "layout:weight"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 1583
    const-string v0, "layout:gravity"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1584
    return-void
.end method
