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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    iput-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-object p0
.end method

.method static synthetic access$3(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$4(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    return-void
.end method

.method static synthetic access$6(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :goto_1
    nop

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void

    :cond_6
    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 4

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    const-string v0, "<use> elements inside a <clipPath> cannot reference another <use>"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

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

    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 10

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

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

    :cond_9
    :goto_6
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v5, :cond_b

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v2

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v5, v6, :cond_a

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    sub-float/2addr v0, v5

    goto :goto_7

    :cond_a
    sub-float/2addr v0, v2

    :cond_b
    :goto_7
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_c

    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v2, p0, v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

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

    :cond_c
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float v6, v0, v4

    add-float v7, v3, v1

    invoke-direct {v5, p0, v6, v7, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 5

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v2, "Use reference \'%s\' not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 90

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    cmpl-float v6, p0, v4

    if-nez v6, :cond_0

    cmpl-float v6, p1, v5

    if-nez v6, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    cmpl-float v8, p2, v6

    if-eqz v8, :cond_a

    cmpl-float v6, p3, v6

    if-nez v6, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v2

    const-wide v10, 0x4076800000000000L    # 360.0

    rem-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v9, v8

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    sub-float v8, p0, v4

    float-to-double v10, v8

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v10, v10, v18

    sub-float v8, p1, v5

    move/from16 v20, v9

    float-to-double v8, v8

    div-double v21, v8, v18

    mul-double v8, v12, v10

    mul-double v23, v14, v21

    add-double v8, v8, v23

    neg-double v1, v14

    mul-double/2addr v1, v10

    mul-double v23, v12, v21

    add-double v1, v1, v23

    move-wide/from16 v25, v10

    mul-float v10, v6, v6

    float-to-double v10, v10

    move-wide/from16 v27, v14

    mul-float v14, v7, v7

    float-to-double v14, v14

    mul-double v23, v8, v8

    mul-double v29, v1, v1

    div-double v31, v23, v10

    div-double v33, v29, v14

    move-wide/from16 v35, v10

    add-double v10, v31, v33

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    cmpl-double v33, v10, v31

    if-lez v33, :cond_2

    move-wide/from16 v37, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v6, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v7, v14

    mul-float v14, v6, v6

    float-to-double v14, v14

    move/from16 v39, v6

    mul-float v6, v7, v7

    move/from16 v40, v7

    float-to-double v6, v6

    move-wide/from16 v37, v6

    move-wide/from16 v35, v14

    move/from16 v6, v39

    move/from16 v14, v40

    goto :goto_0

    :cond_2
    move-wide/from16 v37, v14

    move v14, v7

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

    mul-double v33, v35, v37

    mul-double v39, v35, v29

    sub-double v33, v33, v39

    mul-double v39, v37, v23

    sub-double v33, v33, v39

    mul-double v39, v35, v29

    mul-double v43, v37, v23

    add-double v39, v39, v43

    div-double v33, v33, v39

    const-wide/16 v39, 0x0

    cmpg-double v7, v33, v39

    if-gez v7, :cond_4

    move-wide/from16 v43, v39

    goto :goto_2

    :cond_4
    move-wide/from16 v43, v33

    :goto_2
    move-wide/from16 v45, v43

    move-wide/from16 v47, v12

    move-wide/from16 v12, v45

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    mul-double v33, v33, v10

    move-wide/from16 v49, v10

    float-to-double v10, v6

    mul-double/2addr v10, v1

    move-wide/from16 v51, v12

    float-to-double v12, v14

    div-double/2addr v10, v12

    mul-double v10, v10, v33

    float-to-double v12, v14

    mul-double/2addr v12, v8

    move/from16 v53, v14

    float-to-double v14, v6

    div-double/2addr v12, v14

    neg-double v12, v12

    mul-double v12, v12, v33

    add-float v7, p0, v4

    float-to-double v14, v7

    div-double v14, v14, v18

    add-float v7, p1, v5

    float-to-double v4, v7

    div-double v4, v4, v18

    mul-double v18, v47, v10

    mul-double v43, v27, v12

    sub-double v18, v18, v43

    move-wide/from16 v54, v1

    add-double v0, v14, v18

    mul-double v18, v27, v10

    mul-double v43, v47, v12

    add-double v18, v18, v43

    move-wide/from16 v56, v14

    add-double v14, v4, v18

    sub-double v18, v8, v10

    move-wide/from16 v58, v4

    float-to-double v4, v6

    div-double v18, v18, v4

    sub-double v4, v54, v12

    move-wide/from16 v60, v14

    move/from16 v2, v53

    float-to-double v14, v2

    div-double/2addr v4, v14

    neg-double v14, v8

    sub-double/2addr v14, v10

    move-wide/from16 v62, v8

    float-to-double v7, v6

    div-double/2addr v14, v7

    move-wide/from16 v64, v10

    move-wide/from16 v7, v54

    neg-double v9, v7

    sub-double/2addr v9, v12

    move-wide/from16 v66, v7

    float-to-double v7, v2

    div-double/2addr v9, v7

    mul-double v7, v18, v18

    mul-double v43, v4, v4

    add-double v7, v7, v43

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    move-wide/from16 v43, v18

    cmpg-double v11, v4, v39

    const-wide/high16 v45, -0x4010000000000000L    # -1.0

    if-gez v11, :cond_5

    move-wide/from16 v54, v45

    goto :goto_3

    :cond_5
    move-wide/from16 v54, v31

    :goto_3
    move-wide/from16 v49, v54

    move-wide/from16 v68, v12

    div-double v11, v43, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    mul-double v11, v11, v49

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    mul-double v54, v18, v18

    mul-double v70, v4, v4

    add-double v54, v54, v70

    mul-double v70, v14, v14

    mul-double v72, v9, v9

    add-double v70, v70, v72

    move-wide/from16 v74, v7

    mul-double v7, v54, v70

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    mul-double v7, v18, v14

    mul-double v70, v4, v9

    add-double v43, v7, v70

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

    div-double v7, v43, v54

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    mul-double v7, v7, v31

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    if-nez v3, :cond_7

    cmpl-double v13, v7, v39

    if-lez v13, :cond_7

    const-wide v16, 0x4076800000000000L    # 360.0

    sub-double v7, v7, v16

    goto :goto_5

    :cond_7
    const-wide v16, 0x4076800000000000L    # 360.0

    if-eqz v3, :cond_8

    cmpg-double v13, v7, v39

    if-gez v13, :cond_8

    add-double v7, v7, v16

    :cond_8
    :goto_5
    rem-double v7, v7, v16

    rem-double v11, v11, v16

    invoke-static {v11, v12, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcToBeziers(DD)[F

    move-result-object v13

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v6, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v76, v2

    move/from16 v2, p4

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    double-to-float v2, v0

    move-wide/from16 v77, v0

    move-wide/from16 v79, v4

    move-wide/from16 v0, v60

    double-to-float v4, v0

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    array-length v2, v13

    add-int/lit8 v2, v2, -0x2

    move/from16 v4, p7

    aput v4, v13, v2

    array-length v2, v13

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    move/from16 v5, p8

    aput v5, v13, v2

    const/4 v2, 0x0

    :goto_6
    move-wide/from16 v81, v0

    array-length v0, v13

    if-lt v2, v0, :cond_9

    return-void

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

    add-int/lit8 v2, v2, 0x6

    move-wide/from16 v0, v81

    goto :goto_6

    :cond_a
    :goto_7
    move-object/from16 v0, p9

    invoke-interface {v0, v4, v5}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    return-void
.end method

.method private static arcToBeziers(DD)[F
    .locals 25

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    int-to-double v5, v0

    div-double v5, v3, v5

    double-to-float v5, v5

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

    mul-int/lit8 v6, v0, 0x6

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v0, :cond_0

    return-object v6

    :cond_0
    int-to-float v9, v8

    mul-float/2addr v9, v5

    float-to-double v12, v9

    add-double/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    add-int/lit8 v9, v7, 0x1

    mul-double v18, v10, v16

    move/from16 v20, v0

    move-wide/from16 v21, v1

    sub-double v0, v14, v18

    double-to-float v0, v0

    aput v0, v6, v7

    add-int/lit8 v0, v9, 0x1

    mul-double v1, v10, v14

    add-double v1, v16, v1

    double-to-float v1, v1

    aput v1, v6, v9

    float-to-double v1, v5

    add-double/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    add-int/lit8 v7, v0, 0x1

    mul-double v16, v10, v14

    move-wide/from16 v23, v3

    add-double v3, v1, v16

    double-to-float v3, v3

    aput v3, v6, v0

    add-int/lit8 v0, v7, 0x1

    mul-double v3, v10, v1

    sub-double v3, v14, v3

    double-to-float v3, v3

    aput v3, v6, v7

    add-int/lit8 v3, v0, 0x1

    double-to-float v4, v1

    aput v4, v6, v0

    add-int/lit8 v7, v3, 0x1

    double-to-float v0, v14

    aput v0, v6, v3

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v20

    move-wide/from16 v1, v21

    move-wide/from16 v3, v23

    goto :goto_0
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;
    .locals 12
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

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    nop

    :cond_3
    move v9, v1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v8, v6

    sub-float v5, v9, v7

    move-object v0, v11

    move-object v1, p0

    move v2, v6

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v8, v6

    sub-float v5, v9, v7

    move-object v0, v11

    move v2, v8

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v10
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;
    .locals 18
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

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

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

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    :goto_0
    if-lt v6, v1, :cond_3

    instance-of v6, v0, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v6, v6, v10

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v6, v6, v11

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v4, v6, v10

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v5, v6, v11

    invoke-virtual {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v10, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v4, v7, v6

    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v8, v6, 0x1

    aget v5, v7, v8

    invoke-virtual {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    move-object v3, v7

    add-int/lit8 v6, v6, 0x2

    goto :goto_0
.end method

.method private calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

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

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;)V

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    iget v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return v1
.end method

.method private calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 11

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v1, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v1, v2

    iget v2, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    iget v3, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v2, v3

    iget v3, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    neg-float v3, v3

    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    neg-float v4, v4

    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p3, v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v6, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object v0

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

    :goto_0
    iget v6, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v6, v5

    iget v7, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v7, v5

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

    :pswitch_1
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float/2addr v8, v6

    sub-float/2addr v3, v8

    goto :goto_1

    :pswitch_2
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float/2addr v8, v6

    div-float/2addr v8, v9

    sub-float/2addr v3, v8

    nop

    :goto_1
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v8

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_1

    goto :goto_2

    :pswitch_3
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v8, v7

    sub-float/2addr v4, v8

    goto :goto_2

    :pswitch_4
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v8, v7

    div-float/2addr v8, v9

    sub-float/2addr v4, v8

    nop

    :goto_2
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v9, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object v0

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

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    return-void
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 8

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v3, "ClipPath reference \'%s\' not found"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/caverock/androidsvg/SVG$ClipPath;

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void

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

    :goto_0
    instance-of v5, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    const-string v5, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v5, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    if-nez v4, :cond_5

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v5, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v5, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_5
    iget-object v2, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_6
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget-object v5, v3, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    return-void

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v6, v1, v2, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method private checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    :cond_1
    return-void
.end method

.method private checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-ge v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, ";base64"

    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    :cond_4
    :goto_0
    return-object v1
.end method

.method private checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

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

    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    nop

    :cond_3
    :goto_1
    nop

    const-string v3, "serif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v3, "sans-serif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v3, "monospace"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v3, "cursive"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v3, "fantasy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method private checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 3

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    :cond_1
    return-void
.end method

.method private clamp255(F)I
    .locals 2

    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

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

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private clipStatePush()V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V
    .locals 6

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_3

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

    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v1, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :goto_1
    return-void

    :cond_3
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeLinearGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    :cond_4
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeRadialGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V

    :cond_5
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V

    :cond_6
    return-void
.end method

.method private display()Z
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$PaintReference;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$Pattern;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private doStroke(Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private duplicateCanvas()V
    .locals 3

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

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not enough memory to create temporary bitmaps for mask processing"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 5

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V
    .locals 5

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v3, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v3, "Gradient reference \'%s\' not found"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-nez v3, :cond_1

    const-string v1, "Gradient href attributes must point to other gradient elements"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    const-string v3, "Circular reference in gradient href attribute \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$GradientElement;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    :cond_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    :cond_4
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    :cond_5
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    :cond_6
    :try_start_0
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    move-object v3, v0

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    goto :goto_0

    :cond_7
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    move-object v3, v0

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    :cond_3
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    :cond_4
    return-void
.end method

.method private fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v3, "Pattern reference \'%s\' not found"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    if-nez v3, :cond_1

    const-string v1, "Pattern href attributes must point to other pattern elements"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    const-string v3, "Circular reference in pattern href attribute \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$Pattern;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    :cond_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    :cond_4
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    :cond_5
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    :cond_6
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_7

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    :cond_7
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    :cond_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    :cond_9
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    :cond_a
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_b
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :cond_c
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

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

    :goto_0
    iget-object v6, v2, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {v0, v2, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x0

    if-eqz v3, :cond_6

    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_3

    :cond_4
    move v9, v6

    :goto_3
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_5

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    goto :goto_4

    :cond_5
    move v10, v6

    :goto_4
    nop

    move/from16 v27, v9

    move v9, v8

    move v8, v10

    move/from16 v10, v27

    goto :goto_9

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

    :goto_5
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_8

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    goto :goto_6

    :cond_8
    move v9, v6

    :goto_6
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_9

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v10

    goto :goto_7

    :cond_9
    move v10, v6

    :goto_7
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_a

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    goto :goto_8

    :cond_a
    move v8, v6

    :goto_8
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v12, v7

    add-float v7, v11, v12

    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v12, v9

    add-float v9, v11, v12

    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v10, v11

    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v8, v11

    :goto_9
    cmpl-float v11, v10, v6

    if-eqz v11, :cond_1b

    cmpl-float v11, v8, v6

    if-nez v11, :cond_b

    move/from16 v19, v3

    goto/16 :goto_13

    :cond_b
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v11, :cond_c

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_a

    :cond_c
    sget-object v11, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    new-instance v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v12, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v14

    invoke-direct {v0, v12, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    iget-object v14, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iput-object v15, v14, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v14

    iput-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v14, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v15, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-eqz v15, :cond_12

    iget-object v15, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget-object v15, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v15

    if-eqz v15, :cond_12

    const/16 v15, 0x8

    new-array v15, v15, [F

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v5, v15, v4

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    const/16 v17, 0x1

    aput v5, v15, v17

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

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    aput v5, v15, v4

    const/4 v4, 0x5

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v5

    aput v5, v15, v4

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    const/4 v5, 0x6

    aput v4, v15, v5

    const/4 v4, 0x7

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v5

    aput v5, v15, v4

    move-object v4, v15

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v5, Landroid/graphics/RectF;

    move/from16 v19, v3

    const/4 v15, 0x0

    aget v3, v4, v15

    move-object/from16 v20, v6

    const/16 v17, 0x1

    aget v6, v4, v17

    move-object/from16 v21, v12

    aget v12, v4, v15

    aget v15, v4, v17

    invoke-direct {v5, v3, v6, v12, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, v5

    const/4 v5, 0x2

    :goto_b
    const/4 v6, 0x6

    if-le v5, v6, :cond_d

    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v12, v3, Landroid/graphics/RectF;->top:F

    iget v15, v3, Landroid/graphics/RectF;->right:F

    iget v13, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v15, v13

    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v22, v14

    iget v14, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v14

    invoke-direct {v5, v6, v12, v15, v13}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v14, v5

    goto :goto_c

    :cond_d
    move-object/from16 v22, v14

    aget v12, v4, v5

    iget v13, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_e

    aget v12, v4, v5

    iput v12, v3, Landroid/graphics/RectF;->left:F

    :cond_e
    aget v12, v4, v5

    iget v13, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f

    aget v12, v4, v5

    iput v12, v3, Landroid/graphics/RectF;->right:F

    :cond_f
    add-int/lit8 v12, v5, 0x1

    aget v12, v4, v12

    iget v13, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_10

    add-int/lit8 v12, v5, 0x1

    aget v12, v4, v12

    iput v12, v3, Landroid/graphics/RectF;->top:F

    :cond_10
    add-int/lit8 v12, v5, 0x1

    aget v12, v4, v12

    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_11

    add-int/lit8 v12, v5, 0x1

    aget v12, v4, v12

    iput v12, v3, Landroid/graphics/RectF;->bottom:F

    :cond_11
    add-int/lit8 v5, v5, 0x2

    move-object/from16 v14, v22

    move-object/from16 v13, p2

    goto :goto_b

    :cond_12
    move/from16 v19, v3

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    const/16 v17, 0x1

    move-object/from16 v14, v22

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

    iget v4, v14, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    sub-float/2addr v4, v9

    div-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v9

    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v6

    new-instance v12, Lcom/caverock/androidsvg/SVG$Box;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v13, v10, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move v13, v4

    :goto_d
    cmpg-float v15, v13, v6

    if-ltz v15, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    return-void

    :cond_13
    move v15, v3

    :goto_e
    cmpg-float v16, v15, v5

    if-ltz v16, :cond_14

    add-float/2addr v13, v8

    goto :goto_d

    :cond_14
    iput v15, v12, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput v13, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move/from16 v23, v3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_15

    iget v3, v12, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v24, v4

    iget v4, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v25, v5

    iget v5, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v26, v6

    iget v6, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_f

    :cond_15
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    :goto_f
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v0, v12, v4, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_11

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

    :goto_10
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v15, v13}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v3, :cond_18

    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_18
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v3

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1a

    if-eqz v3, :cond_19

    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    add-float/2addr v15, v10

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    goto/16 :goto_e

    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgObject;

    invoke-direct {v0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_12

    :cond_1b
    move/from16 v19, v3

    :goto_13
    return-void
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    return-object v1
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_3

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    iput-boolean v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    return-object p2

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-direct {p0, p2, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object p1, v1

    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    goto :goto_0
.end method

.method private getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 2

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

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0
.end method

.method private getClipRuleFromState()Landroid/graphics/Path$FillType;
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

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

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method private getFillTypeFromState()Landroid/graphics/Path$FillType;
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

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

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method private static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .locals 4

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

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

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

    :goto_0
    if-eqz p1, :cond_2

    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    :goto_1
    const/4 v8, 0x0

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v9

    iget-object v10, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_3

    iget-object v10, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    goto :goto_2

    :cond_3
    move v10, v8

    :goto_2
    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_4

    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    goto :goto_3

    :cond_4
    move v11, v8

    :goto_3
    iget-object v12, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v12, :cond_5

    iget-object v12, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v12

    goto :goto_4

    :cond_5
    iget v12, v9, Lcom/caverock/androidsvg/SVG$Box;->width:F

    :goto_4
    iget-object v13, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v13, :cond_6

    iget-object v8, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    nop

    :cond_6
    nop

    move/from16 v17, v10

    :goto_5
    move/from16 v18, v11

    move/from16 v19, v12

    goto :goto_9

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

    :goto_6
    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_9

    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v11

    goto :goto_7

    :cond_9
    move v11, v8

    :goto_7
    iget-object v12, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v12, :cond_a

    iget-object v12, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v12, v0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v12

    goto :goto_8

    :cond_a
    move v12, v10

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

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    invoke-direct {v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v9

    iput-object v9, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move-object v15, v9

    if-nez v4, :cond_c

    iget v9, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v10, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v15, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v9, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v10, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v15, v9, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_c
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v9, :cond_d

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v9}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_d
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    if-eqz p1, :cond_e

    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_a

    :cond_e
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :goto_a
    return-void

    :cond_f
    new-array v5, v14, [I

    new-array v13, v14, [F

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v20, v9

    move/from16 v21, v10

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_15

    cmpl-float v9, v17, v19

    if-nez v9, :cond_10

    cmpl-float v9, v18, v8

    if-eqz v9, :cond_11

    :cond_10
    if-ne v14, v6, :cond_12

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    add-int/lit8 v6, v14, -0x1

    aget v6, v5, v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_12
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v9, :cond_14

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v9, v10, :cond_13

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_c

    :cond_13
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v9, v10, :cond_14

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :cond_14
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    new-instance v22, Landroid/graphics/LinearGradient;

    move-object/from16 v9, v22

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v23, v13

    move v13, v8

    move/from16 v24, v14

    move-object v14, v5

    move-object v1, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_15
    move-object/from16 v23, v13

    move/from16 v24, v14

    move-object v1, v15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v10, v9

    check-cast v10, Lcom/caverock/androidsvg/SVG$Stop;

    if-eqz v20, :cond_17

    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v21

    if-ltz v12, :cond_16

    goto :goto_d

    :cond_16
    aput v21, v23, v20

    goto :goto_e

    :cond_17
    :goto_d
    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v23, v20

    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    nop

    move/from16 v21, v12

    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, v12, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v12, Lcom/caverock/androidsvg/SVG$Colour;

    if-nez v12, :cond_18

    sget-object v12, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

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

    add-int/lit8 v20, v20, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    move-object v15, v1

    move-object/from16 v13, v23

    move/from16 v14, v24

    goto/16 :goto_b
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;
    .locals 18

    move-object/from16 v0, p0

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

    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    nop

    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    sub-float v12, v2, v11

    sub-float v13, v3, v11

    add-float v14, v2, v11

    add-float v15, v3, v11

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v11, v5

    mul-float/2addr v5, v11

    invoke-direct {v4, v12, v13, v6, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_2
    const v4, 0x3f0d6289

    mul-float v16, v11, v4

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object v10, v4

    invoke-virtual {v10, v2, v13}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v5, v2, v16

    sub-float v8, v3, v16

    move v6, v13

    move v7, v14

    move v9, v14

    move-object/from16 v17, v10

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v6, v3, v16

    add-float v7, v2, v16

    move-object/from16 v4, v17

    move v5, v14

    move v8, v15

    move v9, v2

    move v10, v15

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v5, v2, v16

    add-float v8, v3, v16

    move v6, v15

    move v7, v12

    move v9, v12

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v6, v3, v16

    sub-float v7, v2, v16

    move v5, v12

    move v8, v13

    move v9, v2

    move v10, v13

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    return-object v4
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;
    .locals 20

    move-object/from16 v0, p0

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

    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    nop

    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v12

    sub-float v13, v2, v11

    sub-float v14, v3, v12

    add-float v15, v2, v11

    add-float v16, v3, v12

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v11, v5

    mul-float/2addr v5, v12

    invoke-direct {v4, v13, v14, v6, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_2
    const v4, 0x3f0d6289

    mul-float v17, v11, v4

    mul-float v18, v12, v4

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object v10, v4

    invoke-virtual {v10, v2, v14}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v5, v2, v17

    sub-float v8, v3, v18

    move v6, v14

    move v7, v15

    move v9, v15

    move-object/from16 v19, v10

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v6, v3, v18

    add-float v7, v2, v17

    move-object/from16 v4, v19

    move v5, v15

    move/from16 v8, v16

    move v9, v2

    move/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v5, v2, v17

    add-float v8, v3, v18

    move/from16 v6, v16

    move v7, v13

    move v9, v13

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v6, v3, v18

    sub-float v7, v2, v17

    move v5, v13

    move v8, v14

    move v9, v2

    move v10, v14

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    return-object v4
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;
    .locals 9

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    :goto_2
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_4

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

    :cond_4
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v4
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;
    .locals 5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x2

    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v2, v2

    if-lt v1, v2, :cond_2

    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-object v0

    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v1

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v3, v2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v5

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

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v15

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v6, :cond_5

    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v6, v4, v14, v15, v13}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_5
    add-float v12, v4, v15

    add-float v11, v14, v13

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v10, v6

    cmpl-float v6, v2, v5

    if-eqz v6, :cond_7

    cmpl-float v5, v3, v5

    if-nez v5, :cond_6

    move-object v0, v10

    move v1, v11

    move/from16 v25, v13

    move/from16 v24, v15

    move v15, v12

    goto/16 :goto_3

    :cond_6
    const v5, 0x3f0d6289

    mul-float v23, v2, v5

    mul-float/2addr v5, v3

    add-float v6, v14, v3

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v6, v14, v3

    sub-float v8, v6, v5

    add-float v6, v4, v2

    sub-float v9, v6, v23

    add-float v16, v4, v2

    move-object v6, v10

    move v7, v4

    move-object v0, v10

    move v10, v14

    move v1, v11

    move/from16 v11, v16

    move/from16 v24, v15

    move v15, v12

    move v12, v14

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v12, v15, v2

    invoke-virtual {v0, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

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

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v11, v1, v3

    invoke-virtual {v0, v15, v11}, Landroid/graphics/Path;->lineTo(FF)V

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

    add-float v6, v4, v2

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

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

    add-float v6, v14, v3

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_7
    move-object v0, v10

    move v1, v11

    move/from16 v25, v13

    move/from16 v24, v15

    move v15, v12

    :goto_3
    invoke-virtual {v0, v4, v14}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v15, v14}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v14}, Landroid/graphics/Path;->lineTo(FF)V

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method private makeRadialGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

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

    :goto_0
    if-eqz p1, :cond_2

    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    :goto_1
    if-eqz v4, :cond_6

    new-instance v8, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v9, 0x42480000    # 50.0f

    sget-object v10, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_3

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

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

    :goto_4
    move v8, v11

    nop

    move/from16 v16, v9

    move/from16 v17, v10

    goto :goto_7

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

    :goto_5
    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_8

    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v11

    goto :goto_6

    :cond_8
    move v11, v9

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

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    invoke-direct {v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v9

    iput-object v9, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move-object v15, v9

    if-nez v4, :cond_a

    iget v9, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v10, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v15, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v9, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v10, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v15, v9, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_a
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v9, :cond_b

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v9}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_b
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    if-eqz p1, :cond_c

    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_8

    :cond_c
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :goto_8
    return-void

    :cond_d
    new-array v5, v14, [I

    new-array v13, v14, [F

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    iget-object v11, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v18, v9

    move/from16 v19, v10

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_12

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_11

    if-ne v14, v6, :cond_e

    move-object/from16 v21, v13

    move/from16 v22, v14

    move-object v1, v15

    goto :goto_b

    :cond_e
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v9, :cond_10

    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v9, v10, :cond_f

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_a

    :cond_f
    iget-object v9, v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v9, v10, :cond_10

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :cond_10
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    new-instance v20, Landroid/graphics/RadialGradient;

    move-object/from16 v9, v20

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v8

    move-object/from16 v21, v13

    move-object v13, v5

    move/from16 v22, v14

    move-object/from16 v14, v21

    move-object v1, v15

    move-object v15, v6

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_11
    move-object/from16 v21, v13

    move/from16 v22, v14

    move-object v1, v15

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    add-int/lit8 v14, v22, -0x1

    aget v6, v5, v14

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_12
    move-object/from16 v21, v13

    move/from16 v22, v14

    move-object v1, v15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v10, v9

    check-cast v10, Lcom/caverock/androidsvg/SVG$Stop;

    if-eqz v18, :cond_14

    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v19

    if-ltz v12, :cond_13

    goto :goto_c

    :cond_13
    aput v19, v21, v18

    goto :goto_d

    :cond_14
    :goto_c
    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v21, v18

    iget-object v12, v10, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    nop

    move/from16 v19, v12

    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, v12, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v12, Lcom/caverock/androidsvg/SVG$Colour;

    if-nez v12, :cond_15

    sget-object v12, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

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

    add-int/lit8 v18, v18, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    move-object v15, v1

    move-object/from16 v13, v21

    move/from16 v14, v22

    goto/16 :goto_9
.end method

.method private parentPop()V
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method private parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 5

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processMaskBitmaps()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Canvas;

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    return-void
.end method

.method private processMaskBitmaps()Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    new-array v14, v12, [I

    new-array v15, v12, [I

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-lt v10, v13, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v11

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

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v12, :cond_1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object v3, v11

    move-object v4, v15

    move v6, v12

    move/from16 v8, v16

    move v9, v12

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v10, v16, 0x1

    goto :goto_0

    :cond_1
    aget v3, v14, v2

    and-int/lit16 v4, v3, 0xff

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v3, 0x18

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_2

    const/4 v8, 0x0

    aput v8, v15, v2

    goto :goto_2

    :cond_2
    mul-int/lit16 v8, v6, 0x1b33

    mul-int/lit16 v9, v5, 0x5b92

    add-int/2addr v8, v9

    mul-int/lit16 v9, v4, 0x93a

    add-int/2addr v8, v9

    mul-int/2addr v8, v7

    const v9, 0x7f8000

    div-int/2addr v8, v9

    aget v9, v15, v2

    shr-int/lit8 v10, v9, 0x18

    and-int/lit16 v10, v10, 0xff

    mul-int v0, v10, v8

    div-int/lit16 v0, v0, 0xff

    const v10, 0xffffff

    and-int/2addr v10, v9

    shl-int/lit8 v17, v0, 0x18

    or-int v10, v10, v17

    aput v10, v15, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_1
.end method

.method private processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_8

    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string v0, "TSpan render"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TSpan;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    instance-of v6, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v6, :cond_a

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

    :cond_a
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$TSpan;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    instance-of v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v1, :cond_b

    move-object v1, p2

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v6, v2, v4

    iput v6, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    move-object v1, p2

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v6, v3, v5

    iput v6, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    :cond_b
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    if-eqz v1, :cond_c

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_c
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_8

    :cond_d
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TRef;

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TRef;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$TRef;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    if-eqz v2, :cond_e

    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v3, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const-string v3, "Tref reference \'%s\' not found"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_7
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    :cond_10
    :goto_8
    return-void
.end method

.method private pushLayer()Z
    .locals 7

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->requiresCompositing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

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

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$Mask;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v3, "Mask reference \'%s\' not found"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    return v2

    :cond_3
    :goto_1
    return v2
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Circle;)V
    .locals 3

    const-string v0, "Circle render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_6
    return-void

    :cond_7
    :goto_0
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Ellipse;)V
    .locals 3

    const-string v0, "Ellipse render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

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

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_6
    return-void

    :cond_7
    :goto_0
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Group;)V
    .locals 2

    const-string v0, "Group render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Image;)V
    .locals 11

    const-string v0, "Image render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    const-string v3, "Could not locate image \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

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

    :goto_1
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_2

    :cond_a
    move v4, v3

    :goto_2
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v8, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v8, v1, v4, v5, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v8, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_b

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

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v8, v9, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v7

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v7, :cond_c

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_c
    return-void

    :cond_d
    :goto_3
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Line;)V
    .locals 2

    const-string v0, "Line render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_4
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Path;)V
    .locals 3

    const-string v0, "Path render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_7
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$PolyLine;)V
    .locals 4

    const-string v0, "PolyLine render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_5
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_7
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Polygon;)V
    .locals 4

    const-string v0, "Polygon render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;->points:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_5
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_7
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Rect;)V
    .locals 3

    const-string v0, "Rect render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

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

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_6
    return-void

    :cond_7
    :goto_0
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {p0, p1, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 6

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 9

    const-string v0, "Svg render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez p5, :cond_4

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_0
    move-object p5, v0

    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v2, :cond_8

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

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    nop

    :cond_7
    move v1, v3

    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    if-eqz p2, :cond_9

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_2

    :cond_9
    iget v3, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    :goto_2
    if-eqz p3, :cond_a

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_3

    :cond_a
    iget v4, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    :goto_3
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v6, v0, v1, v3, v4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_b

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

    :cond_b
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    if-eqz p4, :cond_c

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v6, p4, p5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_c
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v5

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    if-eqz v5, :cond_d

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 1

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Use;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Switch;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Switch;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Group;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Image;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Image;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Path;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Rect;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Circle;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Ellipse;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Line;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Polygon;)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$PolyLine;)V

    goto :goto_0

    :cond_c
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Text;)V

    :cond_d
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 2

    const-string v0, "Switch render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 7

    const-string v0, "Symbol render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    :goto_2
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v1, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

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

    :cond_6
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v4, v5, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_7
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    if-eqz v3, :cond_8

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Text;)V
    .locals 11

    const-string v0, "Text render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

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

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v2

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v5, :cond_b

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v5

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v2, v6, :cond_a

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    sub-float/2addr v0, v6

    goto :goto_7

    :cond_a
    sub-float/2addr v0, v5

    :cond_b
    :goto_7
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v5, :cond_c

    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v5, p0, v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

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

    :cond_c
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v5

    new-instance v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v7, v0, v4

    add-float v8, v3, v1

    invoke-direct {v6, p0, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    if-eqz v5, :cond_d

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_d
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Use;)V
    .locals 9

    const-string v0, "Use render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v2, "Use reference \'%s\' not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    :cond_6
    move v2, v3

    :goto_0
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_7

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    nop

    :cond_7
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v5, v0

    check-cast v5, Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_8

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :cond_8
    iget-object v6, v5, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_9

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2

    :cond_9
    iget-object v7, v5, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    :goto_2
    invoke-direct {p0, v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_5

    :cond_a
    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$Symbol;

    if-eqz v5, :cond_d

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v5, :cond_b

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    :cond_b
    new-instance v5, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

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

    :goto_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v7, v0

    check-cast v7, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {p0, v7, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_5

    :cond_d
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    if-eqz v4, :cond_e

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_e
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    return-void
.end method

.method private renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_0
.end method

.method private renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

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

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

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

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iput-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget v7, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v8, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v6, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_2

    :cond_4
    move v7, v5

    :goto_2
    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_5

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    nop

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

    :goto_3
    iget-object v10, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_7

    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    nop

    :cond_7
    iget-object v10, v1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v10, :cond_8

    iget-object v10, v1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_4

    :cond_8
    iget-object v10, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    :goto_4
    iget v11, v10, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v11, v8, v11

    iget v12, v10, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v12, v9, v12

    iget-object v13, v1, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v13, :cond_9

    iget-object v13, v1, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_5

    :cond_9
    sget-object v13, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_5
    sget-object v14, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v13, v14}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

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

    :goto_6
    move v12, v14

    move v11, v14

    :cond_b
    neg-float v14, v7

    mul-float/2addr v14, v11

    neg-float v15, v5

    mul-float/2addr v15, v12

    invoke-virtual {v6, v14, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v14, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_c

    iget v14, v10, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v14, v11

    iget v15, v10, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v15, v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v18

    invoke-virtual {v13}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v2

    aget v2, v18, v2

    const/high16 v18, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_0

    :goto_7
    :pswitch_0
    move/from16 v2, v16

    goto :goto_8

    :pswitch_1
    sub-float v2, v8, v14

    sub-float v16, v16, v2

    goto :goto_7

    :pswitch_2
    sub-float v2, v8, v14

    div-float v2, v2, v18

    sub-float v16, v16, v2

    goto :goto_7

    :goto_8
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v16

    move/from16 v19, v3

    invoke-virtual {v13}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v3

    aget v3, v16, v3

    packed-switch v3, :pswitch_data_1

    :goto_9
    move/from16 v3, v17

    goto :goto_a

    :pswitch_3
    sub-float v3, v9, v15

    sub-float v17, v17, v3

    goto :goto_9

    :pswitch_4
    sub-float v3, v9, v15

    div-float v3, v3, v18

    sub-float v17, v17, v3

    goto :goto_9

    :goto_a
    invoke-direct {v0, v2, v3, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_b

    :cond_c
    move/from16 v19, v3

    :goto_b
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    if-eqz v2, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

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

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    goto :goto_0

    :cond_1
    const-string v6, "Marker reference \'%s\' not found"

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v1, v3

    check-cast v1, Lcom/caverock/androidsvg/SVG$Marker;

    goto :goto_1

    :cond_3
    const-string v6, "Marker reference \'%s\' not found"

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object v2, v3

    check-cast v2, Lcom/caverock/androidsvg/SVG$Marker;

    goto :goto_2

    :cond_5
    const-string v6, "Marker reference \'%s\' not found"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    const/4 v3, 0x0

    instance-of v5, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v5, :cond_7

    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;

    move-object v6, p1

    check-cast v6, Lcom/caverock/androidsvg/SVG$Path;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v5, p0, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->getMarkers()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    :cond_7
    instance-of v5, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v5, :cond_8

    move-object v5, p1

    check-cast v5, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {p0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v5, p1

    check-cast v5, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;

    move-result-object v3

    :goto_3
    if-nez v3, :cond_9

    return-void

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_a

    return-void

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

    if-eqz v0, :cond_b

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    :cond_b
    if-eqz v1, :cond_d

    const/4 v4, 0x1

    :goto_4
    add-int/lit8 v6, v5, -0x1

    if-lt v4, v6, :cond_c

    goto :goto_5

    :cond_c
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    if-eqz v2, :cond_e

    add-int/lit8 v4, v5, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v2, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    :cond_e
    return-void
.end method

.method private renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Mask render"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

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

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    :cond_1
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

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

    :goto_4
    goto :goto_7

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

    :goto_5
    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_7

    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    nop

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

    :goto_6
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_9

    iget-object v10, v1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v10

    nop

    :cond_9
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v12, v7

    add-float v7, v11, v12

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v12, v8

    add-float v8, v11, v12

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v9, v11

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v10, v11

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    move/from16 v17, v10

    move v10, v8

    move/from16 v8, v17

    :goto_7
    const/4 v11, 0x0

    cmpl-float v12, v7, v11

    if-eqz v12, :cond_d

    cmpl-float v11, v8, v11

    if-nez v11, :cond_a

    goto :goto_8

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v11

    iput-object v11, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v11, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v6, :cond_b

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_b

    move v5, v4

    nop

    :cond_b
    if-nez v5, :cond_c

    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_c
    invoke-direct {v0, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    return-void

    :cond_d
    :goto_8
    return-void
.end method

.method private renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v1

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

    instance-of v4, v3, Lcom/caverock/androidsvg/SVG$SvgConditional;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v3

    check-cast v4, Lcom/caverock/androidsvg/SVG$SvgConditional;

    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredExtensions()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getSystemLanguage()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFeatures()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFormats()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v1, :cond_6

    goto :goto_0

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

    invoke-virtual {v1, v9}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->isFormatSupported(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_0

    :cond_9
    :goto_1
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFonts()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-nez v1, :cond_a

    goto :goto_0

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

    goto/16 :goto_0

    :cond_d
    :goto_2
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    nop

    :goto_3
    return-void
.end method

.method private renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V
    .locals 9

    const-string v0, "TextPath render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v2, "TextPath reference \'%s\' not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object v2, v0

    check-cast v2, Lcom/caverock/androidsvg/SVG$Path;

    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v3, p0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_3
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, v3, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object v1, v4

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

    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v6

    sget-object v7, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v6, v7, :cond_6

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v7

    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v6, v8, :cond_5

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    sub-float/2addr v4, v8

    goto :goto_1

    :cond_5
    sub-float/2addr v4, v7

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$TextPath;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v7

    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;

    invoke-direct {v8, p0, v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V

    invoke-direct {p0, p1, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    if-eqz v7, :cond_7

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_7
    return-void
.end method

.method private requiresCompositing()Z
    .locals 3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-nez v0, :cond_0

    const-string v0, "Masks are not supported when using getPicture()"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-nez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private resetState()V
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    return-void
.end method

.method private setClipRect(FFFF)V
    .locals 5

    move v0, p1

    move v1, p2

    add-float v2, p1, p3

    add-float v3, p2, p4

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float/2addr v3, v4

    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method private setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V
    .locals 3

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

    instance-of v1, p3, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v1, :cond_1

    move-object v1, p3

    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    goto :goto_1

    :cond_1
    instance-of v1, p3, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    nop

    :goto_1
    nop

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    if-eqz p2, :cond_2

    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    return-void

    :cond_3
    return-void
.end method

.method private setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V
    .locals 9

    const-wide v0, 0x180000000L

    const-wide v2, 0x100000000L

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide v6, 0x80000000L

    if-eqz p1, :cond_3

    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v8, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v7, :cond_0

    move v4, v5

    nop

    :cond_0
    iput-boolean v4, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    :cond_1
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v4, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    :cond_2
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_0

    :cond_3
    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v8, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v7, :cond_4

    move v4, v5

    nop

    :cond_4
    iput-boolean v4, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :cond_5
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v4, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    :cond_6
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private statePop()V
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private statePush()V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    if-eqz v0, :cond_0

    const-string v0, "[\\n\\t]"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\t"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "\\s+$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "\\s{2,}"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 9

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_8

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

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    aput v5, v1, v2

    const/4 v2, 0x5

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v5

    aput v5, v1, v2

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    const/4 v5, 0x6

    aput v2, v1, v5

    const/4 v2, 0x7

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v6

    aput v6, v1, v2

    nop

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v2, Landroid/graphics/RectF;

    aget v6, v1, v3

    aget v7, v1, v4

    aget v3, v1, v3

    aget v4, v1, v4

    invoke-direct {v2, v6, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x2

    :goto_0
    if-le v3, v5, :cond_3

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgElement;

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    :cond_2
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG$Box;->union(Lcom/caverock/androidsvg/SVG$Box;)V

    goto :goto_1

    :cond_3
    aget v4, v1, v3

    iget v6, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    aget v4, v1, v3

    iput v4, v2, Landroid/graphics/RectF;->left:F

    :cond_4
    aget v4, v1, v3

    iget v6, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_5

    aget v4, v1, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    :cond_5
    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iget v6, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    :cond_6
    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    :cond_7
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method

.method private updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 10

    const-wide/16 v0, 0x1000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    :cond_0
    const-wide/16 v0, 0x800

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    :cond_1
    const-wide/16 v0, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    :cond_3
    const-wide/16 v3, 0x4

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    :cond_4
    const-wide/16 v3, 0x1805

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    :cond_5
    const-wide/16 v3, 0x2

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    :cond_6
    const-wide/16 v3, 0x8

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :cond_8
    const-wide/16 v3, 0x10

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    :cond_9
    const-wide/16 v3, 0x1818

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    :cond_a
    const-wide v3, 0x800000000L

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    :cond_b
    const-wide/16 v3, 0x20

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_c
    const-wide/16 v3, 0x40

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps()[I

    move-result-object v0

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    nop

    :cond_d
    :goto_2
    const-wide/16 v3, 0x80

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin()[I

    move-result-object v0

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_3

    :pswitch_4
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_3

    :pswitch_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    nop

    :cond_e
    :goto_3
    const-wide/16 v3, 0x100

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_f
    const-wide/16 v3, 0x200

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    :cond_10
    const-wide/16 v3, 0x400

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    :cond_11
    const-wide/16 v3, 0x600

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    array-length v4, v4

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_13

    move v5, v4

    goto :goto_4

    :cond_13
    mul-int/lit8 v5, v4, 0x2

    :goto_4
    new-array v6, v5, [F

    const/4 v7, 0x0

    :goto_5
    if-lt v7, v5, :cond_16

    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    if-nez v8, :cond_14

    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_6

    :cond_14
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    cmpg-float v7, v3, v7

    if-gez v7, :cond_15

    rem-float v7, v3, v0

    add-float v3, v0, v7

    :cond_15
    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/DashPathEffect;

    invoke-direct {v8, v6, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_6

    :cond_16
    iget-object v8, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    rem-int v9, v7, v4

    aget-object v8, v8, v9

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    aput v8, v6, v7

    aget v8, v6, v7

    add-float/2addr v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_17
    :goto_6
    const-wide/16 v3, 0x4000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v0

    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_18
    const-wide/16 v3, 0x2000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    :cond_19
    const-wide/32 v3, 0x8000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1c

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

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto :goto_7

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

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto :goto_7

    :cond_1b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    :cond_1c
    :goto_7
    const-wide/32 v3, 0x10000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    :cond_1d
    const-wide/32 v3, 0x1a000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v4

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

    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    if-nez v3, :cond_20

    if-eqz v4, :cond_20

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

    :cond_20
    if-eqz v3, :cond_1e

    goto :goto_8

    :cond_21
    move-object v4, v0

    :goto_8
    if-nez v3, :cond_22

    const-string v0, "sans-serif"

    iget-object v5, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v0, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    :cond_22
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_23
    const-wide/32 v3, 0x20000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_28

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

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_27

    move v1, v2

    nop

    :cond_27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_28
    const-wide v0, 0x1000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    :cond_29
    const-wide/32 v0, 0x40000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :cond_2a
    const-wide/32 v0, 0x80000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    :cond_2b
    const-wide/32 v0, 0x200000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    :cond_2c
    const-wide/32 v0, 0x400000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    :cond_2d
    const-wide/32 v0, 0x800000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    :cond_2e
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    :cond_2f
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    :cond_30
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    :cond_31
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    :cond_32
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    :cond_33
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    :cond_34
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    :cond_35
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    :cond_36
    const-wide v0, 0x200000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    :cond_37
    const-wide v0, 0x400000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

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

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Style;->resetNonInheritingProperties(Z)V

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->hasCSSRules()Z

    move-result v1

    if-eqz v1, :cond_4

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

    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-static {v3, p2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    :cond_5
    return-void
.end method

.method private viewportFill()V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    nop

    :goto_0
    nop

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    :cond_2
    return-void
.end method

.method private visible()Z
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected getCurrentFontSize()F
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getCurrentFontXHeight()F
    .locals 2

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

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-object v0
.end method

.method protected getDPI()F
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    return v0
.end method

.method protected renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V
    .locals 7

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iput-boolean p4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "Nothing to render. Document is empty."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->resetState()V

    invoke-direct {p0, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iget-object v2, v6, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v3, v6, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz p2, :cond_1

    move-object v4, p2

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_2

    move-object v5, p3

    goto :goto_1

    :cond_2
    iget-object v0, v6, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v5, v0

    :goto_1
    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    return-void
.end method
