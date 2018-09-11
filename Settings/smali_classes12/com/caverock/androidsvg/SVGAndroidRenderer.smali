.class public Lcom/caverock/androidsvg/SVGAndroidRenderer;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I = null

.field private static final BEZIER_ARC_FACTOR:F = 0.5522848f

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final LUMINANCE_FACTOR_SHIFT:I = 0xf

.field private static final LUMINANCE_TO_ALPHA_BLUE:I = 0x93a

.field private static final LUMINANCE_TO_ALPHA_GREEN:I = 0x5b92

.field private static final LUMINANCE_TO_ALPHA_RED:I = 0x1b33

.field private static final TAG:Ljava/lang/String; = "SVGAndroidRenderer"


# instance fields
.field private bitmapStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private canvas:Landroid/graphics/Canvas;

.field private canvasStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

.field private directRenderingMode:Z

.field private document:Lcom/caverock/androidsvg/SVG;

.field private dpi:F

.field private matrixStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private parentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

.field private stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I
    .locals 3

    .line 85
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->values()[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    :goto_9
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    return-object v0
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I
    .locals 3

    .line 85
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->values()[Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I

    return-object v0
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps()[I
    .locals 3

    .line 85
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->values()[Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I

    return-object v0
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin()[I
    .locals 3

    .line 85
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->values()[Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    return-object v0
.end method

.method protected constructor <init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewPort"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "defaultDPI"    # F

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 209
    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    .line 210
    iput-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 211
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 502
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z
    .locals 0

    .line 1877
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-object p0
.end method

.method static synthetic access$3(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$4(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 496
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 0

    .line 2461
    invoke-static/range {p0 .. p9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    return-void
.end method

.method static synthetic access$6(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 490
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$GraphicsElement;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .line 3578
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3580
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3581
    return-void

    .line 3582
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3583
    return-void

    .line 3585
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3586
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3589
    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v0, :cond_3

    .line 3590
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    .local v0, "path":Landroid/graphics/Path;
    :goto_0
    goto :goto_1

    .line 3591
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v0, :cond_4

    .line 3592
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3593
    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_5

    .line 3594
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3595
    :cond_5
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_6

    .line 3596
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3598
    .restart local v0    # "path":Landroid/graphics/Path;
    :goto_1
    nop

    .line 3600
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3602
    invoke-virtual {v0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3603
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3604
    return-void

    .line 3598
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_6
    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Path;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .line 3553
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3555
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3556
    return-void

    .line 3557
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3558
    return-void

    .line 3560
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3561
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3563
    :cond_2
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 3565
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_3

    .line 3566
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3568
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3571
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3572
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3573
    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "allowUse"    # Z
    .param p3, "combinedPath"    # Landroid/graphics/Path;
    .param p4, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .line 3487
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3488
    return-void

    .line 3491
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3493
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3494
    if-eqz p2, :cond_1

    .line 3495
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3496
    goto :goto_0

    .line 3497
    :cond_1
    const-string v0, "<use> elements inside a <clipPath> cannot reference another <use>"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3499
    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_3

    .line 3500
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3501
    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_4

    .line 3502
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3503
    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    if-eqz v0, :cond_5

    .line 3504
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3505
    goto :goto_0

    .line 3506
    :cond_5
    const-string v0, "Invalid %s element found in clipPath definition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3510
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    .line 3511
    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Text;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .line 3634
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3636
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3637
    return-void

    .line 3639
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 3640
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3643
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 3644
    .local v0, "x":F
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v1

    .line 3645
    .local v3, "y":F
    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v1

    .line 3646
    .local v4, "dx":F
    :goto_5
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    nop

    .line 3649
    .local v1, "dy":F
    :cond_9
    :goto_6
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v5, :cond_b

    .line 3650
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v2

    .line 3651
    .local v2, "textWidth":F
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v5, v6, :cond_a

    .line 3652
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    sub-float/2addr v0, v5

    .line 3653
    goto :goto_7

    .line 3654
    :cond_a
    sub-float/2addr v0, v2

    .line 3658
    .end local v2    # "textWidth":F
    :cond_b
    :goto_7
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_c

    .line 3659
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v2, p0, v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 3660
    .local v2, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3661
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v6, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3663
    .end local v2    # "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    :cond_c
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3665
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 3666
    .local v2, "textAsPath":Landroid/graphics/Path;
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float v6, v0, v4

    add-float v7, v3, v1

    invoke-direct {v5, p0, v6, v7, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3668
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3669
    invoke-virtual {p2, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3670
    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Use;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .line 3609
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3611
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3612
    return-void

    .line 3613
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3614
    return-void

    .line 3616
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3617
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3620
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3621
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3622
    const-string v2, "Use reference \'%s\' not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3623
    return-void

    .line 3626
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3628
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3629
    return-void
.end method

.method private static arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 90
    .param p0, "lastX"    # F
    .param p1, "lastY"    # F
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "angle"    # F
    .param p5, "largeArcFlag"    # Z
    .param p6, "sweepFlag"    # Z
    .param p7, "x"    # F
    .param p8, "y"    # F
    .param p9, "pather"    # Lcom/caverock/androidsvg/SVG$PathInterface;

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    .line 2463
    cmpl-float v6, p0, v4

    if-nez v6, :cond_0

    cmpl-float v6, p1, v5

    if-nez v6, :cond_0

    .line 2467
    return-void

    .line 2471
    :cond_0
    const/4 v6, 0x0

    cmpl-float v8, p2, v6

    if-eqz v8, :cond_a

    cmpl-float v6, p3, v6

    if-nez v6, :cond_1

    goto/16 :goto_7

    .line 2477
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 2478
    .end local p2    # "rx":F
    .local v6, "rx":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 2481
    .end local p3    # "ry":F
    .local v7, "ry":F
    float-to-double v8, v2

    const-wide v10, 0x4076800000000000L    # 360.0

    rem-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v9, v8

    .line 2482
    .local v9, "angleRad":F
    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 2483
    .local v12, "cosAngle":D
    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 2490
    .local v14, "sinAngle":D
    sub-float v8, p0, v4

    float-to-double v10, v8

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v10, v10, v18

    .line 2491
    .local v10, "dx2":D
    sub-float v8, p1, v5

    move/from16 v20, v9

    float-to-double v8, v8

    .end local v9    # "angleRad":F
    .local v20, "angleRad":F
    div-double v21, v8, v18

    .line 2494
    .local v21, "dy2":D
    mul-double v8, v12, v10

    mul-double v23, v14, v21

    add-double v8, v8, v23

    .line 2495
    .local v8, "x1":D
    neg-double v1, v14

    mul-double/2addr v1, v10

    mul-double v23, v12, v21

    add-double v1, v1, v23

    .line 2497
    .local v1, "y1":D
    move-wide/from16 v25, v10

    mul-float v10, v6, v6

    .end local v10    # "dx2":D
    .local v25, "dx2":D
    float-to-double v10, v10

    .line 2498
    .local v10, "rx_sq":D
    move-wide/from16 v27, v14

    mul-float v14, v7, v7

    .end local v14    # "sinAngle":D
    .local v27, "sinAngle":D
    float-to-double v14, v14

    .line 2499
    .local v14, "ry_sq":D
    mul-double v23, v8, v8

    .line 2500
    .local v23, "x1_sq":D
    mul-double v29, v1, v1

    .line 2505
    .local v29, "y1_sq":D
    div-double v31, v23, v10

    div-double v33, v29, v14

    move-wide/from16 v35, v10

    add-double v10, v31, v33

    .line 2506
    .local v10, "radiiCheck":D
    .local v35, "rx_sq":D
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    cmpl-double v33, v10, v31

    if-lez v33, :cond_2

    .line 2507
    move-wide/from16 v37, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .end local v14    # "ry_sq":D
    .local v37, "ry_sq":D
    double-to-float v14, v14

    mul-float/2addr v6, v14

    .line 2508
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v7, v14

    .line 2509
    mul-float v14, v6, v6

    float-to-double v14, v14

    .line 2510
    .end local v35    # "rx_sq":D
    .local v14, "rx_sq":D
    move/from16 v39, v6

    mul-float v6, v7, v7

    .end local v6    # "rx":F
    .local v39, "rx":F
    move/from16 v40, v7

    float-to-double v6, v6

    .line 2514
    .end local v7    # "ry":F
    .end local v37    # "ry_sq":D
    .local v6, "ry_sq":D
    .local v40, "ry":F
    move-wide/from16 v37, v6

    move-wide/from16 v35, v14

    move/from16 v6, v39

    move/from16 v14, v40

    goto :goto_0

    .end local v39    # "rx":F
    .end local v40    # "ry":F
    .local v6, "rx":F
    .restart local v7    # "ry":F
    .local v14, "ry_sq":D
    .restart local v35    # "rx_sq":D
    :cond_2
    move-wide/from16 v37, v14

    move v14, v7

    .end local v7    # "ry":F
    .local v14, "ry":F
    .restart local v37    # "ry_sq":D
    :goto_0
    move/from16 v15, p5

    if-ne v15, v3, :cond_3

    const/16 v33, -0x1

    move/from16 v7, v33

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    :goto_1
    move-wide/from16 v41, v10

    int-to-double v10, v7

    .line 2515
    .local v10, "sign":D
    .local v41, "radiiCheck":D
    mul-double v33, v35, v37

    mul-double v39, v35, v29

    sub-double v33, v33, v39

    mul-double v39, v37, v23

    sub-double v33, v33, v39

    mul-double v39, v35, v29

    mul-double v43, v37, v23

    add-double v39, v39, v43

    div-double v33, v33, v39

    .line 2516
    .local v33, "sq":D
    const-wide/16 v39, 0x0

    cmpg-double v7, v33, v39

    if-gez v7, :cond_4

    move-wide/from16 v43, v39

    goto :goto_2

    :cond_4
    move-wide/from16 v43, v33

    :goto_2
    move-wide/from16 v45, v43

    .line 2517
    .end local v33    # "sq":D
    .local v45, "sq":D
    move-wide/from16 v47, v12

    move-wide/from16 v12, v45

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    .end local v45    # "sq":D
    .local v12, "sq":D
    .local v47, "cosAngle":D
    mul-double v33, v33, v10

    .line 2518
    .local v33, "coef":D
    move-wide/from16 v49, v10

    float-to-double v10, v6

    .end local v10    # "sign":D
    .local v49, "sign":D
    mul-double/2addr v10, v1

    move-wide/from16 v51, v12

    float-to-double v12, v14

    .end local v12    # "sq":D
    .local v51, "sq":D
    div-double/2addr v10, v12

    mul-double v10, v10, v33

    .line 2519
    .local v10, "cx1":D
    float-to-double v12, v14

    mul-double/2addr v12, v8

    move/from16 v53, v14

    float-to-double v14, v6

    .end local v14    # "ry":F
    .local v53, "ry":F
    div-double/2addr v12, v14

    neg-double v12, v12

    mul-double v12, v12, v33

    .line 2522
    .local v12, "cy1":D
    add-float v7, p0, v4

    float-to-double v14, v7

    div-double v14, v14, v18

    .line 2523
    .local v14, "sx2":D
    add-float v7, p1, v5

    float-to-double v4, v7

    div-double v4, v4, v18

    .line 2524
    .local v4, "sy2":D
    mul-double v18, v47, v10

    mul-double v43, v27, v12

    sub-double v18, v18, v43

    move-wide/from16 v54, v1

    add-double v0, v14, v18

    .line 2525
    .end local v1    # "y1":D
    .local v0, "cx":D
    .local v54, "y1":D
    mul-double v18, v27, v10

    mul-double v43, v47, v12

    add-double v18, v18, v43

    move-wide/from16 v56, v14

    add-double v14, v4, v18

    .line 2528
    .local v14, "cy":D
    .local v56, "sx2":D
    sub-double v18, v8, v10

    move-wide/from16 v58, v4

    float-to-double v4, v6

    .end local v4    # "sy2":D
    .local v58, "sy2":D
    div-double v18, v18, v4

    .line 2529
    .local v18, "ux":D
    sub-double v4, v54, v12

    move-wide/from16 v60, v14

    move/from16 v2, v53

    float-to-double v14, v2

    .end local v14    # "cy":D
    .end local v53    # "ry":F
    .local v2, "ry":F
    .local v60, "cy":D
    div-double/2addr v4, v14

    .line 2530
    .local v4, "uy":D
    neg-double v14, v8

    sub-double/2addr v14, v10

    move-wide/from16 v62, v8

    float-to-double v7, v6

    .end local v8    # "x1":D
    .local v62, "x1":D
    div-double/2addr v14, v7

    .line 2531
    .local v14, "vx":D
    move-wide/from16 v64, v10

    move-wide/from16 v7, v54

    neg-double v9, v7

    .end local v10    # "cx1":D
    .end local v54    # "y1":D
    .local v7, "y1":D
    .local v64, "cx1":D
    sub-double/2addr v9, v12

    move-wide/from16 v66, v7

    float-to-double v7, v2

    .end local v7    # "y1":D
    .local v66, "y1":D
    div-double/2addr v9, v7

    .line 2535
    .local v9, "vy":D
    mul-double v7, v18, v18

    mul-double v43, v4, v4

    add-double v7, v7, v43

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 2536
    .local v7, "n":D
    move-wide/from16 v43, v18

    .line 2537
    .local v43, "p":D
    cmpg-double v11, v4, v39

    const-wide/high16 v45, -0x4010000000000000L    # -1.0

    if-gez v11, :cond_5

    move-wide/from16 v54, v45

    goto :goto_3

    :cond_5
    move-wide/from16 v54, v31

    :goto_3
    move-wide/from16 v49, v54

    .line 2538
    move-wide/from16 v68, v12

    div-double v11, v43, v7

    .end local v12    # "cy1":D
    .local v68, "cy1":D
    invoke-static {v11, v12}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    mul-double v11, v11, v49

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    .line 2541
    .local v11, "angleStart":D
    mul-double v54, v18, v18

    mul-double v70, v4, v4

    add-double v54, v54, v70

    mul-double v70, v14, v14

    mul-double v72, v9, v9

    add-double v70, v70, v72

    move-wide/from16 v74, v7

    mul-double v7, v54, v70

    .end local v7    # "n":D
    .local v74, "n":D
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    .line 2542
    .end local v74    # "n":D
    .local v54, "n":D
    mul-double v7, v18, v14

    mul-double v70, v4, v9

    add-double v43, v7, v70

    .line 2543
    mul-double v7, v18, v9

    mul-double v70, v4, v14

    sub-double v7, v7, v70

    cmpg-double v7, v7, v39

    if-gez v7, :cond_6

    goto :goto_4

    :cond_6
    move-wide/from16 v45, v31

    :goto_4
    move-wide/from16 v31, v45

    .line 2544
    .end local v49    # "sign":D
    .local v31, "sign":D
    div-double v7, v43, v54

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    mul-double v7, v7, v31

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    .line 2545
    .local v7, "angleExtent":D
    if-nez v3, :cond_7

    cmpl-double v13, v7, v39

    if-lez v13, :cond_7

    .line 2546
    const-wide v16, 0x4076800000000000L    # 360.0

    sub-double v7, v7, v16

    .line 2547
    goto :goto_5

    :cond_7
    const-wide v16, 0x4076800000000000L    # 360.0

    if-eqz v3, :cond_8

    cmpg-double v13, v7, v39

    if-gez v13, :cond_8

    .line 2548
    add-double v7, v7, v16

    .line 2550
    :cond_8
    :goto_5
    rem-double v7, v7, v16

    .line 2551
    rem-double v11, v11, v16

    .line 2557
    invoke-static {v11, v12, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcToBeziers(DD)[F

    move-result-object v13

    .line 2560
    .local v13, "bezierPoints":[F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 2561
    .local v3, "m":Landroid/graphics/Matrix;
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2562
    move/from16 v76, v2

    move/from16 v2, p4

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2563
    .end local v2    # "ry":F
    .local v76, "ry":F
    double-to-float v2, v0

    move-wide/from16 v77, v0

    move-wide/from16 v79, v4

    move-wide/from16 v0, v60

    double-to-float v4, v0

    .end local v4    # "uy":D
    .end local v60    # "cy":D
    .local v0, "cy":D
    .local v77, "cx":D
    .local v79, "uy":D
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2564
    invoke-virtual {v3, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2570
    array-length v2, v13

    add-int/lit8 v2, v2, -0x2

    move/from16 v4, p7

    aput v4, v13, v2

    .line 2571
    array-length v2, v13

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    move/from16 v5, p8

    aput v5, v13, v2

    .line 2574
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    move-wide/from16 v81, v0

    array-length v0, v13

    .end local v0    # "cy":D
    .local v81, "cy":D
    if-lt v2, v0, :cond_9

    .line 2578
    .end local v2    # "i":I
    return-void

    .line 2576
    .restart local v2    # "i":I
    :cond_9
    aget v84, v13, v2

    add-int/lit8 v0, v2, 0x1

    aget v85, v13, v0

    add-int/lit8 v0, v2, 0x2

    aget v86, v13, v0

    add-int/lit8 v0, v2, 0x3

    aget v87, v13, v0

    add-int/lit8 v0, v2, 0x4

    aget v88, v13, v0

    add-int/lit8 v0, v2, 0x5

    aget v89, v13, v0

    move-object/from16 v83, p9

    invoke-interface/range {v83 .. v89}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    .line 2574
    add-int/lit8 v2, v2, 0x6

    move-wide/from16 v0, v81

    goto :goto_6

    .line 2472
    .end local v2    # "i":I
    .end local v3    # "m":Landroid/graphics/Matrix;
    .end local v6    # "rx":F
    .end local v7    # "angleExtent":D
    .end local v9    # "vy":D
    .end local v11    # "angleStart":D
    .end local v13    # "bezierPoints":[F
    .end local v14    # "vx":D
    .end local v18    # "ux":D
    .end local v20    # "angleRad":F
    .end local v21    # "dy2":D
    .end local v23    # "x1_sq":D
    .end local v25    # "dx2":D
    .end local v27    # "sinAngle":D
    .end local v29    # "y1_sq":D
    .end local v31    # "sign":D
    .end local v33    # "coef":D
    .end local v35    # "rx_sq":D
    .end local v37    # "ry_sq":D
    .end local v41    # "radiiCheck":D
    .end local v43    # "p":D
    .end local v47    # "cosAngle":D
    .end local v51    # "sq":D
    .end local v54    # "n":D
    .end local v56    # "sx2":D
    .end local v58    # "sy2":D
    .end local v62    # "x1":D
    .end local v64    # "cx1":D
    .end local v66    # "y1":D
    .end local v68    # "cy1":D
    .end local v76    # "ry":F
    .end local v77    # "cx":D
    .end local v79    # "uy":D
    .end local v81    # "cy":D
    .restart local p2    # "rx":F
    .restart local p3    # "ry":F
    :cond_a
    :goto_7
    move-object/from16 v0, p9

    invoke-interface {v0, v4, v5}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    .line 2473
    return-void
.end method

.method private static arcToBeziers(DD)[F
    .locals 25
    .param p0, "angleStart"    # D
    .param p2, "angleExtent"    # D

    .line 2597
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2599
    .local v0, "numSegments":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 2600
    .end local p0    # "angleStart":D
    .local v1, "angleStart":D
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 2601
    .end local p2    # "angleExtent":D
    .local v3, "angleExtent":D
    int-to-double v5, v0

    div-double v5, v3, v5

    double-to-float v5, v5

    .line 2604
    .local v5, "angleIncrement":F
    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v10, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v10, v6

    float-to-double v6, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v6

    div-double/2addr v10, v8

    .line 2606
    .local v10, "controlLength":D
    mul-int/lit8 v6, v0, 0x6

    new-array v6, v6, [F

    .line 2607
    .local v6, "coords":[F
    const/4 v7, 0x0

    .line 2609
    .local v7, "pos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v0, :cond_0

    .line 2628
    .end local v8    # "i":I
    return-object v6

    .line 2611
    .restart local v8    # "i":I
    :cond_0
    int-to-float v9, v8

    mul-float/2addr v9, v5

    float-to-double v12, v9

    add-double/2addr v12, v1

    .line 2613
    .local v12, "angle":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 2614
    .local v14, "dx":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 2616
    .local v16, "dy":D
    add-int/lit8 v9, v7, 0x1

    .local v9, "pos":I
    mul-double v18, v10, v16

    move/from16 v20, v0

    move-wide/from16 v21, v1

    sub-double v0, v14, v18

    .end local v0    # "numSegments":I
    .end local v1    # "angleStart":D
    .local v20, "numSegments":I
    .local v21, "angleStart":D
    double-to-float v0, v0

    aput v0, v6, v7

    .line 2617
    .end local v7    # "pos":I
    add-int/lit8 v0, v9, 0x1

    .local v0, "pos":I
    mul-double v1, v10, v14

    add-double v1, v16, v1

    double-to-float v1, v1

    aput v1, v6, v9

    .line 2619
    .end local v9    # "pos":I
    float-to-double v1, v5

    add-double/2addr v12, v1

    .line 2620
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 2621
    .end local v14    # "dx":D
    .local v1, "dx":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 2622
    .end local v16    # "dy":D
    .local v14, "dy":D
    add-int/lit8 v7, v0, 0x1

    .restart local v7    # "pos":I
    mul-double v16, v10, v14

    move-wide/from16 v23, v3

    add-double v3, v1, v16

    .end local v3    # "angleExtent":D
    .local v23, "angleExtent":D
    double-to-float v3, v3

    aput v3, v6, v0

    .line 2623
    .end local v0    # "pos":I
    add-int/lit8 v0, v7, 0x1

    .restart local v0    # "pos":I
    mul-double v3, v10, v1

    sub-double v3, v14, v3

    double-to-float v3, v3

    aput v3, v6, v7

    .line 2625
    .end local v7    # "pos":I
    add-int/lit8 v3, v0, 0x1

    .local v3, "pos":I
    double-to-float v4, v1

    aput v4, v6, v0

    .line 2626
    .end local v0    # "pos":I
    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "pos":I
    double-to-float v0, v14

    aput v0, v6, v3

    .line 2609
    .end local v1    # "dx":D
    .end local v3    # "pos":I
    .end local v12    # "angle":D
    .end local v14    # "dy":D
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v20

    move-wide/from16 v1, v21

    move-wide/from16 v3, v23

    goto :goto_0
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;
    .locals 12
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Line;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .line 1158
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v6, v0

    .line 1159
    .local v6, "_x1":F
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move v7, v0

    .line 1160
    .local v7, "_y1":F
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    move v8, v0

    .line 1161
    .local v8, "_x2":F
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    nop

    :cond_3
    move v9, v1

    .line 1163
    .local v9, "_y2":F
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 1164
    .local v10, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v8, v6

    sub-float v5, v9, v7

    move-object v0, v11

    move-object v1, p0

    move v2, v6

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v8, v6

    sub-float v5, v9, v7

    move-object v0, v11

    move v2, v8

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    return-object v10
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;
    .locals 18
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$PolyLine;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .line 1215
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v1, v1

    .line 1217
    .local v1, "numPoints":I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1218
    const/4 v2, 0x0

    return-object v2

    .line 1220
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    .local v2, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    new-instance v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v10, 0x0

    aget v5, v3, v10

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v11, 0x1

    aget v6, v3, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1222
    .local v3, "lastPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    const/4 v4, 0x0

    .local v4, "x":F
    const/4 v5, 0x0

    .line 1224
    .local v5, "y":F
    const/4 v6, 0x2

    .local v6, "i":I
    :goto_0
    if-lt v6, v1, :cond_3

    .line 1234
    .end local v6    # "i":I
    instance-of v6, v0, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v6, :cond_1

    .line 1235
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v6, v6, v10

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v6, v6, v11

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_2

    .line 1236
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v4, v6, v10

    .line 1237
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v5, v6, v11

    .line 1238
    invoke-virtual {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1239
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    new-instance v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v7, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v16, v4, v7

    iget v7, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v17, v5, v7

    move-object v12, v6

    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    invoke-direct/range {v12 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1243
    .local v6, "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 1244
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-interface {v2, v10, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1247
    .end local v6    # "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    goto :goto_1

    .line 1248
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_2
    :goto_1
    return-object v2

    .line 1225
    .local v6, "i":I
    :cond_3
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v4, v7, v6

    .line 1226
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v8, v6, 0x1

    aget v5, v7, v8

    .line 1227
    invoke-virtual {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1228
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    new-instance v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v8, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v16, v4, v8

    iget v8, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v17, v5, v8

    move-object v12, v7

    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    invoke-direct/range {v12 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1230
    .local v7, "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    move-object v3, v7

    .line 1224
    .end local v7    # "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    add-int/lit8 v6, v6, 0x2

    goto :goto_0
.end method

.method private calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;

    .line 998
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 999
    .local v0, "pathBounds":Landroid/graphics/RectF;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1000
    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v1
.end method

.method private calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F
    .locals 2
    .param p1, "parentTextObj"    # Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 1610
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;)V

    .line 1611
    .local v0, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1612
    iget v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return v1
.end method

.method private calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 11
    .param p1, "viewPort"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p2, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1899
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1901
    .local v0, "m":Landroid/graphics/Matrix;
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1904
    :cond_0
    iget v1, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v1, v2

    .line 1905
    .local v1, "xScale":F
    iget v2, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    iget v3, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v2, v3

    .line 1906
    .local v2, "yScale":F
    iget v3, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    neg-float v3, v3

    .line 1907
    .local v3, "xOffset":F
    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    neg-float v4, v4

    .line 1910
    .local v4, "yOffset":F
    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p3, v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1912
    iget v5, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v6, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1913
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1914
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1915
    return-object v0

    .line 1920
    :cond_1
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v5

    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v5, v6, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1922
    .local v5, "scale":F
    :goto_0
    iget v6, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v6, v5

    .line 1923
    .local v6, "imageW":F
    iget v7, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v7, v5

    .line 1925
    .local v7, "imageH":F
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v8

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1935
    :pswitch_1
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float/2addr v8, v6

    sub-float/2addr v3, v8

    .line 1936
    goto :goto_1

    .line 1930
    :pswitch_2
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float/2addr v8, v6

    div-float/2addr v8, v9

    sub-float/2addr v3, v8

    .line 1931
    nop

    .line 1939
    :goto_1
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v8

    .line 1942
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_1

    goto :goto_2

    .line 1952
    :pswitch_3
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v8, v7

    sub-float/2addr v4, v8

    .line 1953
    goto :goto_2

    .line 1947
    :pswitch_4
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v8, v7

    div-float/2addr v8, v9

    sub-float/2addr v4, v8

    .line 1948
    nop

    .line 1959
    :goto_2
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v9, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1960
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1961
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1962
    return-object v0

    .line 1902
    .end local v1    # "xScale":F
    .end local v2    # "yScale":F
    .end local v3    # "xOffset":F
    .end local v4    # "yOffset":F
    .end local v5    # "scale":F
    .end local v6    # "imageW":F
    .end local v7    # "imageH":F
    :cond_3
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 1
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 3423
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 3424
    return-void
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 8
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;

    .line 3429
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3430
    return-void

    .line 3433
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3434
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3435
    const-string v3, "ClipPath reference \'%s\' not found"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3436
    return-void

    .line 3439
    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/caverock/androidsvg/SVG$ClipPath;

    .line 3442
    .local v3, "clipPath":Lcom/caverock/androidsvg/SVG$ClipPath;
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3443
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3444
    return-void

    .line 3447
    :cond_2
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v1

    .line 3449
    .local v4, "userUnits":Z
    :goto_0
    instance-of v5, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    .line 3450
    const-string v5, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v5, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3451
    return-void

    .line 3454
    :cond_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3456
    if-nez v4, :cond_5

    .line 3458
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 3459
    .local v2, "m":Landroid/graphics/Matrix;
    iget v5, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3460
    iget v5, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3461
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3463
    .end local v2    # "m":Landroid/graphics/Matrix;
    :cond_5
    iget-object v2, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    if-eqz v2, :cond_6

    .line 3465
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3470
    :cond_6
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3472
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3474
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 3475
    .local v2, "combinedPath":Landroid/graphics/Path;
    iget-object v5, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3479
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3481
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    .line 3482
    return-void

    .line 3475
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3477
    .local v6, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v6, v1, v2, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    .end local v6    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_1
.end method

.method private checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 3039
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_0

    .line 3040
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    .line 3042
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_1

    .line 3043
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    .line 3045
    :cond_1
    return-void
.end method

.method private checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 1854
    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1855
    return-object v1

    .line 1856
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    .line 1857
    return-object v1

    .line 1859
    :cond_1
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1860
    .local v0, "comma":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-ge v0, v2, :cond_2

    goto :goto_0

    .line 1862
    :cond_2
    const-string v2, ";base64"

    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1863
    return-object v1

    .line 1864
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1865
    .local v1, "imageData":[B
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 1861
    .end local v1    # "imageData":[B
    :cond_4
    :goto_0
    return-object v1
.end method

.method private checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 6
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontWeight"    # Ljava/lang/Integer;
    .param p3, "fontStyle"    # Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2298
    const/4 v0, 0x0

    .line 2301
    .local v0, "font":Landroid/graphics/Typeface;
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2302
    .local v1, "italic":Z
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f4

    if-le v4, v5, :cond_2

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_1

    .line 2303
    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    nop

    .line 2302
    :cond_3
    :goto_1
    nop

    .line 2305
    .local v2, "typefaceStyle":I
    const-string v3, "serif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2306
    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2307
    goto :goto_2

    :cond_4
    const-string v3, "sans-serif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2308
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2309
    goto :goto_2

    :cond_5
    const-string v3, "monospace"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2310
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2311
    goto :goto_2

    :cond_6
    const-string v3, "cursive"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2312
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2313
    goto :goto_2

    :cond_7
    const-string v3, "fantasy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2314
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2316
    :cond_8
    :goto_2
    return-object v0
.end method

.method private checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 413
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v0, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 417
    .local v0, "bobj":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 419
    :cond_1
    return-void
.end method

.method private clamp255(F)I
    .locals 2
    .param p1, "val"    # F

    .line 2322
    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 2323
    .local v0, "i":I
    const/16 v1, 0xff

    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method private clipStatePop()V
    .locals 1

    .line 3530
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 3532
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3533
    return-void
.end method

.method private clipStatePush()V
    .locals 2

    .line 3520
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 3522
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3524
    return-void
.end method

.method private static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 506
    return-void
.end method

.method private decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V
    .locals 6
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "paintref"    # Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 3053
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3054
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_3

    .line 3056
    const-string v1, "%s reference \'%s\' not found"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v3, "Fill"

    goto :goto_0

    :cond_0
    const-string v3, "Stroke"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3057
    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v1, :cond_1

    .line 3058
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v1, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 3059
    goto :goto_1

    .line 3060
    :cond_1
    if-eqz p1, :cond_2

    .line 3061
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_1

    .line 3063
    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3065
    :goto_1
    return-void

    .line 3067
    :cond_3
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v1, :cond_4

    .line 3068
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeLinearGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    .line 3069
    :cond_4
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    if-eqz v1, :cond_5

    .line 3070
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeRadialGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V

    .line 3071
    :cond_5
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    if-eqz v1, :cond_6

    .line 3072
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V

    .line 3074
    :cond_6
    return-void
.end method

.method private display()Z
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1873
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 428
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$PaintReference;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 431
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    if-eqz v1, :cond_0

    .line 432
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 433
    .local v1, "pattern":Lcom/caverock/androidsvg/SVG$Pattern;
    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V

    .line 434
    return-void

    .line 439
    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v1    # "pattern":Lcom/caverock/androidsvg/SVG$Pattern;
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 440
    return-void
.end method

.method private doStroke(Landroid/graphics/Path;)V
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;

    .line 448
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-ne v0, v1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 456
    .local v0, "currentMatrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 457
    .local v1, "transformedPath":Landroid/graphics/Path;
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 459
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 462
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 463
    .local v2, "shader":Landroid/graphics/Shader;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 464
    .local v3, "currentShaderMatrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 466
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 467
    .local v4, "newShaderMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 468
    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 472
    .end local v4    # "newShaderMatrix":Landroid/graphics/Matrix;
    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 475
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 477
    if-eqz v2, :cond_2

    .line 478
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 479
    .end local v0    # "currentMatrix":Landroid/graphics/Matrix;
    .end local v1    # "transformedPath":Landroid/graphics/Path;
    .end local v2    # "shader":Landroid/graphics/Shader;
    .end local v3    # "currentShaderMatrix":Landroid/graphics/Matrix;
    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 484
    :cond_2
    :goto_0
    return-void
.end method

.method private duplicateCanvas()V
    .locals 3

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 739
    .local v0, "newBM":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 741
    .local v1, "newCanvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 742
    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .end local v0    # "newBM":Landroid/graphics/Bitmap;
    .end local v1    # "newCanvas":Landroid/graphics/Canvas;
    nop

    .line 747
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not enough memory to create temporary bitmaps for mask processing"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    throw v0
.end method

.method private enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextContainer;
    .param p2, "textprocessor"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;

    .line 1409
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    return-void

    .line 1412
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1413
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    const/4 v1, 0x1

    .line 1415
    .local v1, "isFirstChild":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1426
    return-void

    .line 1417
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1419
    .local v2, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_2

    .line 1420
    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    .line 1421
    goto :goto_1

    .line 1422
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1424
    :goto_1
    const/4 v1, 0x0

    .end local v2    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0
.end method

.method private static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 498
    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method private extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "parent"    # Lcom/caverock/androidsvg/SVG$TextContainer;
    .param p2, "str"    # Ljava/lang/StringBuilder;

    .line 1696
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1697
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    const/4 v1, 0x1

    .line 1699
    .local v1, "isFirstChild":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1710
    return-void

    .line 1701
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1703
    .local v2, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v3, :cond_1

    .line 1704
    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v3, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 1705
    goto :goto_1

    :cond_1
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_2

    .line 1706
    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .end local v2    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V
    .locals 4
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$GradientElement;
    .param p2, "href"    # Ljava/lang/String;

    .line 3302
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3303
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3305
    const-string v3, "Gradient reference \'%s\' not found"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3306
    return-void

    .line 3308
    :cond_0
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-nez v3, :cond_1

    .line 3309
    const-string v1, "Gradient href attributes must point to other gradient elements"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3310
    return-void

    .line 3312
    :cond_1
    if-ne v0, p1, :cond_2

    .line 3313
    const-string v3, "Circular reference in gradient href attribute \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3314
    return-void

    .line 3317
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$GradientElement;

    .line 3319
    .local v1, "grRef":Lcom/caverock/androidsvg/SVG$GradientElement;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 3320
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 3321
    :cond_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-nez v2, :cond_4

    .line 3322
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 3323
    :cond_4
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-nez v2, :cond_5

    .line 3324
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 3325
    :cond_5
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3326
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    .line 3330
    :cond_6
    :try_start_0
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v2, :cond_7

    .line 3331
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    move-object v3, v0

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    .line 3332
    goto :goto_0

    .line 3333
    :cond_7
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    move-object v3, v0

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3335
    goto :goto_0

    .line 3336
    :catch_0
    move-exception v2

    .line 3338
    :goto_0
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 3339
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3340
    :cond_8
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 1
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
    .param p2, "grRef"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .line 3345
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    .line 3346
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 3347
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 3348
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 3349
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    .line 3350
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 3351
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    .line 3352
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 3353
    :cond_3
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 1
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;
    .param p2, "grRef"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .line 3358
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    .line 3359
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 3360
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 3361
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 3362
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    .line 3363
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 3364
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    .line 3365
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    .line 3366
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_4

    .line 3367
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    .line 3368
    :cond_4
    return-void
.end method

.method private fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V
    .locals 4
    .param p1, "pattern"    # Lcom/caverock/androidsvg/SVG$Pattern;
    .param p2, "href"    # Ljava/lang/String;

    .line 4018
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 4019
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4021
    const-string v3, "Pattern reference \'%s\' not found"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4022
    return-void

    .line 4024
    :cond_0
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    if-nez v3, :cond_1

    .line 4025
    const-string v1, "Pattern href attributes must point to other pattern elements"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4026
    return-void

    .line 4028
    :cond_1
    if-ne v0, p1, :cond_2

    .line 4029
    const-string v3, "Circular reference in pattern href attribute \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4030
    return-void

    .line 4033
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 4035
    .local v1, "pRef":Lcom/caverock/androidsvg/SVG$Pattern;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 4036
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 4037
    :cond_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    .line 4038
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 4039
    :cond_4
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-nez v2, :cond_5

    .line 4040
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 4041
    :cond_5
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_6

    .line 4042
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 4043
    :cond_6
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_7

    .line 4044
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 4045
    :cond_7
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_8

    .line 4046
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 4047
    :cond_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_9

    .line 4048
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 4050
    :cond_9
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4051
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    .line 4052
    :cond_a
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_b

    .line 4053
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4054
    :cond_b
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v2, :cond_c

    .line 4055
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 4058
    :cond_c
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 4059
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    .line 4060
    :cond_d
    return-void
.end method

.method private fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V
    .locals 28
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "pattern"    # Lcom/caverock/androidsvg/SVG$Pattern;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3888
    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 3892
    .local v3, "patternUnitsAreUser":Z
    :goto_0
    iget-object v6, v2, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 3893
    iget-object v6, v2, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {v0, v2, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    .line 3895
    :cond_1
    const/4 v6, 0x0

    if-eqz v3, :cond_6

    .line 3897
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v6

    .line 3898
    .local v7, "x":F
    :goto_1
    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v6

    .line 3899
    .local v8, "y":F
    :goto_2
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_3

    :cond_4
    move v9, v6

    .line 3900
    .local v9, "w":F
    :goto_3
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_5

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    goto :goto_4

    :cond_5
    move v10, v6

    .line 3901
    .local v10, "h":F
    :goto_4
    nop

    .line 3914
    move/from16 v27, v9

    move v9, v8

    move v8, v10

    move/from16 v10, v27

    goto :goto_9

    .line 3905
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "w":F
    .end local v10    # "h":F
    :cond_6
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_7

    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v7

    goto :goto_5

    :cond_7
    move v7, v6

    .line 3906
    .restart local v7    # "x":F
    :goto_5
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_8

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    goto :goto_6

    :cond_8
    move v9, v6

    .line 3907
    .local v9, "y":F
    :goto_6
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_9

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v10

    goto :goto_7

    :cond_9
    move v10, v6

    .line 3908
    .local v10, "w":F
    :goto_7
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_a

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    goto :goto_8

    :cond_a
    move v8, v6

    .line 3909
    .local v8, "h":F
    :goto_8
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v12, v7

    add-float v7, v11, v12

    .line 3910
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v12, v9

    add-float v9, v11, v12

    .line 3911
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v10, v11

    .line 3912
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v8, v11

    .line 3914
    :goto_9
    cmpl-float v11, v10, v6

    if-eqz v11, :cond_1b

    cmpl-float v11, v8, v6

    if-nez v11, :cond_b

    .line 3915
    move/from16 v19, v3

    goto/16 :goto_13

    .line 3918
    :cond_b
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v11, :cond_c

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_a

    :cond_c
    sget-object v11, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 3921
    .local v11, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3923
    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3926
    new-instance v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v12, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 3927
    .local v12, "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v14

    invoke-direct {v0, v12, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 3928
    iget-object v14, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iput-object v15, v14, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 3929
    invoke-direct {v0, v2, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v14

    iput-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3932
    iget-object v14, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3934
    .local v14, "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    iget-object v15, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-eqz v15, :cond_12

    .line 3936
    iget-object v15, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3940
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 3941
    .local v6, "inverse":Landroid/graphics/Matrix;
    iget-object v15, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 3942
    const/16 v15, 0x8

    new-array v15, v15, [F

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v5, v15, v4

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    const/16 v17, 0x1

    aput v5, v15, v17

    .line 3943
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    const/16 v18, 0x2

    aput v5, v15, v18

    const/4 v5, 0x3

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v4, v15, v5

    const/4 v4, 0x4

    .line 3944
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    aput v5, v15, v4

    const/4 v4, 0x5

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v5

    aput v5, v15, v4

    .line 3945
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    const/4 v5, 0x6

    aput v4, v15, v5

    const/4 v4, 0x7

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v5

    aput v5, v15, v4

    .line 3942
    move-object v4, v15

    .line 3946
    .local v4, "pts":[F
    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3948
    new-instance v5, Landroid/graphics/RectF;

    move/from16 v19, v3

    const/4 v15, 0x0

    aget v3, v4, v15

    .end local v3    # "patternUnitsAreUser":Z
    .local v19, "patternUnitsAreUser":Z
    move-object/from16 v20, v6

    const/16 v17, 0x1

    aget v6, v4, v17

    .end local v6    # "inverse":Landroid/graphics/Matrix;
    .local v20, "inverse":Landroid/graphics/Matrix;
    move-object/from16 v21, v12

    aget v12, v4, v15

    .end local v12    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .local v21, "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    aget v15, v4, v17

    invoke-direct {v5, v3, v6, v12, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, v5

    .line 3949
    .local v3, "rect":Landroid/graphics/RectF;
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_b
    const/4 v6, 0x6

    if-le v5, v6, :cond_d

    .line 3955
    .end local v5    # "i":I
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v12, v3, Landroid/graphics/RectF;->top:F

    iget v15, v3, Landroid/graphics/RectF;->right:F

    iget v13, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v15, v13

    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v22, v14

    iget v14, v3, Landroid/graphics/RectF;->top:F

    .end local v14    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .local v22, "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    sub-float/2addr v13, v14

    invoke-direct {v5, v6, v12, v15, v13}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v14, v5

    .end local v3    # "rect":Landroid/graphics/RectF;
    .end local v4    # "pts":[F
    .end local v20    # "inverse":Landroid/graphics/Matrix;
    .end local v22    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .restart local v14    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    goto :goto_c

    .line 3950
    .restart local v3    # "rect":Landroid/graphics/RectF;
    .restart local v4    # "pts":[F
    .restart local v5    # "i":I
    .restart local v20    # "inverse":Landroid/graphics/Matrix;
    :cond_d
    move-object/from16 v22, v14

    .end local v14    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .restart local v22    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    aget v12, v4, v5

    iget v13, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_e

    aget v12, v4, v5

    iput v12, v3, Landroid/graphics/RectF;->left:F

    .line 3951
    :cond_e
    aget v12, v4, v5

    iget v13, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f

    aget v12, v4, v5

    iput v12, v3, Landroid/graphics/RectF;->right:F

    .line 3952
    :cond_f
    add-int/lit8 v12, v5, 0x1

    aget v12, v4, v12

    iget v13, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_10

    add-int/lit8 v12, v5, 0x1

    aget v12, v4, v12

    iput v12, v3, Landroid/graphics/RectF;->top:F

    .line 3953
    :cond_10
    add-int/lit8 v12, v5, 0x1

    aget v12, v4, v12

    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_11

    add-int/lit8 v12, v5, 0x1

    aget v12, v4, v12

    iput v12, v3, Landroid/graphics/RectF;->bottom:F

    .line 3949
    :cond_11
    add-int/lit8 v5, v5, 0x2

    move-object/from16 v14, v22

    move-object/from16 v13, p2

    goto :goto_b

    .line 3959
    .end local v4    # "pts":[F
    .end local v5    # "i":I
    .end local v19    # "patternUnitsAreUser":Z
    .end local v20    # "inverse":Landroid/graphics/Matrix;
    .end local v21    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .end local v22    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .local v3, "patternUnitsAreUser":Z
    .restart local v12    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .restart local v14    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    :cond_12
    move/from16 v19, v3

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    const/16 v17, 0x1

    .end local v3    # "patternUnitsAreUser":Z
    .end local v12    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .end local v14    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .restart local v19    # "patternUnitsAreUser":Z
    .restart local v21    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .restart local v22    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    move-object/from16 v14, v22

    .end local v22    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .restart local v14    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    :goto_c
    iget v3, v14, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v3, v7

    div-float/2addr v3, v10

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v10

    add-float/2addr v3, v7

    .line 3960
    .local v3, "originX":F
    iget v4, v14, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    sub-float/2addr v4, v9

    div-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v9

    .line 3962
    .local v4, "originY":F
    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    .line 3963
    .local v5, "right":F
    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v6

    .line 3964
    .local v6, "bottom":F
    new-instance v12, Lcom/caverock/androidsvg/SVG$Box;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v13, v10, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 3965
    .local v12, "stepViewBox":Lcom/caverock/androidsvg/SVG$Box;
    move v13, v4

    .local v13, "stepY":F
    :goto_d
    cmpg-float v15, v13, v6

    if-ltz v15, :cond_13

    .line 4007
    .end local v13    # "stepY":F
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4008
    return-void

    .line 3967
    .restart local v13    # "stepY":F
    :cond_13
    move v15, v3

    .local v15, "stepX":F
    :goto_e
    cmpg-float v16, v15, v5

    if-ltz v16, :cond_14

    .line 3965
    .end local v15    # "stepX":F
    add-float/2addr v13, v8

    goto :goto_d

    .line 3969
    .restart local v15    # "stepX":F
    :cond_14
    iput v15, v12, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 3970
    iput v13, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 3972
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3974
    move/from16 v23, v3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .end local v3    # "originX":F
    .local v23, "originX":F
    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_15

    .line 3975
    iget v3, v12, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v24, v4

    iget v4, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .end local v4    # "originY":F
    .local v24, "originY":F
    move/from16 v25, v5

    iget v5, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .end local v5    # "right":F
    .local v25, "right":F
    move/from16 v26, v6

    iget v6, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .end local v6    # "bottom":F
    .local v26, "bottom":F
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_f

    .line 3978
    .end local v24    # "originY":F
    .end local v25    # "right":F
    .end local v26    # "bottom":F
    .restart local v4    # "originY":F
    .restart local v5    # "right":F
    .restart local v6    # "bottom":F
    :cond_15
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    .end local v4    # "originY":F
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    .restart local v24    # "originY":F
    .restart local v25    # "right":F
    .restart local v26    # "bottom":F
    :goto_f
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v3, :cond_16

    .line 3980
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v0, v12, v4, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3981
    goto :goto_11

    .line 3984
    :cond_16
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v3, :cond_17

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x0

    goto :goto_10

    :cond_17
    move/from16 v3, v17

    .line 3986
    .local v3, "patternContentUnitsAreUser":Z
    :goto_10
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v15, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3987
    if-nez v3, :cond_18

    .line 3988
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3992
    .end local v3    # "patternContentUnitsAreUser":Z
    :cond_18
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v3

    .line 3995
    .local v3, "compositing":Z
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 3999
    if-eqz v3, :cond_19

    .line 4000
    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 4003
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3967
    .end local v3    # "compositing":Z
    add-float/2addr v15, v10

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    goto/16 :goto_e

    .line 3995
    .restart local v3    # "compositing":Z
    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3996
    .local v5, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {v0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .end local v5    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_12

    .line 3915
    .end local v11    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v12    # "stepViewBox":Lcom/caverock/androidsvg/SVG$Box;
    .end local v13    # "stepY":F
    .end local v14    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .end local v15    # "stepX":F
    .end local v19    # "patternUnitsAreUser":Z
    .end local v21    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .end local v23    # "originX":F
    .end local v24    # "originY":F
    .end local v25    # "right":F
    .end local v26    # "bottom":F
    .local v3, "patternUnitsAreUser":Z
    :cond_1b
    move/from16 v19, v3

    .end local v3    # "patternUnitsAreUser":Z
    .restart local v19    # "patternUnitsAreUser":Z
    :goto_13
    return-void
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 2987
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 2988
    .local v0, "newState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 2989
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    return-object v1
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "newState"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 2995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2999
    .local v0, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgElementBase;>;"
    :goto_0
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eqz v1, :cond_0

    .line 3000
    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3002
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_3

    .line 3003
    nop

    .line 3008
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3012
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3013
    iget-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_1

    .line 3014
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3018
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 3021
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    iput-boolean v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    .line 3023
    return-object p2

    .line 3008
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 3009
    .local v2, "ancestor":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    invoke-direct {p0, p2, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .end local v2    # "ancestor":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    goto :goto_1

    .line 3004
    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object p1, v1

    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 2998
    goto :goto_0
.end method

.method private getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 2

    .line 1350
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :goto_0
    return-object v0

    .line 1351
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0
.end method

.method private getClipRuleFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .line 3538
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-nez v0, :cond_0

    .line 3539
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3540
    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3546
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3543
    :cond_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method private getFillTypeFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .line 2329
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-nez v0, :cond_0

    .line 2330
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 2331
    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2337
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 2334
    :cond_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method private static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 511
    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method private isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .locals 4
    .param p1, "style"    # Lcom/caverock/androidsvg/SVG$Style;
    .param p2, "flag"    # J

    .line 1968
    iget-wide v0, p1, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private makeLinearGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 26
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    .line 3079
    move-object/from16 v3, p3

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3080
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3082
    :cond_0
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 3083
    .local v4, "userUnits":Z
    :goto_0
    if-eqz p1, :cond_2

    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 3086
    .local v7, "paint":Landroid/graphics/Paint;
    :goto_1
    const/4 v8, 0x0

    if-eqz v4, :cond_7

    .line 3088
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v9

    .line 3089
    .local v9, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    iget-object v10, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_3

    iget-object v10, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    goto :goto_2

    :cond_3
    move v10, v8

    .line 3090
    .local v10, "_x1":F
    :goto_2
    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_4

    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    goto :goto_3

    :cond_4
    move v11, v8

    .line 3091
    .local v11, "_y1":F
    :goto_3
    iget-object v12, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v12, :cond_5

    iget-object v12, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v12

    goto :goto_4

    :cond_5
    iget v12, v9, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 3092
    .local v12, "_x2":F
    :goto_4
    iget-object v13, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v13, :cond_6

    iget-object v8, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    nop

    .line 3093
    .end local v9    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    .local v8, "_y2":F
    :cond_6
    nop

    .line 3099
    move/from16 v17, v10

    .end local v10    # "_x1":F
    .end local v11    # "_y1":F
    .end local v12    # "_x2":F
    .local v17, "_x1":F
    .local v18, "_y1":F
    .local v19, "_x2":F
    :goto_5
    move/from16 v18, v11

    move/from16 v19, v12

    goto :goto_9

    .line 3096
    .end local v8    # "_y2":F
    .end local v17    # "_x1":F
    .end local v18    # "_y1":F
    .end local v19    # "_x2":F
    :cond_7
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_8

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    goto :goto_6

    :cond_8
    move v9, v8

    .line 3097
    .local v9, "_x1":F
    :goto_6
    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_9

    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v11

    goto :goto_7

    :cond_9
    move v11, v8

    .line 3098
    .restart local v11    # "_y1":F
    :goto_7
    iget-object v12, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v12, :cond_a

    iget-object v12, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v12, v0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v12

    goto :goto_8

    :cond_a
    move v12, v10

    .line 3099
    .restart local v12    # "_x2":F
    :goto_8
    iget-object v13, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v13, :cond_b

    iget-object v8, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    nop

    :cond_b
    move/from16 v17, v9

    goto :goto_5

    .line 3103
    .end local v9    # "_x1":F
    .end local v11    # "_y1":F
    .end local v12    # "_x2":F
    .restart local v8    # "_y2":F
    .restart local v17    # "_x1":F
    .restart local v18    # "_y1":F
    .restart local v19    # "_x2":F
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3106
    invoke-direct {v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v9

    iput-object v9, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3109
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move-object v15, v9

    .line 3110
    .local v15, "m":Landroid/graphics/Matrix;
    if-nez v4, :cond_c

    .line 3112
    iget v9, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v10, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v15, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3113
    iget v9, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v10, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v15, v9, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3115
    :cond_c
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v9, :cond_d

    .line 3117
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v9}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3121
    :cond_d
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 3122
    .local v14, "numStops":I
    if-nez v14, :cond_f

    .line 3124
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3125
    if-eqz p1, :cond_e

    .line 3126
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_a

    .line 3128
    :cond_e
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3129
    :goto_a
    return-void

    .line 3132
    :cond_f
    new-array v5, v14, [I

    .line 3133
    .local v5, "colours":[I
    new-array v13, v14, [F

    .line 3134
    .local v13, "positions":[F
    const/4 v9, 0x0

    .line 3135
    .local v9, "i":I
    const/high16 v10, -0x40800000    # -1.0f

    .line 3136
    .local v10, "lastOffset":F
    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v20, v9

    move/from16 v21, v10

    .end local v9    # "i":I
    .end local v10    # "lastOffset":F
    .local v20, "i":I
    .local v21, "lastOffset":F
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_15

    .line 3161
    cmpl-float v9, v17, v19

    if-nez v9, :cond_10

    cmpl-float v9, v18, v8

    if-eqz v9, :cond_11

    :cond_10
    if-ne v14, v6, :cond_12

    .line 3162
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3163
    add-int/lit8 v6, v14, -0x1

    aget v6, v5, v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3164
    return-void

    .line 3168
    :cond_12
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3169
    .local v6, "tileMode":Landroid/graphics/Shader$TileMode;
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v9, :cond_14

    .line 3171
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v9, v10, :cond_13

    .line 3172
    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_c

    .line 3173
    :cond_13
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v9, v10, :cond_14

    .line 3174
    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 3177
    :cond_14
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3180
    new-instance v22, Landroid/graphics/LinearGradient;

    move-object/from16 v9, v22

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v23, v13

    move v13, v8

    .end local v13    # "positions":[F
    .local v23, "positions":[F
    move/from16 v24, v14

    move-object v14, v5

    .end local v14    # "numStops":I
    .local v24, "numStops":I
    move-object v1, v15

    move-object/from16 v15, v23

    .end local v15    # "m":Landroid/graphics/Matrix;
    .local v1, "m":Landroid/graphics/Matrix;
    move-object/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3181
    .local v9, "gr":Landroid/graphics/LinearGradient;
    invoke-virtual {v9, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3182
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3183
    return-void

    .line 3136
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v6    # "tileMode":Landroid/graphics/Shader$TileMode;
    .end local v9    # "gr":Landroid/graphics/LinearGradient;
    .end local v23    # "positions":[F
    .end local v24    # "numStops":I
    .restart local v13    # "positions":[F
    .restart local v14    # "numStops":I
    .restart local v15    # "m":Landroid/graphics/Matrix;
    :cond_15
    move-object/from16 v23, v13

    move/from16 v24, v14

    move-object v1, v15

    .end local v13    # "positions":[F
    .end local v14    # "numStops":I
    .end local v15    # "m":Landroid/graphics/Matrix;
    .restart local v1    # "m":Landroid/graphics/Matrix;
    .restart local v23    # "positions":[F
    .restart local v24    # "numStops":I
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3138
    .local v9, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object v10, v9

    check-cast v10, Lcom/caverock/androidsvg/SVG$Stop;

    .line 3139
    .local v10, "stop":Lcom/caverock/androidsvg/SVG$Stop;
    if-eqz v20, :cond_17

    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v21

    if-ltz v12, :cond_16

    goto :goto_d

    .line 3145
    :cond_16
    aput v21, v23, v20

    goto :goto_e

    .line 3140
    :cond_17
    :goto_d
    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v23, v20

    .line 3141
    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 3142
    .end local v21    # "lastOffset":F
    .local v12, "lastOffset":F
    nop

    .line 3148
    move/from16 v21, v12

    .end local v12    # "lastOffset":F
    .restart local v21    # "lastOffset":F
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3150
    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, v12, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3151
    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v12, Lcom/caverock/androidsvg/SVG$Colour;

    .line 3152
    .local v12, "col":Lcom/caverock/androidsvg/SVG$Colour;
    if-nez v12, :cond_18

    .line 3153
    sget-object v12, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    .line 3154
    :cond_18
    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-direct {v0, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v13

    shl-int/lit8 v13, v13, 0x18

    iget v14, v12, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    or-int/2addr v13, v14

    aput v13, v5, v20

    .line 3155
    add-int/lit8 v20, v20, 0x1

    .line 3157
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3136
    .end local v9    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v10    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    .end local v12    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    move-object v15, v1

    move-object/from16 v13, v23

    move/from16 v14, v24

    goto/16 :goto_b
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;
    .locals 18
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Circle;

    move-object/from16 v0, p0

    .line 3801
    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3802
    .local v2, "cx":F
    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    nop

    .line 3803
    .local v3, "cy":F
    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    .line 3805
    .local v11, "r":F
    sub-float v12, v2, v11

    .line 3806
    .local v12, "left":F
    sub-float v13, v3, v11

    .line 3807
    .local v13, "top":F
    add-float v14, v2, v11

    .line 3808
    .local v14, "right":F
    add-float v15, v3, v11

    .line 3810
    .local v15, "bottom":F
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    .line 3811
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v11, v5

    mul-float/2addr v5, v11

    invoke-direct {v4, v12, v13, v6, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3814
    :cond_2
    const v4, 0x3f0d6289

    mul-float v16, v11, v4

    .line 3816
    .local v16, "cp":F
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object v10, v4

    .line 3817
    .local v10, "p":Landroid/graphics/Path;
    invoke-virtual {v10, v2, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3818
    add-float v5, v2, v16

    sub-float v8, v3, v16

    move v6, v13

    move v7, v14

    move v9, v14

    move-object/from16 v17, v10

    move v10, v3

    .end local v10    # "p":Landroid/graphics/Path;
    .local v17, "p":Landroid/graphics/Path;
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3819
    add-float v6, v3, v16

    add-float v7, v2, v16

    move-object/from16 v4, v17

    move v5, v14

    move v8, v15

    move v9, v2

    move v10, v15

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3820
    sub-float v5, v2, v16

    add-float v8, v3, v16

    move v6, v15

    move v7, v12

    move v9, v12

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3821
    sub-float v6, v3, v16

    sub-float v7, v2, v16

    move v5, v12

    move v8, v13

    move v9, v2

    move v10, v13

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3822
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 3823
    .end local v17    # "p":Landroid/graphics/Path;
    .local v4, "p":Landroid/graphics/Path;
    return-object v4
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;
    .locals 20
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Ellipse;

    move-object/from16 v0, p0

    .line 3829
    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3830
    .local v2, "cx":F
    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    nop

    .line 3831
    .local v3, "cy":F
    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    .line 3832
    .local v11, "rx":F
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v12

    .line 3834
    .local v12, "ry":F
    sub-float v13, v2, v11

    .line 3835
    .local v13, "left":F
    sub-float v14, v3, v12

    .line 3836
    .local v14, "top":F
    add-float v15, v2, v11

    .line 3837
    .local v15, "right":F
    add-float v16, v3, v12

    .line 3839
    .local v16, "bottom":F
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    .line 3840
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v11, v5

    mul-float/2addr v5, v12

    invoke-direct {v4, v13, v14, v6, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3843
    :cond_2
    const v4, 0x3f0d6289

    mul-float v17, v11, v4

    .line 3844
    .local v17, "cpx":F
    mul-float v18, v12, v4

    .line 3846
    .local v18, "cpy":F
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object v10, v4

    .line 3847
    .local v10, "p":Landroid/graphics/Path;
    invoke-virtual {v10, v2, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3848
    add-float v5, v2, v17

    sub-float v8, v3, v18

    move v6, v14

    move v7, v15

    move v9, v15

    move-object/from16 v19, v10

    move v10, v3

    .end local v10    # "p":Landroid/graphics/Path;
    .local v19, "p":Landroid/graphics/Path;
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3849
    add-float v6, v3, v18

    add-float v7, v2, v17

    move-object/from16 v4, v19

    move v5, v15

    move/from16 v8, v16

    move v9, v2

    move/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3850
    sub-float v5, v2, v17

    add-float v8, v3, v18

    move/from16 v6, v16

    move v7, v13

    move v9, v13

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3851
    sub-float v6, v3, v18

    sub-float v7, v2, v17

    move v5, v13

    move v8, v14

    move v9, v2

    move v10, v14

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3852
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 3853
    .end local v19    # "p":Landroid/graphics/Path;
    .local v4, "p":Landroid/graphics/Path;
    return-object v4
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;

    .line 3721
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 3722
    .local v0, "x1":F
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 3723
    .local v2, "y1":F
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 3724
    .local v3, "x2":F
    :goto_2
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 3726
    .local v1, "y2":F
    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_4

    .line 3727
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v7, v3, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3730
    :cond_4
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 3731
    .local v4, "p":Landroid/graphics/Path;
    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3732
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3733
    return-object v4
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 3859
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 3861
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3862
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 3865
    .end local v1    # "i":I
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v1, :cond_0

    .line 3866
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3868
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_1

    .line 3869
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3872
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3873
    return-object v0

    .line 3863
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v1

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3862
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;
    .locals 26
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Rect;

    move-object/from16 v0, p0

    .line 3741
    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_0

    .line 3742
    const/4 v2, 0x0

    .line 3743
    .local v2, "rx":F
    const/4 v3, 0x0

    .line 3744
    .local v3, "ry":F
    goto :goto_0

    .end local v2    # "rx":F
    .end local v3    # "ry":F
    :cond_0
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    .line 3745
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v3, v2

    .line 3746
    .restart local v2    # "rx":F
    .restart local v3    # "ry":F
    goto :goto_0

    .end local v2    # "rx":F
    .end local v3    # "ry":F
    :cond_1
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_2

    .line 3747
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v3, v2

    .line 3748
    .restart local v2    # "rx":F
    .restart local v3    # "ry":F
    goto :goto_0

    .line 3749
    .end local v2    # "rx":F
    .end local v3    # "ry":F
    :cond_2
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 3750
    .restart local v2    # "rx":F
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 3752
    .restart local v3    # "ry":F
    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 3753
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 3754
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v5

    .line 3755
    .local v4, "x":F
    :goto_1
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    move v14, v6

    .line 3756
    .local v14, "y":F
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v15

    .line 3757
    .local v15, "w":F
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    .line 3759
    .local v13, "h":F
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v6, :cond_5

    .line 3760
    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v6, v4, v14, v15, v13}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3763
    :cond_5
    add-float v12, v4, v15

    .line 3764
    .local v12, "right":F
    add-float v11, v14, v13

    .line 3766
    .local v11, "bottom":F
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v10, v6

    .line 3767
    .local v10, "p":Landroid/graphics/Path;
    cmpl-float v6, v2, v5

    if-eqz v6, :cond_7

    cmpl-float v5, v3, v5

    if-nez v5, :cond_6

    .line 3770
    move-object v0, v10

    move v1, v11

    move/from16 v25, v13

    move/from16 v24, v15

    move v15, v12

    goto/16 :goto_3

    .line 3781
    :cond_6
    const v5, 0x3f0d6289

    mul-float v23, v2, v5

    .line 3782
    .local v23, "cpx":F
    mul-float/2addr v5, v3

    .line 3784
    .local v5, "cpy":F
    add-float v6, v14, v3

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3785
    add-float v6, v14, v3

    sub-float v8, v6, v5

    add-float v6, v4, v2

    sub-float v9, v6, v23

    add-float v16, v4, v2

    move-object v6, v10

    move v7, v4

    move-object v0, v10

    move v10, v14

    .end local v10    # "p":Landroid/graphics/Path;
    .local v0, "p":Landroid/graphics/Path;
    move v1, v11

    move/from16 v11, v16

    .end local v11    # "bottom":F
    .local v1, "bottom":F
    move/from16 v24, v15

    move v15, v12

    move v12, v14

    .end local v12    # "right":F
    .local v15, "right":F
    .local v24, "w":F
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3786
    sub-float v12, v15, v2

    invoke-virtual {v0, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3787
    sub-float v12, v15, v2

    add-float v8, v12, v23

    add-float v6, v14, v3

    sub-float v11, v6, v5

    add-float v6, v14, v3

    move-object v7, v0

    move v9, v14

    move v10, v15

    move v12, v15

    move/from16 v25, v13

    move v13, v6

    .end local v13    # "h":F
    .local v25, "h":F
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3788
    sub-float v11, v1, v3

    invoke-virtual {v0, v15, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3789
    sub-float v11, v1, v3

    add-float v18, v11, v5

    sub-float v12, v15, v2

    add-float v19, v12, v23

    sub-float v21, v15, v2

    move-object/from16 v16, v0

    move/from16 v17, v15

    move/from16 v20, v1

    move/from16 v22, v1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3790
    add-float v6, v4, v2

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3791
    add-float v6, v4, v2

    sub-float v7, v6, v23

    sub-float v11, v1, v3

    add-float v10, v11, v5

    sub-float v12, v1, v3

    move-object v6, v0

    move v8, v1

    move v9, v4

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3792
    add-float v6, v14, v3

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .end local v5    # "cpy":F
    .end local v23    # "cpx":F
    goto :goto_4

    .line 3770
    .end local v0    # "p":Landroid/graphics/Path;
    .end local v1    # "bottom":F
    .end local v24    # "w":F
    .end local v25    # "h":F
    .restart local v10    # "p":Landroid/graphics/Path;
    .restart local v11    # "bottom":F
    .restart local v12    # "right":F
    .restart local v13    # "h":F
    .local v15, "w":F
    :cond_7
    move-object v0, v10

    move v1, v11

    move/from16 v25, v13

    move/from16 v24, v15

    move v15, v12

    .end local v10    # "p":Landroid/graphics/Path;
    .end local v11    # "bottom":F
    .end local v12    # "right":F
    .end local v13    # "h":F
    .restart local v0    # "p":Landroid/graphics/Path;
    .restart local v1    # "bottom":F
    .local v15, "right":F
    .restart local v24    # "w":F
    .restart local v25    # "h":F
    :goto_3
    invoke-virtual {v0, v4, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3771
    invoke-virtual {v0, v15, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3772
    invoke-virtual {v0, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3773
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3774
    invoke-virtual {v0, v4, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3775
    nop

    .line 3794
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3795
    return-object v0
.end method

.method private makeRadialGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 24
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    .line 3188
    move-object/from16 v3, p3

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3189
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3191
    :cond_0
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 3192
    .local v4, "userUnits":Z
    :goto_0
    if-eqz p1, :cond_2

    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 3195
    .local v7, "paint":Landroid/graphics/Paint;
    :goto_1
    if-eqz v4, :cond_6

    .line 3197
    new-instance v8, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v9, 0x42480000    # 50.0f

    sget-object v10, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 3198
    .local v8, "fiftyPercent":Lcom/caverock/androidsvg/SVG$Length;
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_3

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    .line 3199
    .local v9, "_cx":F
    :goto_2
    iget-object v10, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_4

    iget-object v10, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    goto :goto_3

    :cond_4
    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    .line 3200
    .local v10, "_cy":F
    :goto_3
    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_5

    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    goto :goto_4

    :cond_5
    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    .end local v8    # "fiftyPercent":Lcom/caverock/androidsvg/SVG$Length;
    :goto_4
    move v8, v11

    .line 3201
    .local v8, "_r":F
    nop

    .line 3206
    move/from16 v16, v9

    move/from16 v17, v10

    goto :goto_7

    .line 3204
    .end local v8    # "_r":F
    .end local v9    # "_cx":F
    .end local v10    # "_cy":F
    :cond_6
    iget-object v8, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v8, :cond_7

    iget-object v8, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    goto :goto_5

    :cond_7
    move v8, v9

    .line 3205
    .local v8, "_cx":F
    :goto_5
    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_8

    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v11

    goto :goto_6

    :cond_8
    move v11, v9

    .line 3206
    .local v11, "_cy":F
    :goto_6
    iget-object v12, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v12, :cond_9

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    nop

    :cond_9
    move/from16 v16, v8

    move v8, v9

    move/from16 v17, v11

    .line 3212
    .end local v11    # "_cy":F
    .local v8, "_r":F
    .local v16, "_cx":F
    .local v17, "_cy":F
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3215
    invoke-direct {v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v9

    iput-object v9, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3218
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move-object v15, v9

    .line 3219
    .local v15, "m":Landroid/graphics/Matrix;
    if-nez v4, :cond_a

    .line 3221
    iget v9, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v10, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v15, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3222
    iget v9, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v10, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v15, v9, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3224
    :cond_a
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v9, :cond_b

    .line 3226
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v9}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3230
    :cond_b
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 3231
    .local v14, "numStops":I
    if-nez v14, :cond_d

    .line 3233
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3234
    if-eqz p1, :cond_c

    .line 3235
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_8

    .line 3237
    :cond_c
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3238
    :goto_8
    return-void

    .line 3241
    :cond_d
    new-array v5, v14, [I

    .line 3242
    .local v5, "colours":[I
    new-array v13, v14, [F

    .line 3243
    .local v13, "positions":[F
    const/4 v9, 0x0

    .line 3244
    .local v9, "i":I
    const/high16 v10, -0x40800000    # -1.0f

    .line 3245
    .local v10, "lastOffset":F
    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v18, v9

    move/from16 v19, v10

    .end local v9    # "i":I
    .end local v10    # "lastOffset":F
    .local v18, "i":I
    .local v19, "lastOffset":F
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_12

    .line 3270
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_11

    if-ne v14, v6, :cond_e

    .line 3271
    move-object/from16 v21, v13

    move/from16 v22, v14

    move-object v1, v15

    goto :goto_b

    .line 3277
    :cond_e
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3278
    .local v6, "tileMode":Landroid/graphics/Shader$TileMode;
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v9, :cond_10

    .line 3280
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v9, v10, :cond_f

    .line 3281
    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_a

    .line 3282
    :cond_f
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v9, v10, :cond_10

    .line 3283
    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 3286
    :cond_10
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3289
    new-instance v20, Landroid/graphics/RadialGradient;

    move-object/from16 v9, v20

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v8

    move-object/from16 v21, v13

    move-object v13, v5

    .end local v13    # "positions":[F
    .local v21, "positions":[F
    move/from16 v22, v14

    move-object/from16 v14, v21

    .end local v14    # "numStops":I
    .local v22, "numStops":I
    move-object v1, v15

    move-object v15, v6

    .end local v15    # "m":Landroid/graphics/Matrix;
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3290
    .local v9, "gr":Landroid/graphics/RadialGradient;
    invoke-virtual {v9, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3291
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3292
    return-void

    .line 3271
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v6    # "tileMode":Landroid/graphics/Shader$TileMode;
    .end local v9    # "gr":Landroid/graphics/RadialGradient;
    .end local v21    # "positions":[F
    .end local v22    # "numStops":I
    .restart local v13    # "positions":[F
    .restart local v14    # "numStops":I
    .restart local v15    # "m":Landroid/graphics/Matrix;
    :cond_11
    move-object/from16 v21, v13

    move/from16 v22, v14

    move-object v1, v15

    .end local v13    # "positions":[F
    .end local v14    # "numStops":I
    .end local v15    # "m":Landroid/graphics/Matrix;
    .restart local v1    # "m":Landroid/graphics/Matrix;
    .restart local v21    # "positions":[F
    .restart local v22    # "numStops":I
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3272
    add-int/lit8 v14, v22, -0x1

    aget v6, v5, v14

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3273
    return-void

    .line 3245
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v21    # "positions":[F
    .end local v22    # "numStops":I
    .restart local v13    # "positions":[F
    .restart local v14    # "numStops":I
    .restart local v15    # "m":Landroid/graphics/Matrix;
    :cond_12
    move-object/from16 v21, v13

    move/from16 v22, v14

    move-object v1, v15

    .end local v13    # "positions":[F
    .end local v14    # "numStops":I
    .end local v15    # "m":Landroid/graphics/Matrix;
    .restart local v1    # "m":Landroid/graphics/Matrix;
    .restart local v21    # "positions":[F
    .restart local v22    # "numStops":I
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3247
    .local v9, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object v10, v9

    check-cast v10, Lcom/caverock/androidsvg/SVG$Stop;

    .line 3248
    .local v10, "stop":Lcom/caverock/androidsvg/SVG$Stop;
    if-eqz v18, :cond_14

    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v19

    if-ltz v12, :cond_13

    goto :goto_c

    .line 3254
    :cond_13
    aput v19, v21, v18

    goto :goto_d

    .line 3249
    :cond_14
    :goto_c
    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v21, v18

    .line 3250
    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 3251
    .end local v19    # "lastOffset":F
    .local v12, "lastOffset":F
    nop

    .line 3257
    move/from16 v19, v12

    .end local v12    # "lastOffset":F
    .restart local v19    # "lastOffset":F
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3259
    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, v12, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3260
    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v12, Lcom/caverock/androidsvg/SVG$Colour;

    .line 3261
    .local v12, "col":Lcom/caverock/androidsvg/SVG$Colour;
    if-nez v12, :cond_15

    .line 3262
    sget-object v12, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    .line 3263
    :cond_15
    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-direct {v0, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v13

    shl-int/lit8 v13, v13, 0x18

    iget v14, v12, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    or-int/2addr v13, v14

    aput v13, v5, v18

    .line 3264
    add-int/lit8 v18, v18, 0x1

    .line 3266
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3245
    .end local v9    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v10    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    .end local v12    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    move-object v15, v1

    move-object/from16 v13, v21

    move/from16 v14, v22

    goto/16 :goto_9
.end method

.method private parentPop()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 376
    return-void
.end method

.method private parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 367
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method private popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 702
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 705
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    .line 706
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 708
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processMaskBitmaps()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 711
    .local v1, "maskedContent":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Canvas;

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 712
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 714
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 715
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 716
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 717
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 720
    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v1    # "maskedContent":Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 721
    return-void
.end method

.method private processMaskBitmaps()Landroid/graphics/Bitmap;
    .locals 18

    .line 753
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 755
    .local v1, "mask":Landroid/graphics/Bitmap;
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/graphics/Bitmap;

    .line 759
    .local v11, "maskedContent":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 760
    .local v12, "w":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 761
    .local v13, "h":I
    new-array v14, v12, [I

    .line 762
    .local v14, "maskBuf":[I
    new-array v15, v12, [I

    .line 763
    .local v15, "maskedContentBuf":[I
    const/4 v2, 0x0

    .local v2, "y":I
    move v10, v2

    .end local v2    # "y":I
    .local v10, "y":I
    :goto_0
    if-lt v10, v13, :cond_0

    .line 787
    .end local v10    # "y":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 788
    return-object v11

    .line 765
    .restart local v10    # "y":I
    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    move-object v3, v14

    move v5, v12

    move v7, v10

    move v8, v12

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 766
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    move-object v3, v11

    move-object v4, v15

    move v6, v12

    move v8, v10

    move v9, v12

    move/from16 v16, v10

    move v10, v2

    .end local v10    # "y":I
    .local v16, "y":I
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 767
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    if-lt v2, v12, :cond_1

    .line 785
    .end local v2    # "x":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object v3, v11

    move-object v4, v15

    move v6, v12

    move/from16 v8, v16

    move v9, v12

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 763
    add-int/lit8 v10, v16, 0x1

    .end local v16    # "y":I
    .restart local v10    # "y":I
    goto :goto_0

    .line 769
    .end local v10    # "y":I
    .restart local v2    # "x":I
    .restart local v16    # "y":I
    :cond_1
    aget v3, v14, v2

    .line 770
    .local v3, "px":I
    and-int/lit16 v4, v3, 0xff

    .line 771
    .local v4, "b":I
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 772
    .local v5, "g":I
    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 773
    .local v6, "r":I
    shr-int/lit8 v7, v3, 0x18

    and-int/lit16 v7, v7, 0xff

    .line 774
    .local v7, "a":I
    if-nez v7, :cond_2

    .line 776
    const/4 v8, 0x0

    aput v8, v15, v2

    .line 777
    goto :goto_2

    .line 779
    :cond_2
    mul-int/lit16 v8, v6, 0x1b33

    mul-int/lit16 v9, v5, 0x5b92

    add-int/2addr v8, v9

    mul-int/lit16 v9, v4, 0x93a

    add-int/2addr v8, v9

    mul-int/2addr v8, v7

    const v9, 0x7f8000

    div-int/2addr v8, v9

    .line 780
    .local v8, "maskAlpha":I
    aget v9, v15, v2

    .line 781
    .local v9, "content":I
    shr-int/lit8 v10, v9, 0x18

    and-int/lit16 v10, v10, 0xff

    .line 782
    .local v10, "contentAlpha":I
    mul-int v0, v10, v8

    div-int/lit16 v0, v0, 0xff

    .line 783
    .end local v10    # "contentAlpha":I
    .local v0, "contentAlpha":I
    const v10, 0xffffff

    and-int/2addr v10, v9

    shl-int/lit8 v17, v0, 0x18

    or-int v10, v10, v17

    aput v10, v15, v2

    .line 767
    .end local v0    # "contentAlpha":I
    .end local v3    # "px":I
    .end local v4    # "b":I
    .end local v5    # "g":I
    .end local v6    # "r":I
    .end local v7    # "a":I
    .end local v8    # "maskAlpha":I
    .end local v9    # "content":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_1
.end method

.method private processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 8
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "textprocessor"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;

    .line 1432
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1433
    return-void

    .line 1435
    :cond_0
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v0, :cond_1

    .line 1438
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1440
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V

    .line 1443
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 1444
    goto/16 :goto_8

    .line 1445
    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1447
    const-string v0, "TSpan render"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1452
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TSpan;

    .line 1454
    .local v0, "tspan":Lcom/caverock/androidsvg/SVG$TSpan;
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1456
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1459
    const/4 v2, 0x0

    .local v2, "x":F
    const/4 v3, 0x0

    .local v3, "y":F
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .line 1460
    .local v5, "dy":F
    instance-of v6, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v6, :cond_a

    .line 1461
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_1

    :cond_3
    :goto_0
    move-object v6, p2

    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    :goto_1
    move v2, v6

    .line 1462
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_3

    :cond_5
    :goto_2
    move-object v6, p2

    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    :goto_3
    move v3, v6

    .line 1463
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_5

    :cond_7
    :goto_4
    move v6, v7

    :goto_5
    move v4, v6

    .line 1464
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_8

    goto :goto_6

    :cond_8
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    nop

    :cond_9
    :goto_6
    move v5, v7

    .line 1467
    :cond_a
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$TSpan;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1469
    instance-of v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v1, :cond_b

    .line 1470
    move-object v1, p2

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v6, v2, v4

    iput v6, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    .line 1471
    move-object v1, p2

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v6, v3, v5

    iput v6, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 1474
    :cond_b
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1476
    .local v1, "compositing":Z
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1478
    if-eqz v1, :cond_c

    .line 1479
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1483
    .end local v1    # "compositing":Z
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    :cond_c
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 1484
    .end local v0    # "tspan":Lcom/caverock/androidsvg/SVG$TSpan;
    goto :goto_8

    .line 1485
    :cond_d
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TRef;

    if-eqz v0, :cond_10

    .line 1488
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1490
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TRef;

    .line 1492
    .local v0, "tref":Lcom/caverock/androidsvg/SVG$TRef;
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1494
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1496
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$TRef;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1499
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    .line 1500
    .local v2, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v2, :cond_e

    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v3, :cond_e

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1503
    .local v1, "str":Ljava/lang/StringBuilder;
    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 1504
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 1505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    .line 1507
    .end local v1    # "str":Ljava/lang/StringBuilder;
    goto :goto_7

    .line 1510
    :cond_e
    const-string v3, "Tref reference \'%s\' not found"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1515
    .end local v2    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_f
    :goto_7
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 1517
    .end local v0    # "tref":Lcom/caverock/androidsvg/SVG$TRef;
    :cond_10
    :goto_8
    return-void
.end method

.method private pushLayer()Z
    .locals 7

    .line 671
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->requiresCompositing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 672
    return v1

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 678
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 681
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v0, :cond_3

    .line 682
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 684
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$Mask;

    if-nez v3, :cond_1

    goto :goto_0

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_1

    .line 686
    .restart local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    :goto_0
    const-string v3, "Mask reference \'%s\' not found"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 688
    return v2

    .line 695
    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    :goto_1
    return v2
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Circle;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Circle;

    .line 1048
    const-string v0, "Circle render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1055
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    return-void

    .line 1057
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1058
    return-void

    .line 1060
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1061
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1063
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    .line 1064
    .local v0, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1066
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1067
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1069
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1071
    .local v1, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    .line 1072
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1073
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    .line 1074
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1076
    :cond_5
    if-eqz v1, :cond_6

    .line 1077
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1078
    :cond_6
    return-void

    .line 1051
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "compositing":Z
    :cond_7
    :goto_0
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Ellipse;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Ellipse;

    .line 1086
    const-string v0, "Ellipse render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1093
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1094
    return-void

    .line 1095
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1096
    return-void

    .line 1098
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1099
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1101
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    .line 1102
    .local v0, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1104
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1105
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1107
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1109
    .local v1, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    .line 1110
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1111
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    .line 1112
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1114
    :cond_5
    if-eqz v1, :cond_6

    .line 1115
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1116
    :cond_6
    return-void

    .line 1089
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "compositing":Z
    :cond_7
    :goto_0
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Group;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Group;

    .line 596
    const-string v0, "Group render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 600
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    return-void

    .line 603
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 607
    :cond_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 609
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 611
    .local v0, "compositing":Z
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 613
    if-eqz v0, :cond_2

    .line 614
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 616
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 617
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Image;)V
    .locals 11
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Image;

    .line 1779
    const-string v0, "Image render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1781
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1782
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1785
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1786
    return-void

    .line 1789
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1792
    .local v0, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1793
    .local v2, "image":Landroid/graphics/Bitmap;
    if-nez v2, :cond_4

    .line 1795
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v3

    .line 1796
    .local v3, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    if-nez v3, :cond_3

    .line 1797
    return-void

    .line 1799
    :cond_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1801
    .end local v3    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    :cond_4
    if-nez v2, :cond_5

    .line 1802
    const-string v3, "Could not locate image \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1803
    return-void

    .line 1806
    :cond_5
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1808
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1809
    return-void

    .line 1810
    :cond_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1811
    return-void

    .line 1813
    :cond_7
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_8

    .line 1814
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1817
    :cond_8
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_1

    :cond_9
    move v1, v3

    .line 1818
    .local v1, "_x":F
    :goto_1
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_2

    :cond_a
    move v4, v3

    .line 1819
    .local v4, "_y":F
    :goto_2
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    .line 1820
    .local v5, "_w":F
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    .line 1821
    .local v6, "_h":F
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v8, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v8, v1, v4, v5, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v8, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1823
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_b

    .line 1824
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1827
    :cond_b
    new-instance v7, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v7, v3, v3, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v7, p1, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1828
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v8, v9, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1830
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1832
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1834
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v7

    .line 1836
    .local v7, "compositing":Z
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 1838
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1840
    if-eqz v7, :cond_c

    .line 1841
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1842
    :cond_c
    return-void

    .line 1783
    .end local v0    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v1    # "_x":F
    .end local v2    # "image":Landroid/graphics/Bitmap;
    .end local v4    # "_y":F
    .end local v5    # "_w":F
    .end local v6    # "_h":F
    .end local v7    # "compositing":Z
    :cond_d
    :goto_3
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Line;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;

    .line 1124
    const-string v0, "Line render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1128
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    return-void

    .line 1130
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1131
    return-void

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    .line 1133
    return-void

    .line 1135
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1136
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1138
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;

    move-result-object v0

    .line 1139
    .local v0, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1141
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1142
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1144
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1146
    .local v1, "compositing":Z
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1148
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1150
    if-eqz v1, :cond_4

    .line 1151
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1152
    :cond_4
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Path;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Path;

    .line 956
    const-string v0, "Path render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 960
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    return-void

    .line 962
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    return-void

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    .line 965
    return-void

    .line 967
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 968
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 970
    :cond_3
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 972
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_4

    .line 973
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 975
    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 977
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 978
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 980
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 982
    .local v1, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_5

    .line 983
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 984
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 986
    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_6

    .line 987
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 989
    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 991
    if-eqz v1, :cond_7

    .line 992
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 993
    :cond_7
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$PolyLine;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 1175
    const-string v0, "PolyLine render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1179
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    return-void

    .line 1181
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1182
    return-void

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    .line 1184
    return-void

    .line 1186
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1187
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1189
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v0, v0

    .line 1190
    .local v0, "numPoints":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 1191
    return-void

    .line 1193
    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v1

    .line 1194
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1196
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1197
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1199
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    .line 1201
    .local v2, "compositing":Z
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v3, :cond_5

    .line 1202
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1203
    :cond_5
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v3, :cond_6

    .line 1204
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1206
    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1208
    if-eqz v2, :cond_7

    .line 1209
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1210
    :cond_7
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Polygon;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Polygon;

    .line 1259
    const-string v0, "Polygon render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1263
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    return-void

    .line 1265
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1266
    return-void

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    .line 1268
    return-void

    .line 1270
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1271
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1273
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;->points:[F

    array-length v0, v0

    .line 1274
    .local v0, "numPoints":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 1275
    return-void

    .line 1277
    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v1

    .line 1278
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1280
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1281
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1283
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    .line 1285
    .local v2, "compositing":Z
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v3, :cond_5

    .line 1286
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1287
    :cond_5
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v3, :cond_6

    .line 1288
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1290
    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1292
    if-eqz v2, :cond_7

    .line 1293
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1294
    :cond_7
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Rect;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Rect;

    .line 1009
    const-string v0, "Rect render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1016
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1017
    return-void

    .line 1018
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1019
    return-void

    .line 1021
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1024
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    .line 1025
    .local v0, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1027
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1028
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1030
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1032
    .local v1, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    .line 1033
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1034
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    .line 1035
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1038
    :cond_5
    if-eqz v1, :cond_6

    .line 1039
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1040
    :cond_6
    return-void

    .line 1012
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "compositing":Z
    :cond_7
    :goto_0
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;

    .line 521
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {p0, p1, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 522
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 6
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;
    .param p2, "width"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "height"    # Lcom/caverock/androidsvg/SVG$Length;

    .line 528
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 529
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;
    .param p2, "width"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "height"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p4, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p5, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 537
    const-string v0, "Svg render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    :cond_1
    return-void

    .line 544
    :cond_2
    if-nez p5, :cond_4

    .line 545
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_0
    move-object p5, v0

    .line 547
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 549
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_5

    .line 550
    return-void

    .line 553
    :cond_5
    const/4 v0, 0x0

    .line 554
    .local v0, "_x":F
    const/4 v1, 0x0

    .line 555
    .local v1, "_y":F
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v2, :cond_8

    .line 557
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    move v0, v2

    .line 558
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    nop

    :cond_7
    move v1, v3

    .line 561
    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    .line 562
    .local v2, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    if-eqz p2, :cond_9

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_2

    :cond_9
    iget v3, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 563
    .local v3, "_w":F
    :goto_2
    if-eqz p3, :cond_a

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_3

    :cond_a
    iget v4, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 564
    .local v4, "_h":F
    :goto_3
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v6, v0, v1, v3, v4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 566
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_b

    .line 567
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 570
    :cond_b
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 572
    if-eqz p4, :cond_c

    .line 573
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v6, p4, p5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 574
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 577
    :cond_c
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v5

    .line 580
    .local v5, "compositing":Z
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 582
    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 584
    if-eqz v5, :cond_d

    .line 585
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 587
    :cond_d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 588
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 1
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 279
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;

    if-eqz v0, :cond_0

    .line 280
    return-void

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 285
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 287
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_1

    .line 288
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;)V

    .line 289
    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v0, :cond_2

    .line 290
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Use;)V

    .line 291
    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Switch;

    if-eqz v0, :cond_3

    .line 292
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Switch;)V

    .line 293
    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v0, :cond_4

    .line 294
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Group;)V

    .line 295
    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Image;

    if-eqz v0, :cond_5

    .line 296
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Image;)V

    .line 297
    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_6

    .line 298
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Path;)V

    .line 299
    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v0, :cond_7

    .line 300
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Rect;)V

    .line 301
    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v0, :cond_8

    .line 302
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Circle;)V

    .line 303
    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_9

    .line 304
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Ellipse;)V

    .line 305
    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v0, :cond_a

    .line 306
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Line;)V

    .line 307
    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v0, :cond_b

    .line 308
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Polygon;)V

    .line 309
    goto :goto_0

    :cond_b
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_c

    .line 310
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$PolyLine;)V

    .line 311
    goto :goto_0

    :cond_c
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_d

    .line 312
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Text;)V

    .line 316
    :cond_d
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 317
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Switch;

    .line 800
    const-string v0, "Switch render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 804
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    return-void

    .line 807
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 811
    :cond_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 813
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 815
    .local v0, "compositing":Z
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V

    .line 817
    if-eqz v0, :cond_2

    .line 818
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 820
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 821
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 7
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Symbol;
    .param p2, "width"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "height"    # Lcom/caverock/androidsvg/SVG$Length;

    .line 1739
    const-string v0, "Symbol render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1741
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1742
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1743
    :cond_1
    return-void

    .line 1746
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1748
    .local v0, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1750
    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 1751
    .local v1, "_w":F
    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 1752
    .local v2, "_h":F
    :goto_2
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v1, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1754
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1755
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1758
    :cond_6
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v3, :cond_7

    .line 1759
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v4, v5, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1760
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1763
    :cond_7
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v3

    .line 1765
    .local v3, "compositing":Z
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 1767
    if-eqz v3, :cond_8

    .line 1768
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1770
    :cond_8
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1771
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Text;)V
    .locals 11
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Text;

    .line 1302
    const-string v0, "Text render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1306
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    return-void

    .line 1309
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1313
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    .line 1314
    .local v0, "x":F
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    .line 1315
    .local v3, "y":F
    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v2

    .line 1316
    .local v4, "dx":F
    :goto_5
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    nop

    :cond_9
    :goto_6
    move v1, v2

    .line 1319
    .local v1, "dy":F
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v2

    .line 1320
    .local v2, "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v5, :cond_b

    .line 1321
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v5

    .line 1322
    .local v5, "textWidth":F
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v2, v6, :cond_a

    .line 1323
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    sub-float/2addr v0, v6

    .line 1324
    goto :goto_7

    .line 1325
    :cond_a
    sub-float/2addr v0, v5

    .line 1329
    .end local v5    # "textWidth":F
    :cond_b
    :goto_7
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v5, :cond_c

    .line 1330
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v5, p0, v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 1331
    .local v5, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1332
    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v7, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v9, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v6, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1334
    .end local v5    # "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    :cond_c
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1336
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1337
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1339
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v5

    .line 1341
    .local v5, "compositing":Z
    new-instance v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v7, v0, v4

    add-float v8, v3, v1

    invoke-direct {v6, p0, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1343
    if-eqz v5, :cond_d

    .line 1344
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1345
    :cond_d
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Use;)V
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Use;

    .line 885
    const-string v0, "Use render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 888
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 889
    :cond_1
    return-void

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 893
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_3

    .line 894
    return-void

    .line 897
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 898
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_4

    .line 899
    const-string v2, "Use reference \'%s\' not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    return-void

    .line 903
    :cond_4
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_5

    .line 904
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 908
    :cond_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 909
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    :cond_6
    move v2, v3

    .line 910
    .local v2, "_x":F
    :goto_0
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_7

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    nop

    .line 911
    .local v3, "_y":F
    :cond_7
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 912
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 914
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 916
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    .line 918
    .local v4, "compositing":Z
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    .line 920
    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v5, :cond_a

    .line 922
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 923
    move-object v5, v0

    check-cast v5, Lcom/caverock/androidsvg/SVG$Svg;

    .line 924
    .local v5, "svgElem":Lcom/caverock/androidsvg/SVG$Svg;
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_8

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :cond_8
    iget-object v6, v5, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 925
    .local v6, "_w":Lcom/caverock/androidsvg/SVG$Length;
    :goto_1
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_9

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2

    :cond_9
    iget-object v7, v5, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 926
    .local v7, "_h":Lcom/caverock/androidsvg/SVG$Length;
    :goto_2
    invoke-direct {p0, v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 927
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 928
    .end local v5    # "svgElem":Lcom/caverock/androidsvg/SVG$Svg;
    .end local v6    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    .end local v7    # "_h":Lcom/caverock/androidsvg/SVG$Length;
    goto :goto_5

    .line 929
    :cond_a
    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$Symbol;

    if-eqz v5, :cond_d

    .line 931
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v5, :cond_b

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    :cond_b
    new-instance v5, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 932
    .local v5, "_w":Lcom/caverock/androidsvg/SVG$Length;
    :goto_3
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_c

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_4

    :cond_c
    new-instance v7, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v7, v6, v8}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    move-object v6, v7

    .line 933
    .local v6, "_h":Lcom/caverock/androidsvg/SVG$Length;
    :goto_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 934
    move-object v7, v0

    check-cast v7, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {p0, v7, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 935
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 936
    .end local v5    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    .end local v6    # "_h":Lcom/caverock/androidsvg/SVG$Length;
    goto :goto_5

    .line 939
    :cond_d
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 942
    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    .line 944
    if-eqz v4, :cond_e

    .line 945
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 947
    :cond_e
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 948
    return-void
.end method

.method private renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;
    .param p2, "isContainer"    # Z

    .line 325
    if-eqz p2, :cond_0

    .line 326
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    .line 329
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 333
    if-eqz p2, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    .line 336
    :cond_1
    return-void

    .line 329
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 330
    .local v1, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .end local v1    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0
.end method

.method private renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 20
    .param p1, "marker"    # Lcom/caverock/androidsvg/SVG$Marker;
    .param p2, "pos"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2868
    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 2871
    .local v3, "angle":F
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 2874
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 2876
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2878
    iget v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 2879
    :cond_0
    iget v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    float-to-double v6, v4

    iget v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 2881
    goto :goto_0

    .line 2882
    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2886
    :cond_2
    :goto_0
    iget-boolean v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    invoke-virtual {v4, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v4

    .line 2890
    .local v4, "unitsScale":F
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iput-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 2892
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 2893
    .local v6, "m":Landroid/graphics/Matrix;
    iget v7, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v8, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2894
    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2895
    invoke-virtual {v6, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2897
    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_2

    :cond_4
    move v7, v5

    .line 2898
    .local v7, "_refX":F
    :goto_2
    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_5

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    nop

    .line 2899
    .local v5, "_refY":F
    :cond_5
    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v9, 0x40400000    # 3.0f

    if-eqz v8, :cond_6

    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_3

    :cond_6
    move v8, v9

    .line 2900
    .local v8, "_markerWidth":F
    :goto_3
    iget-object v10, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_7

    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    nop

    .line 2905
    .local v9, "_markerHeight":F
    :cond_7
    iget-object v10, v1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v10, :cond_8

    iget-object v10, v1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_4

    :cond_8
    iget-object v10, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 2908
    .local v10, "_viewBox":Lcom/caverock/androidsvg/SVG$Box;
    :goto_4
    iget v11, v10, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v11, v8, v11

    .line 2909
    .local v11, "xScale":F
    iget v12, v10, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v12, v9, v12

    .line 2912
    .local v12, "yScale":F
    iget-object v13, v1, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v13, :cond_9

    iget-object v13, v1, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_5

    :cond_9
    sget-object v13, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 2913
    .local v13, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_5
    sget-object v14, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 2915
    invoke-virtual {v13}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v14

    sget-object v15, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v14, v15, :cond_a

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v14

    goto :goto_6

    :cond_a
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 2916
    .local v14, "aspectScale":F
    :goto_6
    move v12, v14

    move v11, v14

    .line 2920
    .end local v14    # "aspectScale":F
    :cond_b
    neg-float v14, v7

    mul-float/2addr v14, v11

    neg-float v15, v5

    mul-float/2addr v15, v12

    invoke-virtual {v6, v14, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2921
    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v14, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2923
    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_c

    .line 2926
    iget v14, v10, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v14, v11

    .line 2927
    .local v14, "imageW":F
    iget v15, v10, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v15, v12

    .line 2928
    .local v15, "imageH":F
    const/16 v16, 0x0

    .line 2929
    .local v16, "xOffset":F
    const/16 v17, 0x0

    .line 2930
    .local v17, "yOffset":F
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v18

    invoke-virtual {v13}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    aget v2, v18, v2

    const/high16 v18, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_0

    .line 2944
    .end local v16    # "xOffset":F
    .local v2, "xOffset":F
    :goto_7
    :pswitch_0
    move/from16 v2, v16

    goto :goto_8

    .line 2940
    .end local v2    # "xOffset":F
    .restart local v16    # "xOffset":F
    :pswitch_1
    sub-float v2, v8, v14

    sub-float v16, v16, v2

    .line 2941
    goto :goto_7

    .line 2935
    :pswitch_2
    sub-float v2, v8, v14

    div-float v2, v2, v18

    sub-float v16, v16, v2

    .line 2936
    goto :goto_7

    .line 2944
    .end local v16    # "xOffset":F
    .restart local v2    # "xOffset":F
    :goto_8
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v16

    .line 2947
    move/from16 v19, v3

    invoke-virtual {v13}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v3

    .end local v3    # "angle":F
    .local v19, "angle":F
    invoke-virtual {v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v3

    aget v3, v16, v3

    packed-switch v3, :pswitch_data_1

    .line 2963
    .end local v17    # "yOffset":F
    .local v3, "yOffset":F
    :goto_9
    move/from16 v3, v17

    goto :goto_a

    .line 2957
    .end local v3    # "yOffset":F
    .restart local v17    # "yOffset":F
    :pswitch_3
    sub-float v3, v9, v15

    sub-float v17, v17, v3

    .line 2958
    goto :goto_9

    .line 2952
    :pswitch_4
    sub-float v3, v9, v15

    div-float v3, v3, v18

    sub-float v17, v17, v3

    .line 2953
    goto :goto_9

    .line 2963
    .end local v17    # "yOffset":F
    .restart local v3    # "yOffset":F
    :goto_a
    invoke-direct {v0, v2, v3, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .end local v2    # "xOffset":F
    .end local v3    # "yOffset":F
    .end local v14    # "imageW":F
    .end local v15    # "imageH":F
    goto :goto_b

    .line 2966
    .end local v19    # "angle":F
    .local v3, "angle":F
    :cond_c
    move/from16 v19, v3

    .end local v3    # "angle":F
    .restart local v19    # "angle":F
    :goto_b
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 2967
    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2968
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2970
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    .line 2972
    .local v2, "compositing":Z
    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 2974
    if-eqz v2, :cond_d

    .line 2975
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 2977
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 2978
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$GraphicsElement;

    .line 2799
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2800
    return-void

    .line 2802
    :cond_0
    const/4 v0, 0x0

    .line 2803
    .local v0, "_markerStart":Lcom/caverock/androidsvg/SVG$Marker;
    const/4 v1, 0x0

    .line 2804
    .local v1, "_markerMid":Lcom/caverock/androidsvg/SVG$Marker;
    const/4 v2, 0x0

    .line 2806
    .local v2, "_markerEnd":Lcom/caverock/androidsvg/SVG$Marker;
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 2807
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    .line 2808
    .local v3, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v3, :cond_1

    .line 2809
    move-object v0, v3

    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    goto :goto_0

    .line 2811
    :cond_1
    const-string v6, "Marker reference \'%s\' not found"

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2814
    .end local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2815
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    .line 2816
    .restart local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v3, :cond_3

    .line 2817
    move-object v1, v3

    check-cast v1, Lcom/caverock/androidsvg/SVG$Marker;

    goto :goto_1

    .line 2819
    :cond_3
    const-string v6, "Marker reference \'%s\' not found"

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2822
    .end local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 2823
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    .line 2824
    .restart local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v3, :cond_5

    .line 2825
    move-object v2, v3

    check-cast v2, Lcom/caverock/androidsvg/SVG$Marker;

    goto :goto_2

    .line 2827
    :cond_5
    const-string v6, "Marker reference \'%s\' not found"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2830
    .end local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_6
    :goto_2
    const/4 v3, 0x0

    .line 2831
    .local v3, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    instance-of v5, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v5, :cond_7

    .line 2832
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;

    move-object v6, p1

    check-cast v6, Lcom/caverock/androidsvg/SVG$Path;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v5, p0, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->getMarkers()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    .line 2833
    :cond_7
    instance-of v5, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v5, :cond_8

    .line 2834
    move-object v5, p1

    check-cast v5, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {p0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;

    move-result-object v3

    goto :goto_3

    .line 2836
    :cond_8
    move-object v5, p1

    check-cast v5, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;

    move-result-object v3

    .line 2838
    :goto_3
    if-nez v3, :cond_9

    .line 2839
    return-void

    .line 2841
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 2842
    .local v5, "markerCount":I
    if-nez v5, :cond_a

    .line 2843
    return-void

    .line 2846
    :cond_a
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v9, v7, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v9, v6, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2848
    if-eqz v0, :cond_b

    .line 2849
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2851
    :cond_b
    if-eqz v1, :cond_d

    .line 2853
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_4
    add-int/lit8 v6, v5, -0x1

    if-lt v4, v6, :cond_c

    .end local v4    # "i":I
    goto :goto_5

    .line 2854
    .restart local v4    # "i":I
    :cond_c
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2853
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2858
    .end local v4    # "i":I
    :cond_d
    :goto_5
    if-eqz v2, :cond_e

    .line 2859
    add-int/lit8 v4, v5, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v2, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2860
    :cond_e
    return-void
.end method

.method private renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 18
    .param p1, "mask"    # Lcom/caverock/androidsvg/SVG$Mask;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4073
    move-object/from16 v2, p2

    const-string v3, "Mask render"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4075
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 4078
    .local v3, "maskUnitsAreUser":Z
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5

    .line 4080
    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    :cond_1
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 4081
    .local v7, "w":F
    :goto_1
    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_2

    :cond_2
    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 4082
    .local v8, "h":F
    :goto_2
    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    const-wide v10, 0x3fb999999999999aL    # 0.1

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_3

    :cond_3
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    float-to-double v12, v9

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->width:F

    float-to-double v14, v9

    mul-double/2addr v14, v10

    sub-double/2addr v12, v14

    double-to-float v9, v12

    .line 4083
    .local v9, "x":F
    :goto_3
    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v12, :cond_4

    iget-object v10, v1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    goto :goto_4

    :cond_4
    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    float-to-double v12, v12

    iget-object v14, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v14, v14, Lcom/caverock/androidsvg/SVG$Box;->height:F

    float-to-double v14, v14

    mul-double/2addr v10, v14

    sub-double/2addr v12, v10

    double-to-float v10, v12

    .line 4084
    .local v10, "y":F
    :goto_4
    goto :goto_7

    .line 4088
    .end local v7    # "w":F
    .end local v8    # "h":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_5
    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    const v8, -0x42333333    # -0.1f

    if-eqz v7, :cond_6

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v7

    goto :goto_5

    :cond_6
    move v7, v8

    .line 4089
    .local v7, "x":F
    :goto_5
    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_7

    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    nop

    .line 4090
    .local v8, "y":F
    :cond_7
    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    const v10, 0x3f99999a    # 1.2f

    if-eqz v9, :cond_8

    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    goto :goto_6

    :cond_8
    move v9, v10

    .line 4091
    .local v9, "w":F
    :goto_6
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_9

    iget-object v10, v1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v10

    nop

    .line 4092
    .local v10, "h":F
    :cond_9
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v12, v7

    add-float v7, v11, v12

    .line 4093
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v12, v8

    add-float v8, v11, v12

    .line 4094
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v9, v11

    .line 4095
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v10, v11

    .line 4097
    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    move/from16 v17, v10

    move v10, v8

    move/from16 v8, v17

    .local v7, "w":F
    .local v8, "h":F
    .local v9, "x":F
    .local v10, "y":F
    :goto_7
    const/4 v11, 0x0

    cmpl-float v12, v7, v11

    if-eqz v12, :cond_d

    cmpl-float v11, v8, v11

    if-nez v11, :cond_a

    goto :goto_8

    .line 4101
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4103
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v11

    iput-object v11, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4107
    iget-object v11, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v11, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 4110
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v6, :cond_b

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_b

    move v5, v4

    nop

    .line 4111
    .local v5, "maskContentUnitsAreUser":Z
    :cond_b
    if-nez v5, :cond_c

    .line 4112
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4113
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4117
    :cond_c
    invoke-direct {v0, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 4120
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4121
    return-void

    .line 4098
    .end local v5    # "maskContentUnitsAreUser":Z
    :cond_d
    :goto_8
    return-void
.end method

.method private renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Switch;

    .line 826
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "deviceLanguage":Ljava/lang/String;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v1

    .line 830
    .local v1, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Switch;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 833
    .local v3, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v4, v3, Lcom/caverock/androidsvg/SVG$SvgConditional;

    if-nez v4, :cond_2

    .line 834
    goto :goto_0

    .line 836
    :cond_2
    move-object v4, v3

    check-cast v4, Lcom/caverock/androidsvg/SVG$SvgConditional;

    .line 839
    .local v4, "condObj":Lcom/caverock/androidsvg/SVG$SvgConditional;
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredExtensions()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 840
    goto :goto_0

    .line 843
    :cond_3
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getSystemLanguage()Ljava/util/Set;

    move-result-object v5

    .line 844
    .local v5, "syslang":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 845
    goto :goto_0

    .line 848
    :cond_4
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFeatures()Ljava/util/Set;

    move-result-object v6

    .line 849
    .local v6, "reqfeat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 850
    goto :goto_0

    .line 853
    :cond_5
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFormats()Ljava/util/Set;

    move-result-object v7

    .line 854
    .local v7, "reqfmts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_9

    .line 855
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v1, :cond_6

    .line 856
    goto :goto_0

    .line 857
    :cond_6
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 858
    .local v9, "mimeType":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->isFormatSupported(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 859
    goto :goto_0

    .line 863
    .end local v9    # "mimeType":Ljava/lang/String;
    :cond_9
    :goto_1
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFonts()Ljava/util/Set;

    move-result-object v8

    .line 864
    .local v8, "reqfonts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_d

    .line 865
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-nez v1, :cond_a

    .line 866
    goto :goto_0

    .line 867
    :cond_a
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_2

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 868
    .local v10, "fontName":Ljava/lang/String;
    iget-object v11, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    if-nez v11, :cond_b

    .line 869
    goto/16 :goto_0

    .line 874
    .end local v10    # "fontName":Ljava/lang/String;
    :cond_d
    :goto_2
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 875
    nop

    .line 877
    .end local v3    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v4    # "condObj":Lcom/caverock/androidsvg/SVG$SvgConditional;
    .end local v5    # "syslang":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "reqfeat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "reqfmts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "reqfonts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3
    return-void
.end method

.method private renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextPath;

    .line 1525
    const-string v0, "TextPath render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1527
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1529
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1530
    return-void

    .line 1531
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1532
    return-void

    .line 1534
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 1535
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_2

    .line 1537
    const-string v2, "TextPath reference \'%s\' not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1538
    return-void

    .line 1541
    :cond_2
    move-object v2, v0

    check-cast v2, Lcom/caverock/androidsvg/SVG$Path;

    .line 1542
    .local v2, "pathObj":Lcom/caverock/androidsvg/SVG$Path;
    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v3, p0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v3

    .line 1544
    .local v3, "path":Landroid/graphics/Path;
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_3

    .line 1545
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1547
    :cond_3
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, v3, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object v1, v4

    .line 1549
    .local v1, "measure":Landroid/graphics/PathMeasure;
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    invoke-virtual {v4, p0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v5

    .line 1552
    .local v4, "startOffset":F
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v6

    .line 1553
    .local v6, "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    sget-object v7, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v6, v7, :cond_6

    .line 1554
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v7

    .line 1555
    .local v7, "textWidth":F
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v6, v8, :cond_5

    .line 1556
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    sub-float/2addr v4, v8

    .line 1557
    goto :goto_1

    .line 1558
    :cond_5
    sub-float/2addr v4, v7

    .line 1562
    .end local v7    # "textWidth":F
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$TextPath;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1564
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v7

    .line 1566
    .local v7, "compositing":Z
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;

    invoke-direct {v8, p0, v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V

    invoke-direct {p0, p1, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1568
    if-eqz v7, :cond_7

    .line 1569
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1570
    :cond_7
    return-void
.end method

.method private requiresCompositing()Z
    .locals 3

    .line 726
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-nez v0, :cond_0

    .line 727
    const-string v0, "Masks are not supported when using getPicture()"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-nez v0, :cond_2

    .line 729
    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private resetState()V
    .locals 2

    .line 173
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 174
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    .line 177
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 179
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 181
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 182
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    .line 185
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    .line 189
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    .line 193
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    .line 194
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    .line 195
    return-void
.end method

.method private setClipRect(FFFF)V
    .locals 5
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 2344
    move v0, p1

    .line 2345
    .local v0, "left":F
    move v1, p2

    .line 2346
    .local v1, "top":F
    add-float v2, p1, p3

    .line 2347
    .local v2, "right":F
    add-float v3, p2, p4

    .line 2349
    .local v3, "bottom":F
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-eqz v4, :cond_0

    .line 2350
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    add-float/2addr v0, v4

    .line 2351
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    add-float/2addr v1, v4

    .line 2352
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float/2addr v2, v4

    .line 2353
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 2356
    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2357
    return-void
.end method

.method private setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V
    .locals 3
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "isFill"    # Z
    .param p3, "paint"    # Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2279
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2281
    .local v0, "paintOpacity":F
    instance-of v1, p3, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v1, :cond_1

    .line 2282
    move-object v1, p3

    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2283
    .local v1, "col":I
    goto :goto_1

    .end local v1    # "col":I
    :cond_1
    instance-of v1, p3, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v1, :cond_3

    .line 2284
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2285
    .restart local v1    # "col":I
    nop

    .line 2286
    :goto_1
    nop

    .line 2288
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 2289
    if-eqz p2, :cond_2

    .line 2290
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 2292
    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2293
    :goto_2
    return-void

    .line 2286
    .end local v1    # "col":I
    :cond_3
    return-void
.end method

.method private setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V
    .locals 9
    .param p1, "isFill"    # Z
    .param p2, "ref"    # Lcom/caverock/androidsvg/SVG$SolidColor;

    .line 3374
    const-wide v0, 0x180000000L

    const-wide v2, 0x100000000L

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide v6, 0x80000000L

    if-eqz p1, :cond_3

    .line 3376
    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v8, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3378
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3379
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v7, :cond_0

    move v4, v5

    nop

    :cond_0
    iput-boolean v4, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 3382
    :cond_1
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v4, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3384
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 3388
    :cond_2
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3390
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 3392
    goto :goto_0

    .line 3395
    :cond_3
    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v8, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3397
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3398
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v7, :cond_4

    move v4, v5

    nop

    :cond_4
    iput-boolean v4, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3401
    :cond_5
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v4, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3403
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 3407
    :cond_6
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3409
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 3413
    :cond_7
    :goto_0
    return-void
.end method

.method private statePop()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 357
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 358
    return-void
.end method

.method private statePush()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 347
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 349
    return-void
.end method

.method private textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isFirstChild"    # Z
    .param p3, "isLastChild"    # Z

    .line 1719
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    if-eqz v0, :cond_0

    .line 1720
    const-string v0, "[\\n\\t]"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1723
    :cond_0
    const-string v0, "\\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1724
    const-string v0, "\\t"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1726
    if-eqz p2, :cond_1

    .line 1727
    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1728
    :cond_1
    if-eqz p3, :cond_2

    .line 1729
    const-string v0, "\\s+$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1730
    :cond_2
    const-string v0, "\\s{2,}"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 632
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_0

    .line 633
    return-void

    .line 634
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_1

    .line 635
    return-void

    .line 638
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 640
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 641
    const/16 v1, 0x8

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 642
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    const/4 v2, 0x3

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v5, v1, v2

    const/4 v2, 0x4

    .line 643
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    aput v5, v1, v2

    const/4 v2, 0x5

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v5

    aput v5, v1, v2

    .line 644
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    const/4 v5, 0x6

    aput v2, v1, v5

    const/4 v2, 0x7

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v6

    aput v6, v1, v2

    .line 641
    nop

    .line 646
    .local v1, "pts":[F
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 647
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 649
    new-instance v2, Landroid/graphics/RectF;

    aget v6, v1, v3

    aget v7, v1, v4

    aget v3, v1, v3

    aget v4, v1, v4

    invoke-direct {v2, v6, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 650
    .local v2, "rect":Landroid/graphics/RectF;
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    if-le v3, v5, :cond_3

    .line 657
    .end local v3    # "i":I
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 658
    .local v3, "parent":Lcom/caverock/androidsvg/SVG$SvgElement;
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    .line 659
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    .line 661
    :cond_2
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG$Box;->union(Lcom/caverock/androidsvg/SVG$Box;)V

    .end local v1    # "pts":[F
    .end local v2    # "rect":Landroid/graphics/RectF;
    .end local v3    # "parent":Lcom/caverock/androidsvg/SVG$SvgElement;
    goto :goto_1

    .line 651
    .restart local v1    # "pts":[F
    .restart local v2    # "rect":Landroid/graphics/RectF;
    .local v3, "i":I
    :cond_3
    aget v4, v1, v3

    iget v6, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    aget v4, v1, v3

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 652
    :cond_4
    aget v4, v1, v3

    iget v6, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_5

    aget v4, v1, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 653
    :cond_5
    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iget v6, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 654
    :cond_6
    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 650
    :cond_7
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 663
    .end local v1    # "pts":[F
    .end local v2    # "rect":Landroid/graphics/RectF;
    .end local v3    # "i":I
    :cond_8
    :goto_1
    return-void
.end method

.method private updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 10
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "style"    # Lcom/caverock/androidsvg/SVG$Style;

    .line 1979
    const-wide/16 v0, 0x1000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 1984
    :cond_0
    const-wide/16 v0, 0x800

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1986
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 1989
    :cond_1
    const-wide/16 v0, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1991
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1992
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 1995
    :cond_3
    const-wide/16 v3, 0x4

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1997
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 2001
    :cond_4
    const-wide/16 v3, 0x1805

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2003
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 2006
    :cond_5
    const-wide/16 v3, 0x2

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2008
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2012
    :cond_6
    const-wide/16 v3, 0x8

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2014
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2015
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 2018
    :cond_8
    const-wide/16 v3, 0x10

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2020
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 2023
    :cond_9
    const-wide/16 v3, 0x1818

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2025
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 2028
    :cond_a
    const-wide v3, 0x800000000L

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2030
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 2033
    :cond_b
    const-wide/16 v3, 0x20

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2035
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 2036
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2039
    :cond_c
    const-wide/16 v3, 0x40

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2041
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    .line 2042
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps()[I

    move-result-object v0

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 2051
    :pswitch_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2052
    goto :goto_2

    .line 2048
    :pswitch_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2049
    goto :goto_2

    .line 2045
    :pswitch_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2046
    nop

    .line 2058
    :cond_d
    :goto_2
    const-wide/16 v3, 0x80

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2060
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2061
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin()[I

    move-result-object v0

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 2070
    :pswitch_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2071
    goto :goto_3

    .line 2067
    :pswitch_4
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2068
    goto :goto_3

    .line 2064
    :pswitch_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2065
    nop

    .line 2077
    :cond_e
    :goto_3
    const-wide/16 v3, 0x100

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2079
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2080
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 2083
    :cond_f
    const-wide/16 v3, 0x200

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2085
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 2088
    :cond_10
    const-wide/16 v3, 0x400

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2090
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 2093
    :cond_11
    const-wide/16 v3, 0x600

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2096
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-nez v0, :cond_12

    .line 2098
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2099
    goto :goto_6

    .line 2102
    :cond_12
    const/4 v0, 0x0

    .line 2103
    .local v0, "intervalSum":F
    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    array-length v4, v4

    .line 2106
    .local v4, "n":I
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_13

    move v5, v4

    goto :goto_4

    :cond_13
    mul-int/lit8 v5, v4, 0x2

    .line 2107
    .local v5, "arrayLen":I
    :goto_4
    new-array v6, v5, [F

    .line 2108
    .local v6, "intervals":[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-lt v7, v5, :cond_16

    .line 2112
    .end local v7    # "i":I
    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    if-nez v8, :cond_14

    .line 2113
    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2114
    goto :goto_6

    .line 2115
    :cond_14
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 2116
    .local v3, "offset":F
    cmpg-float v7, v3, v7

    if-gez v7, :cond_15

    .line 2119
    rem-float v7, v3, v0

    add-float v3, v0, v7

    .line 2121
    :cond_15
    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/DashPathEffect;

    invoke-direct {v8, v6, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .end local v0    # "intervalSum":F
    .end local v3    # "offset":F
    .end local v4    # "n":I
    .end local v5    # "arrayLen":I
    .end local v6    # "intervals":[F
    goto :goto_6

    .line 2109
    .restart local v0    # "intervalSum":F
    .restart local v4    # "n":I
    .restart local v5    # "arrayLen":I
    .restart local v6    # "intervals":[F
    .restart local v7    # "i":I
    :cond_16
    iget-object v8, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    rem-int v9, v7, v4

    aget-object v8, v8, v9

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    aput v8, v6, v7

    .line 2110
    aget v8, v6, v7

    add-float/2addr v0, v8

    .line 2108
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2126
    .end local v0    # "intervalSum":F
    .end local v4    # "n":I
    .end local v5    # "arrayLen":I
    .end local v6    # "intervals":[F
    .end local v7    # "i":I
    :cond_17
    :goto_6
    const-wide/16 v3, 0x4000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2128
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v0

    .line 2129
    .local v0, "currentFontSize":F
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 2130
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2131
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2134
    .end local v0    # "currentFontSize":F
    :cond_18
    const-wide/16 v3, 0x2000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2136
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 2139
    :cond_19
    const-wide/32 v3, 0x8000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2142
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    const/16 v4, 0x64

    if-ne v0, v3, :cond_1a

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v4, :cond_1a

    .line 2143
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto :goto_7

    .line 2144
    :cond_1a
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x384

    if-ge v0, v3, :cond_1b

    .line 2145
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto :goto_7

    .line 2147
    :cond_1b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 2150
    :cond_1c
    :goto_7
    const-wide/32 v3, 0x10000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2152
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2156
    :cond_1d
    const-wide/32 v3, 0x1a000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2158
    const/4 v0, 0x0

    .line 2159
    .local v0, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    const/4 v3, 0x0

    .line 2161
    .local v3, "font":Landroid/graphics/Typeface;
    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    if-eqz v4, :cond_21

    .line 2162
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v4

    .line 2164
    .end local v0    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .local v4, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_8

    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2165
    .local v0, "fontName":Ljava/lang/String;
    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 2166
    if-nez v3, :cond_20

    if-eqz v4, :cond_20

    .line 2167
    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v6, v7}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 2169
    :cond_20
    if-eqz v3, :cond_1e

    .line 2170
    goto :goto_8

    .line 2173
    .end local v4    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .local v0, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    :cond_21
    move-object v4, v0

    .end local v0    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .restart local v4    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    :goto_8
    if-nez v3, :cond_22

    .line 2175
    const-string v0, "sans-serif"

    iget-object v5, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v0, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 2177
    :cond_22
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2178
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2181
    .end local v3    # "font":Landroid/graphics/Typeface;
    .end local v4    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    :cond_23
    const-wide/32 v3, 0x20000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2183
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2184
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_24

    move v3, v2

    goto :goto_9

    :cond_24
    move v3, v1

    :goto_9
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2185
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_25

    move v3, v2

    goto :goto_a

    :cond_25
    move v3, v1

    :goto_a
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_28

    .line 2189
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_26

    move v3, v2

    goto :goto_b

    :cond_26
    move v3, v1

    :goto_b
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2190
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_27

    move v1, v2

    nop

    :cond_27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2194
    :cond_28
    const-wide v0, 0x1000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2196
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 2199
    :cond_29
    const-wide/32 v0, 0x40000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2201
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2204
    :cond_2a
    const-wide/32 v0, 0x80000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2206
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 2209
    :cond_2b
    const-wide/32 v0, 0x200000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2211
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2214
    :cond_2c
    const-wide/32 v0, 0x400000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2216
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2219
    :cond_2d
    const-wide/32 v0, 0x800000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2221
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2224
    :cond_2e
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2226
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 2229
    :cond_2f
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2231
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 2234
    :cond_30
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2236
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 2239
    :cond_31
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2241
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 2244
    :cond_32
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2246
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2249
    :cond_33
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2251
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 2254
    :cond_34
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2256
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2259
    :cond_35
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2261
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 2264
    :cond_36
    const-wide v0, 0x200000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2266
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2269
    :cond_37
    const-wide v0, 0x400000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2271
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 2274
    :cond_38
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V
    .locals 4
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 384
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 385
    .local v0, "isRootSVG":Z
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Style;->resetNonInheritingProperties(Z)V

    .line 388
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->hasCSSRules()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 394
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getCSSRules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 396
    .local v2, "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-static {v3, p2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .end local v2    # "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    goto :goto_1

    .line 403
    :cond_4
    :goto_2
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v1, :cond_5

    .line 404
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 405
    :cond_5
    return-void
.end method

.method private viewportFill()V
    .locals 2

    .line 2366
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v0, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2368
    .local v0, "col":I
    goto :goto_0

    .end local v0    # "col":I
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v0, :cond_2

    .line 2369
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2370
    .restart local v0    # "col":I
    nop

    .line 2371
    :goto_0
    nop

    .line 2373
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 2374
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 2376
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2377
    return-void

    .line 2371
    .end local v0    # "col":I
    :cond_2
    return-void
.end method

.method private visible()Z
    .locals 1

    .line 1879
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1881
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 492
    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void
.end method


# virtual methods
.method protected getCurrentFontSize()F
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getCurrentFontXHeight()F
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-object v0
.end method

.method protected getDPI()F
    .locals 1

    .line 216
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    return v0
.end method

.method protected renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V
    .locals 7
    .param p1, "document"    # Lcom/caverock/androidsvg/SVG;
    .param p2, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;
    .param p4, "directRenderingMode"    # Z

    .line 251
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    .line 252
    iput-boolean p4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    .line 254
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v6

    .line 256
    .local v6, "rootObj":Lcom/caverock/androidsvg/SVG$Svg;
    if-nez v6, :cond_0

    .line 257
    const-string v0, "Nothing to render. Document is empty."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    return-void

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->resetState()V

    .line 264
    invoke-direct {p0, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 267
    iget-object v2, v6, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v3, v6, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 268
    if-eqz p2, :cond_1

    .line 269
    move-object v4, p2

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, v6, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 269
    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 267
    move-object v5, p3

    goto :goto_1

    .line 269
    :cond_2
    iget-object v0, v6, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 267
    move-object v5, v0

    :goto_1
    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 270
    return-void
.end method
