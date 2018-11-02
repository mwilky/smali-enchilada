.class public Lcom/oneplus/settings/opfinger/SvgHelper;
.super Ljava/lang/Object;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SVG"


# instance fields
.field private final mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourcePaint:Landroid/graphics/Paint;

.field private mSvg:Lcom/caverock/androidsvg/SVG;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mPaths:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSourcePaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/opfinger/SvgHelper;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSourcePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/opfinger/SvgHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mPaths:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getPathsForViewport(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/oneplus/settings/opfinger/SvgHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/settings/opfinger/SvgHelper$1;-><init>(Lcom/oneplus/settings/opfinger/SvgHelper;II)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getDocumentViewBox()Landroid/graphics/RectF;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v3, p1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, p2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mPaths:Ljava/util/List;

    return-object v3
.end method

.method public load(Landroid/content/Context;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/caverock/androidsvg/SVG;->getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio;->UNSCALED:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->setDocumentPreserveAspectRatio(Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SVG"

    const-string v2, "Could not load specified SVG resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
