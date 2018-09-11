.class Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$PathInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathConverter"
.end annotation


# instance fields
.field lastX:F

.field lastY:F

.field path:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V
    .locals 0
    .param p2, "pathDef"    # Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 2391
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2387
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    .line 2392
    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->enumeratePath(Lcom/caverock/androidsvg/SVG$PathInterface;)V

    .line 2393
    return-void
.end method


# virtual methods
.method public arcTo(FFFZZFF)V
    .locals 11
    .param p1, "rx"    # F
    .param p2, "ry"    # F
    .param p3, "xAxisRotation"    # F
    .param p4, "largeArcFlag"    # Z
    .param p5, "sweepFlag"    # Z
    .param p6, "x"    # F
    .param p7, "y"    # F

    move-object v10, p0

    .line 2435
    iget v0, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    iget v1, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$5(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    .line 2436
    move/from16 v0, p6

    iput v0, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    .line 2437
    move/from16 v1, p7

    iput v1, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    .line 2438
    return-void
.end method

.method public close()V
    .locals 1

    .line 2443
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 2444
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 2419
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 2420
    iput p5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    .line 2421
    iput p6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    .line 2422
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 2397
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public lineTo(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2411
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2412
    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    .line 2413
    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    .line 2414
    return-void
.end method

.method public moveTo(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2403
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2404
    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    .line 2405
    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    .line 2406
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 2427
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2428
    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastX:F

    .line 2429
    iput p4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->lastY:F

    .line 2430
    return-void
.end method
