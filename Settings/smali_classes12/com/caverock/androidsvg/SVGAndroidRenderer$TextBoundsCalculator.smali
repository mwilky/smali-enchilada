.class Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextBoundsCalculator"
.end annotation


# instance fields
.field bbox:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V
    .locals 1
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1640
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1639
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1637
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    .line 1641
    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    .line 1642
    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    .line 1643
    return-void
.end method


# virtual methods
.method public doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .locals 8
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 1648
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1652
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextPath;

    .line 1653
    .local v0, "tpath":Lcom/caverock/androidsvg/SVG$TextPath;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    .line 1654
    .local v2, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1655
    const-string v4, "TextPath path reference \'%s\' not found"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-static {v4, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$4(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1656
    return v3

    .line 1658
    :cond_0
    move-object v4, v2

    check-cast v4, Lcom/caverock/androidsvg/SVG$Path;

    .line 1659
    .local v4, "pathObj":Lcom/caverock/androidsvg/SVG$Path;
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget-object v7, v4, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v5

    .line 1660
    .local v5, "path":Landroid/graphics/Path;
    iget-object v6, v4, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v6, :cond_1

    .line 1661
    iget-object v6, v4, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1662
    :cond_1
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1663
    .local v6, "pathBounds":Landroid/graphics/RectF;
    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1664
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1665
    return v3

    .line 1667
    .end local v0    # "tpath":Lcom/caverock/androidsvg/SVG$TextPath;
    .end local v2    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v4    # "pathObj":Lcom/caverock/androidsvg/SVG$Path;
    .end local v5    # "path":Landroid/graphics/Path;
    .end local v6    # "pathBounds":Landroid/graphics/RectF;
    :cond_2
    return v1
.end method

.method public processText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 1673
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1675
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1677
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1678
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1680
    .local v1, "textbounds":Landroid/graphics/RectF;
    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iget v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 1682
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1686
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "textbounds":Landroid/graphics/RectF;
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    .line 1687
    return-void
.end method
