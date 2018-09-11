.class public Lcom/caverock/androidsvg/SVGParser;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGParser$SVGAttr;,
        Lcom/caverock/androidsvg/SVGParser$TextScanner;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I = null

.field private static final CURRENTCOLOR:Ljava/lang/String; = "currentColor"

.field private static final FEATURE_STRING_PREFIX:Ljava/lang/String; = "http://www.w3.org/TR/SVG11/feature#"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final SVG_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2000/svg"

.field private static final TAG:Ljava/lang/String; = "SVGParser"

.field private static final TAG_A:Ljava/lang/String; = "a"

.field private static final TAG_CIRCLE:Ljava/lang/String; = "circle"

.field private static final TAG_CLIPPATH:Ljava/lang/String; = "clipPath"

.field private static final TAG_DEFS:Ljava/lang/String; = "defs"

.field private static final TAG_DESC:Ljava/lang/String; = "desc"

.field private static final TAG_ELLIPSE:Ljava/lang/String; = "ellipse"

.field private static final TAG_G:Ljava/lang/String; = "g"

.field private static final TAG_IMAGE:Ljava/lang/String; = "image"

.field private static final TAG_LINE:Ljava/lang/String; = "line"

.field private static final TAG_LINEARGRADIENT:Ljava/lang/String; = "linearGradient"

.field private static final TAG_MARKER:Ljava/lang/String; = "marker"

.field private static final TAG_MASK:Ljava/lang/String; = "mask"

.field private static final TAG_PATH:Ljava/lang/String; = "path"

.field private static final TAG_PATTERN:Ljava/lang/String; = "pattern"

.field private static final TAG_POLYGON:Ljava/lang/String; = "polygon"

.field private static final TAG_POLYLINE:Ljava/lang/String; = "polyline"

.field private static final TAG_RADIALGRADIENT:Ljava/lang/String; = "radialGradient"

.field private static final TAG_RECT:Ljava/lang/String; = "rect"

.field private static final TAG_SOLIDCOLOR:Ljava/lang/String; = "solidColor"

.field private static final TAG_STOP:Ljava/lang/String; = "stop"

.field private static final TAG_STYLE:Ljava/lang/String; = "style"

.field private static final TAG_SVG:Ljava/lang/String; = "svg"

.field private static final TAG_SWITCH:Ljava/lang/String; = "switch"

.field private static final TAG_SYMBOL:Ljava/lang/String; = "symbol"

.field private static final TAG_TEXT:Ljava/lang/String; = "text"

.field private static final TAG_TEXTPATH:Ljava/lang/String; = "textPath"

.field private static final TAG_TITLE:Ljava/lang/String; = "title"

.field private static final TAG_TREF:Ljava/lang/String; = "tref"

.field private static final TAG_TSPAN:Ljava/lang/String; = "tspan"

.field private static final TAG_USE:Ljava/lang/String; = "use"

.field private static final TAG_VIEW:Ljava/lang/String; = "view"

.field private static final VALID_DISPLAY_VALUES:Ljava/lang/String; = "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

.field private static final VALID_VISIBILITY_VALUES:Ljava/lang/String; = "|visible|hidden|collapse|"

.field private static final XLINK_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xlink"

.field private static aspectRatioKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;",
            ">;"
        }
    .end annotation
.end field

.field private static colourKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static fontSizeKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation
.end field

.field private static fontStyleKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Style$FontStyle;",
            ">;"
        }
    .end annotation
.end field

.field private static fontWeightKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static supportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

.field private ignoreDepth:I

.field private ignoring:Z

.field private inMetadataElement:Z

.field private inStyleElement:Z

.field private metadataElementContents:Ljava/lang/StringBuilder;

.field private metadataTag:Ljava/lang/String;

.field private styleElementContents:Ljava/lang/StringBuilder;

.field private supportedFormats:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private svgDocument:Lcom/caverock/androidsvg/SVG;


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I
    .locals 3

    .line 67
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->values()[Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->CLASS:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

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
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clipPathUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

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
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_path:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->d:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->direction:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->display:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    :goto_b
    :try_start_c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v1

    :goto_d
    :try_start_e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v1

    :goto_e
    :try_start_f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v1

    :goto_f
    :try_start_10
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v1

    :goto_10
    :try_start_11
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v1

    :goto_11
    :try_start_12
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_family:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v1

    :goto_12
    :try_start_13
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_size:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v1

    :goto_13
    :try_start_14
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v1

    :goto_14
    :try_start_15
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_weight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v1

    :goto_15
    :try_start_16
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v1

    :goto_16
    :try_start_17
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v1

    :goto_17
    :try_start_18
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v1

    :goto_18
    :try_start_19
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v1

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v1

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v1

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->id:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v1

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v1

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerHeight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v1

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v1

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerWidth:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v1

    :goto_20
    :try_start_21
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_end:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v1

    :goto_21
    :try_start_22
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_mid:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v1

    :goto_22
    :try_start_23
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_start:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v1

    :goto_23
    :try_start_24
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->mask:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v1

    :goto_24
    :try_start_25
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v1

    :goto_25
    :try_start_26
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v1

    :goto_26
    :try_start_27
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->media:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v1

    :goto_27
    :try_start_28
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->offset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v1

    :goto_28
    :try_start_29
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v1

    :goto_29
    :try_start_2a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->orient:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v1

    :goto_2a
    :try_start_2b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->overflow:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v1

    :goto_2b
    :try_start_2c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->pathLength:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v1

    :goto_2c
    :try_start_2d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v1

    :goto_2d
    :try_start_2e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v1

    :goto_2e
    :try_start_2f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_2f

    :catch_2f
    move-exception v1

    :goto_2f
    :try_start_30
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    goto :goto_30

    :catch_30
    move-exception v1

    :goto_30
    :try_start_31
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->preserveAspectRatio:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    goto :goto_31

    :catch_31
    move-exception v1

    :goto_31
    :try_start_32
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->r:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    goto :goto_32

    :catch_32
    move-exception v1

    :goto_32
    :try_start_33
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refX:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    goto :goto_33

    :catch_33
    move-exception v1

    :goto_33
    :try_start_34
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refY:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    goto :goto_34

    :catch_34
    move-exception v1

    :goto_34
    :try_start_35
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredExtensions:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    goto :goto_35

    :catch_35
    move-exception v1

    :goto_35
    :try_start_36
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFeatures:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    goto :goto_36

    :catch_36
    move-exception v1

    :goto_36
    :try_start_37
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFonts:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    goto :goto_37

    :catch_37
    move-exception v1

    :goto_37
    :try_start_38
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFormats:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    goto :goto_38

    :catch_38
    move-exception v1

    :goto_38
    :try_start_39
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->rx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    goto :goto_39

    :catch_39
    move-exception v1

    :goto_39
    :try_start_3a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ry:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    goto :goto_3a

    :catch_3a
    move-exception v1

    :goto_3a
    :try_start_3b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    goto :goto_3b

    :catch_3b
    move-exception v1

    :goto_3b
    :try_start_3c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    goto :goto_3c

    :catch_3c
    move-exception v1

    :goto_3c
    :try_start_3d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->spreadMethod:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    goto :goto_3d

    :catch_3d
    move-exception v1

    :goto_3d
    :try_start_3e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->startOffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    goto :goto_3e

    :catch_3e
    move-exception v1

    :goto_3e
    :try_start_3f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    goto :goto_3f

    :catch_3f
    move-exception v1

    :goto_3f
    :try_start_40
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    goto :goto_40

    :catch_40
    move-exception v1

    :goto_40
    :try_start_41
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    goto :goto_41

    :catch_41
    move-exception v1

    :goto_41
    :try_start_42
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dasharray:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    goto :goto_42

    :catch_42
    move-exception v1

    :goto_42
    :try_start_43
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dashoffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    goto :goto_43

    :catch_43
    move-exception v1

    :goto_43
    :try_start_44
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linecap:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    goto :goto_44

    :catch_44
    move-exception v1

    :goto_44
    :try_start_45
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linejoin:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    goto :goto_45

    :catch_45
    move-exception v1

    :goto_45
    :try_start_46
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_miterlimit:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    goto :goto_46

    :catch_46
    move-exception v1

    :goto_46
    :try_start_47
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    goto :goto_47

    :catch_47
    move-exception v1

    :goto_47
    :try_start_48
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    goto :goto_48

    :catch_48
    move-exception v1

    :goto_48
    :try_start_49
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    goto :goto_49

    :catch_49
    move-exception v1

    :goto_49
    :try_start_4a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->systemLanguage:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    goto :goto_4a

    :catch_4a
    move-exception v1

    :goto_4a
    :try_start_4b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_anchor:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    goto :goto_4b

    :catch_4b
    move-exception v1

    :goto_4b
    :try_start_4c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_decoration:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    goto :goto_4c

    :catch_4c
    move-exception v1

    :goto_4c
    :try_start_4d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    goto :goto_4d

    :catch_4d
    move-exception v1

    :goto_4d
    :try_start_4e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->type:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    goto :goto_4e

    :catch_4e
    move-exception v1

    :goto_4e
    :try_start_4f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->vector_effect:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    goto :goto_4f

    :catch_4f
    move-exception v1

    :goto_4f
    :try_start_50
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->version:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    goto :goto_50

    :catch_50
    move-exception v1

    :goto_50
    :try_start_51
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewBox:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    goto :goto_51

    :catch_51
    move-exception v1

    :goto_51
    :try_start_52
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    goto :goto_52

    :catch_52
    move-exception v1

    :goto_52
    :try_start_53
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    goto :goto_53

    :catch_53
    move-exception v1

    :goto_53
    :try_start_54
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->visibility:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    goto :goto_54

    :catch_54
    move-exception v1

    :goto_54
    :try_start_55
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    goto :goto_55

    :catch_55
    move-exception v1

    :goto_55
    :try_start_56
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    goto :goto_56

    :catch_56
    move-exception v1

    :goto_56
    :try_start_57
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    goto :goto_57

    :catch_57
    move-exception v1

    :goto_57
    :try_start_58
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    goto :goto_58

    :catch_58
    move-exception v1

    :goto_58
    :try_start_59
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    goto :goto_59

    :catch_59
    move-exception v1

    :goto_59
    :try_start_5a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    goto :goto_5a

    :catch_5a
    move-exception v1

    :goto_5a
    :try_start_5b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    goto :goto_5b

    :catch_5b
    move-exception v1

    :goto_5b
    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    .line 291
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    .line 292
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    .line 298
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "aliceblue"

    const v2, 0xf0f8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "antiquewhite"

    const v2, 0xfaebd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "aqua"

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "aquamarine"

    const v3, 0x7fffd4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "azure"

    const v3, 0xf0ffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "beige"

    const v3, 0xf5f5dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "bisque"

    const v3, 0xffe4c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "black"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "blanchedalmond"

    const v3, 0xffebcd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "blue"

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "blueviolet"

    const v3, 0x8a2be2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "brown"

    const v3, 0xa52a2a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "burlywood"

    const v3, 0xdeb887

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cadetblue"

    const v3, 0x5f9ea0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "chartreuse"

    const v3, 0x7fff00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "chocolate"

    const v3, 0xd2691e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "coral"

    const v3, 0xff7f50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cornflowerblue"

    const v3, 0x6495ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cornsilk"

    const v3, 0xfff8dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "crimson"

    const v3, 0xdc143c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "cyan"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkblue"

    const/16 v2, 0x8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkcyan"

    const v2, 0x8b8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgoldenrod"

    const v2, 0xb8860b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgray"

    const v2, 0xa9a9a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgreen"

    const/16 v3, 0x6400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkgrey"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkkhaki"

    const v2, 0xbdb76b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkmagenta"

    const v2, 0x8b008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkolivegreen"

    const v2, 0x556b2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkorange"

    const v2, 0xff8c00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkorchid"

    const v2, 0x9932cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkred"

    const/high16 v2, 0x8b0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darksalmon"

    const v2, 0xe9967a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkseagreen"

    const v2, 0x8fbc8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkslateblue"

    const v2, 0x483d8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkslategray"

    const v2, 0x2f4f4f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkslategrey"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkturquoise"

    const v2, 0xced1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "darkviolet"

    const v2, 0x9400d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "deeppink"

    const v2, 0xff1493

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "deepskyblue"

    const v2, 0xbfff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "dimgray"

    const v2, 0x696969

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "dimgrey"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "dodgerblue"

    const v2, 0x1e90ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "firebrick"

    const v2, 0xb22222

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "floralwhite"

    const v2, 0xfffaf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "forestgreen"

    const v2, 0x228b22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "gainsboro"

    const v3, 0xdcdcdc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "ghostwhite"

    const v3, 0xf8f8ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "gold"

    const v3, 0xffd700

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "goldenrod"

    const v3, 0xdaa520

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "gray"

    const v3, 0x808080

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "green"

    const v4, 0x8000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "greenyellow"

    const v4, 0xadff2f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "grey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "honeydew"

    const v3, 0xf0fff0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "hotpink"

    const v3, 0xff69b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "indianred"

    const v3, 0xcd5c5c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "indigo"

    const v3, 0x4b0082

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "ivory"

    const v3, 0xfffff0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "khaki"

    const v3, 0xf0e68c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lavender"

    const v3, 0xe6e6fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lavenderblush"

    const v3, 0xfff0f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lawngreen"

    const v3, 0x7cfc00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lemonchiffon"

    const v3, 0xfffacd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightblue"

    const v3, 0xadd8e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightcoral"

    const v3, 0xf08080

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightcyan"

    const v3, 0xe0ffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgoldenrodyellow"

    const v3, 0xfafad2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgray"

    const v3, 0xd3d3d3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgreen"

    const v4, 0x90ee90

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightgrey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightpink"

    const v3, 0xffb6c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightsalmon"

    const v3, 0xffa07a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightseagreen"

    const v3, 0x20b2aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightskyblue"

    const v3, 0x87cefa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightslategray"

    const v3, 0x778899

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightslategrey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightsteelblue"

    const v3, 0xb0c4de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lightyellow"

    const v3, 0xffffe0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "lime"

    const v3, 0xff00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "limegreen"

    const v3, 0x32cd32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "linen"

    const v3, 0xfaf0e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "magenta"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "maroon"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumaquamarine"

    const v2, 0x66cdaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumblue"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumorchid"

    const v2, 0xba55d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumpurple"

    const v2, 0x9370db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumseagreen"

    const v2, 0x3cb371

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumslateblue"

    const v2, 0x7b68ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumspringgreen"

    const v2, 0xfa9a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumturquoise"

    const v2, 0x48d1cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mediumvioletred"

    const v2, 0xc71585

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "midnightblue"

    const v2, 0x191970

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mintcream"

    const v2, 0xf5fffa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "mistyrose"

    const v2, 0xffe4e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "moccasin"

    const v2, 0xffe4b5    # 2.3500096E-38f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "navajowhite"

    const v2, 0xffdead

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "oldlace"

    const v2, 0xfdf5e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "olivedrab"

    const v2, 0x6b8e23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "orange"

    const v2, 0xffa500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "orangered"

    const v2, 0xff4500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "orchid"

    const v2, 0xda70d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "palegoldenrod"

    const v2, 0xeee8aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "palegreen"

    const v2, 0x98fb98

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "paleturquoise"

    const v2, 0xafeeee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "palevioletred"

    const v2, 0xdb7093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "papayawhip"

    const v2, 0xffefd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "peachpuff"

    const v2, 0xffdab9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "peru"

    const v2, 0xcd853f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "pink"

    const v2, 0xffc0cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "plum"

    const v2, 0xdda0dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "powderblue"

    const v2, 0xb0e0e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "red"

    const/high16 v2, 0xff0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "rosybrown"

    const v2, 0xbc8f8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "royalblue"

    const v2, 0x4169e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "saddlebrown"

    const v2, 0x8b4513

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "salmon"

    const v2, 0xfa8072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "sandybrown"

    const v2, 0xf4a460

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "seagreen"

    const v2, 0x2e8b57

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "seashell"

    const v2, 0xfff5ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "sienna"

    const v2, 0xa0522d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "skyblue"

    const v2, 0x87ceeb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "slateblue"

    const v2, 0x6a5acd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "slategray"

    const v2, 0x708090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "slategrey"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "snow"

    const v2, 0xfffafa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "springgreen"

    const v2, 0xff7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "steelblue"

    const v2, 0x4682b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "tan"

    const v2, 0xd2b48c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "thistle"

    const v2, 0xd8bfd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "tomato"

    const v2, 0xff6347

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "turquoise"

    const v2, 0x40e0d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "violet"

    const v2, 0xee82ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "wheat"

    const v2, 0xf5deb3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "whitesmoke"

    const v2, 0xf5f5f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v1, "yellowgreen"

    const v2, 0x9acd32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "xx-small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v4, 0x3f31a9fc    # 0.694f

    invoke-direct {v2, v4, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "x-small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v4, 0x3f553f7d    # 0.833f

    invoke-direct {v2, v4, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v2, v4, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "medium"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {v2, v4, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v4, 0x41666666    # 14.4f

    invoke-direct {v2, v4, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "x-large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v4, 0x418a6666    # 17.3f

    invoke-direct {v2, v4, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "xx-large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v4, 0x41a5999a    # 20.7f

    invoke-direct {v2, v4, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "smaller"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    const v4, 0x42a6a8f6    # 83.33f

    invoke-direct {v2, v4, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string v1, "larger"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-direct {v2, v4, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "normal"

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "bold"

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "bolder"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "lighter"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "100"

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "200"

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "300"

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "400"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "500"

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "600"

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "700"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "800"

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "900"

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string v1, "normal"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string v1, "italic"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string v1, "oblique"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "none"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMinYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMidYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMaxYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMinYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMidYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMaxYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMinYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMidYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string v1, "xMaxYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Structure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicStructure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "ConditionalProcessing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "ViewportAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Shape"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicText"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "PaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicPaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "OpacityAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicGraphicsAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Gradient"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicClip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Mask"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "View"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 552
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 77
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 84
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 85
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 89
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 90
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 92
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->supportedFormats:Ljava/util/HashSet;

    .line 67
    return-void
.end method

.method private circle(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1173
    const-string v0, "<circle>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1177
    new-instance v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Circle;-><init>()V

    .line 1178
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Circle;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->document:Lcom/caverock/androidsvg/SVG;

    .line 1179
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1180
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1181
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1182
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1183
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1184
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V

    .line 1185
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1186
    return-void

    .line 1176
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Circle;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clipPath(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1893
    const-string v0, "<clipPath>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1895
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1897
    new-instance v0, Lcom/caverock/androidsvg/SVG$ClipPath;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$ClipPath;-><init>()V

    .line 1898
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$ClipPath;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->document:Lcom/caverock/androidsvg/SVG;

    .line 1899
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1900
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1901
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1902
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1903
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1904
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V

    .line 1905
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1906
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1907
    return-void

    .line 1896
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$ClipPath;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 837
    return-void
.end method

.method private defs(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 927
    const-string v0, "<defs>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 931
    new-instance v0, Lcom/caverock/androidsvg/SVG$Defs;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Defs;-><init>()V

    .line 932
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Defs;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Defs;->document:Lcom/caverock/androidsvg/SVG;

    .line 933
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Defs;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 934
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 935
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 936
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 937
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 938
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 939
    return-void

    .line 930
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Defs;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dumpNode(Lcom/caverock/androidsvg/SVG$SvgObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "elem"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "indent"    # Ljava/lang/String;

    .line 820
    const-string v0, "SVGParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    if-eqz v0, :cond_1

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    .end local p2    # "indent":Ljava/lang/String;
    .local v0, "indent":Ljava/lang/String;
    move-object p2, p1

    check-cast p2, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 827
    move-object p2, v0

    goto :goto_1

    .line 823
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 824
    .local p2, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p2, v0}, Lcom/caverock/androidsvg/SVGParser;->dumpNode(Lcom/caverock/androidsvg/SVG$SvgObject;Ljava/lang/String;)V

    .end local p2    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0

    .line 827
    .end local v0    # "indent":Ljava/lang/String;
    .local p2, "indent":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void
.end method

.method private ellipse(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1220
    const-string v0, "<ellipse>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1224
    new-instance v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Ellipse;-><init>()V

    .line 1225
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Ellipse;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->document:Lcom/caverock/androidsvg/SVG;

    .line 1226
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1227
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1228
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1229
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1230
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1231
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V

    .line 1232
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1233
    return-void

    .line 1223
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Ellipse;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 905
    const-string v0, "<g>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 909
    new-instance v0, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Group;-><init>()V

    .line 910
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Group;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->document:Lcom/caverock/androidsvg/SVG;

    .line 911
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 912
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 913
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 914
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 915
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 916
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 917
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 918
    return-void

    .line 908
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Group;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private image(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1006
    const-string v0, "<image>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1010
    new-instance v0, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Image;-><init>()V

    .line 1011
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Image;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Image;->document:Lcom/caverock/androidsvg/SVG;

    .line 1012
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Image;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1013
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1014
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1015
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1016
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1017
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V

    .line 1018
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1019
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1020
    return-void

    .line 1009
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Image;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private line(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1272
    const-string v0, "<line>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1276
    new-instance v0, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Line;-><init>()V

    .line 1277
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Line;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Line;->document:Lcom/caverock/androidsvg/SVG;

    .line 1278
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Line;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1279
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1280
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1281
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1282
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1283
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V

    .line 1284
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1285
    return-void

    .line 1275
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Line;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private linearGradient(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1666
    const-string v0, "<linearGradiant>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1668
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1670
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;-><init>()V

    .line 1671
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->document:Lcom/caverock/androidsvg/SVG;

    .line 1672
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1673
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1674
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1675
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 1676
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V

    .line 1677
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1678
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1679
    return-void

    .line 1669
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private marker(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1597
    const-string v0, "<marker>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1601
    new-instance v0, Lcom/caverock/androidsvg/SVG$Marker;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Marker;-><init>()V

    .line 1602
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Marker;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Marker;->document:Lcom/caverock/androidsvg/SVG;

    .line 1603
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Marker;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1604
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1605
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1606
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1607
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1608
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V

    .line 1609
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1610
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1611
    return-void

    .line 1600
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Marker;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mask(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2087
    const-string v0, "<mask>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2089
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2091
    new-instance v0, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Mask;-><init>()V

    .line 2092
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Mask;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Mask;->document:Lcom/caverock/androidsvg/SVG;

    .line 2093
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Mask;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2094
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2095
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2096
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2097
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V

    .line 2098
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2099
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2100
    return-void

    .line 2090
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Mask;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Circle;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1211
    .end local v0    # "i":I
    return-void

    .line 1193
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1194
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x32

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1200
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 1201
    goto :goto_1

    .line 1197
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1198
    goto :goto_1

    .line 1203
    :cond_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 1204
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1191
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1205
    .restart local v1    # "val":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <circle> element. r cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$ClipPath;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1912
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1930
    .end local v0    # "i":I
    return-void

    .line 1914
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1915
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1918
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1919
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    .line 1920
    goto :goto_1

    :cond_2
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1921
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    .line 1922
    nop

    .line 1912
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1923
    .restart local v1    # "val":Ljava/lang/String;
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute clipPathUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgConditional;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1540
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1566
    .end local v0    # "i":I
    return-void

    .line 1542
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1543
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_2

    .line 1558
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1559
    .local v2, "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1560
    .local v3, "fontSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {p1, v3}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFonts(Ljava/util/Set;)V

    .line 1561
    goto :goto_2

    .line 1555
    .end local v2    # "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "fontSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFormats(Ljava/util/Set;)V

    .line 1556
    goto :goto_2

    .line 1549
    :pswitch_2
    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredExtensions(Ljava/lang/String;)V

    .line 1550
    goto :goto_2

    .line 1546
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFeatures(Ljava/util/Set;)V

    .line 1547
    goto :goto_2

    .line 1552
    :cond_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setSystemLanguage(Ljava/util/Set;)V

    .line 1553
    nop

    .line 1540
    .end local v1    # "val":Ljava/lang/String;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2541
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .end local v0    # "i":I
    goto :goto_2

    .line 2543
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 2544
    .local v1, "qname":Ljava/lang/String;
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "xml:id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2549
    :cond_1
    const-string v2, "xml:space"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2550
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2551
    .local v2, "val":Ljava/lang/String;
    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2552
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    .line 2553
    goto :goto_2

    :cond_2
    const-string v3, "preserve"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2554
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    .line 2555
    goto :goto_2

    .line 2556
    :cond_3
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid value for \"xml:space\" attribute: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2541
    .end local v1    # "qname":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2546
    .restart local v1    # "qname":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    .line 2547
    nop

    .line 2561
    .end local v0    # "i":I
    .end local v1    # "qname":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method private parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Ellipse;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1263
    .end local v0    # "i":I
    return-void

    .line 1240
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1241
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1255
    .restart local v1    # "val":Ljava/lang/String;
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1256
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1257
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1250
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1251
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_2

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1252
    .restart local v1    # "val":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1247
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 1248
    goto :goto_1

    .line 1244
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1245
    nop

    .line 1238
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x39 -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$GradientElement;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1720
    .end local v0    # "i":I
    return-void

    .line 1686
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1687
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1690
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1691
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 1692
    goto :goto_1

    :cond_1
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1693
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 1694
    goto :goto_1

    .line 1695
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute gradientUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1699
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 1700
    goto :goto_1

    .line 1704
    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1705
    goto :goto_1

    .line 1706
    :catch_0
    move-exception v2

    .line 1708
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid spreadMethod attribute. \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" is not a valid value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1712
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1713
    goto :goto_1

    .line 1714
    :cond_5
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    .line 1715
    nop

    .line 1684
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Image;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1025
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1058
    .end local v0    # "i":I
    return-void

    .line 1027
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x31

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1034
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 1035
    goto :goto_1

    .line 1031
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 1032
    goto :goto_1

    .line 1037
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1038
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1039
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <use> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1047
    :pswitch_3
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1048
    goto :goto_1

    .line 1049
    :cond_2
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    .line 1050
    goto :goto_1

    .line 1042
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1043
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_3

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1044
    .restart local v1    # "val":Ljava/lang/String;
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <use> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1052
    :cond_4
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    .line 1053
    nop

    .line 1025
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1311
    .end local v0    # "i":I
    return-void

    .line 1292
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1293
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1305
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1306
    goto :goto_1

    .line 1302
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1303
    goto :goto_1

    .line 1299
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1300
    goto :goto_1

    .line 1296
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1297
    nop

    .line 1290
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1746
    .end local v0    # "i":I
    return-void

    .line 1727
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1728
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1740
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1741
    goto :goto_1

    .line 1737
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 1738
    goto :goto_1

    .line 1734
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1735
    goto :goto_1

    .line 1731
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 1732
    nop

    .line 1725
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Marker;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1616
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1657
    .end local v0    # "i":I
    return-void

    .line 1618
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1619
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .end local v1    # "val":Ljava/lang/String;
    goto/16 :goto_1

    .line 1625
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    .line 1626
    goto/16 :goto_1

    .line 1622
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    .line 1623
    goto :goto_1

    .line 1628
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1629
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1630
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1638
    :pswitch_3
    const-string v2, "strokeWidth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1639
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    .line 1640
    goto :goto_1

    :cond_2
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1641
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    .line 1642
    goto :goto_1

    .line 1643
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute markerUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1633
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    .line 1634
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_4

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1635
    .restart local v1    # "val":Ljava/lang/String;
    :cond_4
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1647
    :cond_5
    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1648
    const/high16 v2, 0x7fc00000    # NaNf

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    .line 1649
    goto :goto_1

    .line 1650
    :cond_6
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    .line 1652
    nop

    .line 1616
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Mask;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2148
    .end local v0    # "i":I
    return-void

    .line 2107
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2108
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .end local v1    # "val":Ljava/lang/String;
    goto/16 :goto_1

    .line 2132
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 2133
    goto/16 :goto_1

    .line 2129
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 2130
    goto/16 :goto_1

    .line 2135
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 2136
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 2137
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <mask> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2111
    :pswitch_3
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2112
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    .line 2113
    goto :goto_1

    :cond_2
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2114
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    .line 2115
    goto :goto_1

    .line 2116
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute maskUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2120
    :pswitch_4
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2121
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    .line 2122
    goto :goto_1

    :cond_4
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2123
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    .line 2124
    goto :goto_1

    .line 2125
    :cond_5
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute maskContentUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2140
    :cond_6
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 2141
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2105
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2142
    .restart local v1    # "val":Ljava/lang/String;
    :cond_7
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <mask> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Path;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1085
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1102
    .end local v0    # "i":I
    return-void

    .line 1087
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0xe

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1094
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    .line 1095
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1096
    .restart local v1    # "val":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1091
    :cond_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 1092
    nop

    .line 1085
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Pattern;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2006
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2057
    .end local v0    # "i":I
    return-void

    .line 2008
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2009
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    .end local v1    # "val":Ljava/lang/String;
    goto/16 :goto_1

    .line 2036
    .restart local v1    # "val":Ljava/lang/String;
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 2037
    goto/16 :goto_1

    .line 2033
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 2034
    goto/16 :goto_1

    .line 2039
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 2040
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto/16 :goto_1

    .line 2041
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2012
    :sswitch_3
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2013
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 2014
    goto/16 :goto_1

    :cond_2
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2015
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 2016
    goto :goto_1

    .line 2017
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute patternUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2030
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 2031
    goto :goto_1

    .line 2021
    :sswitch_5
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2022
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 2023
    goto :goto_1

    :cond_4
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2024
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 2025
    goto :goto_1

    .line 2026
    :cond_5
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid value for attribute patternContentUnits"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2049
    :sswitch_6
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2050
    goto :goto_1

    .line 2051
    :cond_6
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    .line 2052
    goto :goto_1

    .line 2044
    :sswitch_7
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 2045
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_7

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 2046
    .restart local v1    # "val":Ljava/lang/String;
    :cond_7
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2006
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_7
        0x1b -> :sswitch_6
        0x2d -> :sswitch_5
        0x2e -> :sswitch_4
        0x2f -> :sswitch_3
        0x52 -> :sswitch_2
        0x53 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1368
    .end local v0    # "i":I
    return-void

    .line 1343
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v1, v2, :cond_5

    .line 1345
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v1, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 1349
    :goto_1
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1361
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 1362
    const/4 v3, 0x0

    .line 1363
    .local v3, "j":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .end local v1    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .end local v2    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v3    # "j":I
    goto :goto_3

    .restart local v1    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .restart local v2    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v3    # "j":I
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 1364
    .local v5, "f":Ljava/lang/Float;
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v7, v3, 0x1

    .local v7, "j":I
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v6, v3

    .line 1363
    .end local v3    # "j":I
    .end local v5    # "f":Ljava/lang/Float;
    move v3, v7

    goto :goto_2

    .line 1350
    .end local v7    # "j":I
    :cond_2
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 1351
    .local v3, "x":Ljava/lang/Float;
    if-eqz v3, :cond_4

    .line 1353
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 1354
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    .line 1355
    .local v4, "y":Ljava/lang/Float;
    if-eqz v4, :cond_3

    .line 1357
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 1358
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v3    # "x":Ljava/lang/Float;
    .end local v4    # "y":Ljava/lang/Float;
    goto :goto_1

    .line 1356
    .restart local v3    # "x":Ljava/lang/Float;
    .restart local v4    # "y":Ljava/lang/Float;
    :cond_3
    new-instance v5, Lorg/xml/sax/SAXException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid <"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1352
    .end local v4    # "y":Ljava/lang/Float;
    :cond_4
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1341
    .end local v1    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .end local v2    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v3    # "x":Ljava/lang/Float;
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1773
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1799
    .end local v0    # "i":I
    return-void

    .line 1775
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1776
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1785
    .restart local v1    # "val":Ljava/lang/String;
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 1786
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1787
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1793
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    .line 1794
    goto :goto_1

    .line 1790
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1791
    goto :goto_1

    .line 1782
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 1783
    goto :goto_1

    .line 1779
    :sswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1780
    nop

    .line 1773
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Rect;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1164
    .end local v0    # "i":I
    return-void

    .line 1131
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1138
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 1139
    goto :goto_1

    .line 1135
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 1136
    goto :goto_1

    .line 1141
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1142
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1143
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <rect> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1156
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1157
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_2

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1158
    .restart local v1    # "val":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1151
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1152
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_3

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1153
    .restart local v1    # "val":Ljava/lang/String;
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1146
    :cond_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1147
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1129
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1148
    .restart local v1    # "val":Ljava/lang/String;
    :cond_5
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <rect> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 868
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 896
    .end local v0    # "i":I
    return-void

    .line 870
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x50

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 877
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 878
    goto :goto_1

    .line 874
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 875
    goto :goto_1

    .line 880
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 881
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 882
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <svg> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 890
    :cond_2
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    .line 891
    goto :goto_1

    .line 885
    :cond_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 886
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_4

    .line 868
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    .restart local v1    # "val":Ljava/lang/String;
    :cond_4
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <svg> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Stop;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1827
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1839
    .end local v0    # "i":I
    return-void

    .line 1829
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1830
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1833
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseGradiantOffset(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    .line 1834
    nop

    .line 1827
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2569
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2594
    .end local v0    # "i":I
    return-void

    .line 2571
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2572
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2573
    goto :goto_1

    .line 2577
    :cond_1
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x49

    if-eq v2, v3, :cond_3

    .line 2588
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v2, :cond_2

    .line 2589
    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 2590
    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 2580
    .restart local v1    # "val":Ljava/lang/String;
    :cond_3
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V

    .line 2581
    goto :goto_1

    .line 2584
    :cond_4
    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser;->parseClassAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    .line 2585
    nop

    .line 2569
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TRef;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1513
    .end local v0    # "i":I
    return-void

    .line 1501
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1502
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1505
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1506
    goto :goto_1

    .line 1507
    :cond_2
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    .line 1508
    nop

    .line 1499
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextPath;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1961
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1978
    .end local v0    # "i":I
    return-void

    .line 1963
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1964
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1972
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 1973
    goto :goto_1

    .line 1967
    :cond_2
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1968
    goto :goto_1

    .line 1969
    :cond_3
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    .line 1970
    nop

    .line 1961
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextPositionedContainer;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1439
    .end local v0    # "i":I
    return-void

    .line 1420
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 1427
    .restart local v1    # "val":Ljava/lang/String;
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    .line 1428
    goto :goto_1

    .line 1424
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    .line 1425
    goto :goto_1

    .line 1433
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    .line 1434
    goto :goto_1

    .line 1430
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    .line 1431
    nop

    .line 1418
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0x53 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$HasTransform;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2879
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2886
    .end local v0    # "i":I
    return-void

    .line 2881
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v1, v2, :cond_1

    .line 2883
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$HasTransform;->setTransform(Landroid/graphics/Matrix;)V

    .line 2879
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Use;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 967
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 997
    .end local v0    # "i":I
    return-void

    .line 969
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 976
    .restart local v1    # "val":Ljava/lang/String;
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 977
    goto :goto_1

    .line 973
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 974
    goto :goto_1

    .line 979
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 980
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 981
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <use> element. width cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 989
    :pswitch_3
    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 990
    goto :goto_1

    .line 991
    :cond_2
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    .line 992
    goto :goto_1

    .line 984
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 985
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_3

    .line 967
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    .restart local v1    # "val":Ljava/lang/String;
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid <use> element. height cannot be negative"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2859
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2874
    .end local v0    # "i":I
    return-void

    .line 2861
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2862
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x31

    if-eq v2, v3, :cond_2

    const/16 v3, 0x51

    if-eq v2, v3, :cond_1

    .end local v1    # "val":Ljava/lang/String;
    goto :goto_1

    .line 2865
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 2866
    goto :goto_1

    .line 2868
    :cond_2
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    .line 2869
    nop

    .line 2859
    .end local v1    # "val":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseCSSStyleSheet(Ljava/lang/String;)V
    .locals 3
    .param p1, "sheet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3973
    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;)V

    .line 3974
    .local v0, "cssp":Lcom/caverock/androidsvg/CSSParser;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 3975
    return-void
.end method

.method private static parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;
    .locals 8
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3536
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3537
    const/4 v0, 0x0

    return-object v0

    .line 3538
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rect("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3541
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3542
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3544
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    .line 3545
    .local v1, "top":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3546
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    .line 3547
    .local v2, "right":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3548
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    .line 3549
    .local v3, "bottom":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3550
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    .line 3552
    .local v4, "left":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3553
    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3556
    new-instance v5, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVG$CSSClipRect;-><init>(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    return-object v5

    .line 3554
    :cond_1
    new-instance v5, Lorg/xml/sax/SAXException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad rect() clip definition: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3539
    .end local v0    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .end local v1    # "top":Lcom/caverock/androidsvg/SVG$Length;
    .end local v2    # "right":Lcom/caverock/androidsvg/SVG$Length;
    .end local v3    # "bottom":Lcom/caverock/androidsvg/SVG$Length;
    .end local v4    # "left":Lcom/caverock/androidsvg/SVG$Length;
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid clip attribute shape. Only rect() is supported."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 7
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x23

    if-ne v0, v2, :cond_2

    .line 3212
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-ne v0, v2, :cond_0

    .line 3213
    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v0

    .line 3214
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3215
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 3216
    .local v0, "threehex":I
    and-int/lit16 v1, v0, 0xf00

    .line 3217
    .local v1, "h1":I
    and-int/lit16 v2, v0, 0xf0

    .line 3218
    .local v2, "h2":I
    and-int/lit8 v3, v0, 0xf

    .line 3219
    .local v3, "h3":I
    new-instance v4, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v5, v1, 0x10

    shl-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x4

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x4

    or-int/2addr v5, v6

    or-int/2addr v5, v3

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v4

    .line 3221
    .end local v0    # "threehex":I
    .end local v1    # "h1":I
    .end local v2    # "h2":I
    .end local v3    # "h3":I
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad hex colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3224
    :catch_0
    move-exception v0

    .line 3226
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad colour value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3229
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "rgb("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3231
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3232
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3234
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v1

    .line 3235
    .local v1, "red":I
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3236
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v2

    .line 3237
    .local v2, "green":I
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3238
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v3

    .line 3240
    .local v3, "blue":I
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3241
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3243
    new-instance v4, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v5, v1, 0x10

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v3

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v4

    .line 3242
    :cond_3
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad rgb() colour value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3247
    .end local v0    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .end local v1    # "red":I
    .end local v2    # "green":I
    .end local v3    # "blue":I
    :cond_4
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    return-object v0
.end method

.method private static parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I
    .locals 3
    .param p0, "scan"    # Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3254
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3255
    .local v0, "comp":I
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3257
    const/16 v1, 0x64

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    move v0, v2

    .line 3258
    mul-int/lit16 v2, v0, 0xff

    div-int/2addr v2, v1

    return v2

    .line 3260
    :cond_2
    const/16 v1, 0xff

    if-gez v0, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    if-le v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    move v0, v1

    .line 3261
    return v0
.end method

.method private static parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3269
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3270
    .local v0, "col":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 3273
    new-instance v1, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v1

    .line 3271
    :cond_0
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid colour keyword: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3193
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3194
    const/4 v0, 0x0

    return-object v0

    .line 3195
    :cond_0
    const-string v0, "currentColor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3196
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    return-object v0

    .line 3198
    :cond_1
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    return-object v0
.end method

.method private static parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3435
    const-string v0, "nonzero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3436
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    return-object v0

    .line 3437
    :cond_0
    const-string v0, "evenodd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3438
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    return-object v0

    .line 3439
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid fill-rule property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 4
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3084
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3088
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3090
    :catch_0
    move-exception v0

    .line 3092
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid float value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 3085
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid float value (empty string)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V
    .locals 11
    .param p0, "style"    # Lcom/caverock/androidsvg/SVG$Style;
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3281
    const/4 v0, 0x0

    .line 3282
    .local v0, "fontFamily":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3283
    .local v1, "fontSize":Lcom/caverock/androidsvg/SVG$Length;
    const/4 v2, 0x0

    .line 3284
    .local v2, "fontWeight":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 3285
    .local v3, "fontStyle":Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    const/4 v4, 0x0

    .line 3288
    .local v4, "fontVariant":Ljava/lang/String;
    const-string v5, "|caption|icon|menu|message-box|small-caption|status-bar|"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x7c

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 3289
    return-void

    .line 3292
    :cond_0
    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v5, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3293
    .local v5, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    const/4 v6, 0x0

    .line 3296
    .local v6, "item":Ljava/lang/String;
    :goto_0
    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v6

    .line 3297
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3298
    if-eqz v6, :cond_a

    .line 3300
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 3301
    goto :goto_1

    .line 3302
    :cond_1
    const-string v8, "normal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3303
    goto :goto_0

    .line 3304
    :cond_2
    if-nez v2, :cond_3

    .line 3305
    sget-object v8, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Ljava/lang/Integer;

    .line 3306
    if-eqz v2, :cond_3

    .line 3307
    goto :goto_0

    .line 3309
    :cond_3
    if-nez v3, :cond_4

    .line 3310
    sget-object v8, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 3311
    if-eqz v3, :cond_4

    .line 3312
    goto :goto_0

    .line 3315
    :cond_4
    if-nez v4, :cond_5

    const-string v8, "small-caps"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3316
    move-object v4, v6

    .line 3294
    goto :goto_0

    .line 3324
    :cond_5
    :goto_1
    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    .line 3327
    invoke-virtual {v5, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3329
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3330
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 3331
    if-eqz v6, :cond_6

    .line 3333
    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 3334
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_2

    .line 3332
    :cond_6
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "Invalid font style attribute: missing line-height"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3338
    :cond_7
    :goto_2
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->restOfText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3340
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 3341
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 3342
    if-nez v2, :cond_8

    const/16 v7, 0x190

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 3343
    if-nez v3, :cond_9

    sget-object v7, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    goto :goto_4

    :cond_9
    move-object v7, v3

    :goto_4
    iput-object v7, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 3344
    iget-wide v7, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v9, 0x1e000

    or-long/2addr v7, v9

    iput-wide v7, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3345
    return-void

    .line 3299
    :cond_a
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "Invalid font style attribute: missing font size and family"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static parseFontFamily(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3351
    const/4 v0, 0x0

    .line 3352
    .local v0, "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3355
    .local v1, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    :cond_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v2

    .line 3356
    .local v2, "item":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 3357
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    .line 3358
    :cond_1
    if-nez v2, :cond_2

    .line 3359
    goto :goto_0

    .line 3360
    :cond_2
    if-nez v0, :cond_3

    .line 3361
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 3362
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3363
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3364
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3367
    .end local v2    # "item":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private static parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3374
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    .line 3375
    .local v0, "size":Lcom/caverock/androidsvg/SVG$Length;
    if-nez v0, :cond_0

    .line 3376
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    .line 3378
    :cond_0
    return-object v0
.end method

.method private static parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    .locals 4
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3396
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 3397
    .local v0, "fs":Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    if-eqz v0, :cond_0

    .line 3400
    return-object v0

    .line 3398
    :cond_0
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid font-style property: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3385
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3386
    .local v0, "wt":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 3389
    return-object v0

    .line 3387
    :cond_0
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid font-weight property: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3920
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3921
    const/4 v0, 0x0

    return-object v0

    .line 3922
    :cond_0
    const-string v0, "url("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3925
    const/4 v0, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3923
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attribute. Expected \"none\" or \"url()\" format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseGradiantOffset(Ljava/lang/String;)Ljava/lang/Float;
    .locals 6
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1846
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1847
    .local v0, "end":I
    const/4 v1, 0x0

    .line 1849
    .local v1, "isPercent":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 1850
    add-int/lit8 v0, v0, -0x1

    .line 1851
    const/4 v1, 0x1

    .line 1855
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1856
    .local v2, "scalar":F
    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v1, :cond_1

    .line 1857
    div-float/2addr v2, v3

    .line 1858
    :cond_1
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-gez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1860
    .end local v2    # "scalar":F
    :catch_0
    move-exception v2

    .line 1862
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid offset value in <stop>: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1845
    .end local v0    # "end":I
    .end local v1    # "isPercent":Z
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid offset value in <stop> (empty string)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 8
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3021
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3023
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3024
    .local v0, "end":I
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    .line 3025
    .local v1, "unit":Lcom/caverock/androidsvg/SVG$Unit;
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3027
    .local v2, "lastChar":C
    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 3028
    add-int/lit8 v0, v0, -0x1

    .line 3029
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    .line 3030
    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3031
    add-int/lit8 v0, v0, -0x2

    .line 3032
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3034
    .local v3, "unitStr":Ljava/lang/String;
    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 3035
    goto :goto_0

    :catch_0
    move-exception v4

    .line 3036
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/xml/sax/SAXException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid length unit specifier: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3041
    .end local v3    # "unitStr":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 3042
    .local v3, "scalar":F
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v4, v3, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 3044
    .end local v3    # "scalar":F
    :catch_1
    move-exception v3

    .line 3046
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid length value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 3022
    .end local v0    # "end":I
    .end local v1    # "unit":Lcom/caverock/androidsvg/SVG$Unit;
    .end local v2    # "lastChar":C
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid length value (empty string)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseLengthList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3056
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3059
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3061
    .local v0, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$Length;>;"
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3062
    .local v1, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3064
    :goto_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3075
    return-object v0

    .line 3066
    :cond_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3067
    .local v2, "scalar":Ljava/lang/Float;
    if-eqz v2, :cond_2

    .line 3069
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v3

    .line 3070
    .local v3, "unit":Lcom/caverock/androidsvg/SVG$Unit;
    if-nez v3, :cond_1

    .line 3071
    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    .line 3072
    :cond_1
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v4, v5, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3073
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .end local v2    # "scalar":Ljava/lang/Float;
    .end local v3    # "unit":Lcom/caverock/androidsvg/SVG$Unit;
    goto :goto_0

    .line 3068
    .restart local v2    # "scalar":Ljava/lang/Float;
    :cond_2
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid length list value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->ahead()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3057
    .end local v0    # "coords":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$Length;>;"
    .end local v1    # "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    .end local v2    # "scalar":Ljava/lang/Float;
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid length list (empty string)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 2
    .param p0, "scan"    # Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 3562
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3563
    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    return-object v0

    .line 3565
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    return-object v0
.end method

.method private static parseOpacity(Ljava/lang/String;)F
    .locals 4
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3102
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 3103
    .local v0, "o":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method private static parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3525
    const-string v0, "visible"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3527
    :cond_0
    const-string v0, "hidden"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "scroll"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3529
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid toverflow property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3528
    :cond_2
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 3526
    :cond_3
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 4
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3172
    const-string v0, "url("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3174
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3175
    .local v0, "closeBracket":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3178
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3179
    .local v1, "href":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3181
    .local v2, "fallback":Lcom/caverock/androidsvg/SVG$SvgPaint;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3183
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v2

    .line 3184
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {v3, v1, v2}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    return-object v3

    .line 3176
    .end local v1    # "href":Ljava/lang/String;
    .end local v2    # "fallback":Lcom/caverock/androidsvg/SVG$SvgPaint;
    :cond_1
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attribute. Unterminated url() reference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3187
    .end local v0    # "closeBracket":I
    :cond_2
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    return-object v0
.end method

.method private static parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;
    .locals 30
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3586
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3588
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    const/16 v2, 0x3f

    .line 3589
    .local v2, "pathCommand":I
    const/4 v3, 0x0

    .local v3, "currentX":F
    const/4 v4, 0x0

    .line 3590
    .local v4, "currentY":F
    const/4 v5, 0x0

    .local v5, "lastMoveX":F
    const/4 v6, 0x0

    .line 3591
    .local v6, "lastMoveY":F
    const/4 v7, 0x0

    .local v7, "lastControlX":F
    const/4 v8, 0x0

    .line 3596
    .local v8, "lastControlY":F
    new-instance v9, Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>()V

    .line 3598
    .local v9, "path":Lcom/caverock/androidsvg/SVG$PathDefinition;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3599
    return-object v9

    .line 3601
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3603
    const/16 v10, 0x4d

    const/16 v15, 0x6d

    if-eq v2, v10, :cond_1

    if-eq v2, v15, :cond_1

    .line 3604
    return-object v9

    .line 3608
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3610
    const/16 v10, 0x6c

    const/high16 v11, 0x40000000    # 2.0f

    sparse-switch v2, :sswitch_data_0

    .line 3833
    move/from16 v29, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move/from16 v26, v8

    .end local v3    # "currentX":F
    .end local v5    # "lastMoveX":F
    .end local v6    # "lastMoveY":F
    .end local v7    # "lastControlX":F
    .end local v8    # "lastControlY":F
    .local v19, "lastMoveX":F
    .local v20, "lastMoveY":F
    .local v25, "lastControlX":F
    .local v26, "lastControlY":F
    .local v29, "currentX":F
    return-object v9

    .line 3718
    .end local v19    # "lastMoveX":F
    .end local v20    # "lastMoveY":F
    .end local v25    # "lastControlX":F
    .end local v26    # "lastControlY":F
    .end local v29    # "currentX":F
    .restart local v3    # "currentX":F
    .restart local v5    # "lastMoveX":F
    .restart local v6    # "lastMoveY":F
    .restart local v7    # "lastControlX":F
    .restart local v8    # "lastControlY":F
    :sswitch_0
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->close()V

    .line 3719
    move v7, v5

    move v3, v5

    .line 3720
    move v8, v6

    move v4, v6

    .line 3721
    goto/16 :goto_4

    .line 3741
    :sswitch_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v10

    .line 3742
    .local v10, "y":Ljava/lang/Float;
    if-nez v10, :cond_2

    .line 3743
    const-string v11, "SVGParser"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Bad path coords for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " path segment"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    return-object v9

    .line 3746
    :cond_2
    const/16 v11, 0x76

    if-ne v2, v11, :cond_3

    .line 3747
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 3749
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v9, v3, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3750
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move v8, v11

    move v4, v11

    .line 3751
    goto/16 :goto_4

    .line 3783
    .end local v10    # "y":Ljava/lang/Float;
    :sswitch_2
    mul-float v10, v11, v3

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 3784
    .local v10, "x1":Ljava/lang/Float;
    mul-float/2addr v11, v4

    sub-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 3785
    .local v11, "y1":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    .line 3786
    .local v12, "x":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3787
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v13

    .line 3788
    .local v13, "y":Ljava/lang/Float;
    if-nez v13, :cond_4

    .line 3789
    const-string v14, "SVGParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "Bad path coords for "

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path segment"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    return-object v9

    .line 3792
    :cond_4
    const/16 v1, 0x74

    if-ne v2, v1, :cond_5

    .line 3793
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 3794
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 3796
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move/from16 v19, v5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .end local v5    # "lastMoveX":F
    .restart local v19    # "lastMoveX":F
    invoke-virtual {v9, v1, v14, v15, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    .line 3797
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3798
    .end local v7    # "lastControlX":F
    .local v1, "lastControlX":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 3799
    .end local v8    # "lastControlY":F
    .local v5, "lastControlY":F
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3800
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 3801
    nop

    .line 3836
    move v7, v1

    move v8, v5

    move/from16 v5, v19

    goto/16 :goto_4

    .line 3689
    .end local v1    # "lastControlX":F
    .end local v10    # "x1":Ljava/lang/Float;
    .end local v11    # "y1":Ljava/lang/Float;
    .end local v12    # "x":Ljava/lang/Float;
    .end local v13    # "y":Ljava/lang/Float;
    .end local v19    # "lastMoveX":F
    .local v5, "lastMoveX":F
    .restart local v7    # "lastControlX":F
    .restart local v8    # "lastControlY":F
    :sswitch_3
    move/from16 v19, v5

    .end local v5    # "lastMoveX":F
    .restart local v19    # "lastMoveX":F
    mul-float v1, v11, v3

    sub-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 3690
    .local v1, "x1":Ljava/lang/Float;
    mul-float/2addr v11, v4

    sub-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3691
    .local v5, "y1":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v10

    .line 3692
    .local v10, "x2":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3693
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v11

    .line 3694
    .local v11, "y2":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3695
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    .line 3696
    .restart local v12    # "x":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3697
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v13

    .line 3698
    .restart local v13    # "y":Ljava/lang/Float;
    if-nez v13, :cond_6

    .line 3699
    const-string v14, "SVGParser"

    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v20, v6

    const-string v6, "Bad path coords for "

    .end local v6    # "lastMoveY":F
    .restart local v20    # "lastMoveY":F
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " path segment"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    return-object v9

    .line 3702
    .end local v20    # "lastMoveY":F
    .restart local v6    # "lastMoveY":F
    :cond_6
    move/from16 v20, v6

    .end local v6    # "lastMoveY":F
    .restart local v20    # "lastMoveY":F
    const/16 v6, 0x73

    if-ne v2, v6, :cond_7

    .line 3703
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 3704
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 3705
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 3706
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 3708
    .end local v10    # "x2":Ljava/lang/Float;
    .end local v11    # "y2":Ljava/lang/Float;
    .end local v12    # "x":Ljava/lang/Float;
    .local v6, "x2":Ljava/lang/Float;
    .local v14, "x":Ljava/lang/Float;
    .local v15, "y2":Ljava/lang/Float;
    :cond_7
    move-object v6, v10

    move-object v15, v11

    move-object v14, v12

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v21

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move-object v10, v9

    move-object/from16 v23, v1

    move-object v1, v13

    move/from16 v13, v16

    .end local v13    # "y":Ljava/lang/Float;
    .local v1, "y":Ljava/lang/Float;
    .local v23, "x1":Ljava/lang/Float;
    move-object/from16 v24, v5

    move-object v5, v14

    move/from16 v14, v17

    .end local v14    # "x":Ljava/lang/Float;
    .local v5, "x":Ljava/lang/Float;
    .local v24, "y1":Ljava/lang/Float;
    move/from16 v25, v7

    move/from16 v26, v8

    move-object v7, v15

    const/16 v8, 0x6d

    move/from16 v15, v21

    .end local v8    # "lastControlY":F
    .end local v15    # "y2":Ljava/lang/Float;
    .local v7, "y2":Ljava/lang/Float;
    .restart local v25    # "lastControlX":F
    .restart local v26    # "lastControlY":F
    move/from16 v16, v22

    invoke-virtual/range {v10 .. v16}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    .line 3709
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 3710
    .end local v25    # "lastControlX":F
    .local v10, "lastControlX":F
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 3711
    .end local v26    # "lastControlY":F
    .local v11, "lastControlY":F
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3712
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 3713
    goto/16 :goto_2

    .line 3756
    .end local v1    # "y":Ljava/lang/Float;
    .end local v10    # "lastControlX":F
    .end local v11    # "lastControlY":F
    .end local v19    # "lastMoveX":F
    .end local v20    # "lastMoveY":F
    .end local v23    # "x1":Ljava/lang/Float;
    .end local v24    # "y1":Ljava/lang/Float;
    .local v5, "lastMoveX":F
    .local v6, "lastMoveY":F
    .local v7, "lastControlX":F
    .restart local v8    # "lastControlY":F
    :sswitch_4
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move v8, v15

    .end local v5    # "lastMoveX":F
    .end local v6    # "lastMoveY":F
    .end local v7    # "lastControlX":F
    .end local v8    # "lastControlY":F
    .restart local v19    # "lastMoveX":F
    .restart local v20    # "lastMoveY":F
    .restart local v25    # "lastControlX":F
    .restart local v26    # "lastControlY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 3757
    .local v1, "x1":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3758
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 3759
    .local v5, "y1":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3760
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 3761
    .local v6, "x":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3762
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    .line 3763
    .local v7, "y":Ljava/lang/Float;
    if-nez v7, :cond_8

    .line 3764
    const-string v8, "SVGParser"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Bad path coords for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " path segment"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    return-object v9

    .line 3767
    :cond_8
    const/16 v10, 0x71

    if-ne v2, v10, :cond_9

    .line 3768
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 3769
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 3770
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 3771
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3773
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    .line 3774
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 3775
    .end local v25    # "lastControlX":F
    .restart local v10    # "lastControlX":F
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 3776
    .end local v26    # "lastControlY":F
    .restart local v11    # "lastControlY":F
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3777
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 3778
    goto/16 :goto_2

    .line 3615
    .end local v1    # "x1":Ljava/lang/Float;
    .end local v10    # "lastControlX":F
    .end local v11    # "lastControlY":F
    .end local v19    # "lastMoveX":F
    .end local v20    # "lastMoveY":F
    .local v5, "lastMoveX":F
    .local v6, "lastMoveY":F
    .local v7, "lastControlX":F
    .restart local v8    # "lastControlY":F
    :sswitch_5
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move v8, v15

    .end local v5    # "lastMoveX":F
    .end local v6    # "lastMoveY":F
    .end local v7    # "lastControlX":F
    .end local v8    # "lastControlY":F
    .restart local v19    # "lastMoveX":F
    .restart local v20    # "lastMoveY":F
    .restart local v25    # "lastControlX":F
    .restart local v26    # "lastControlY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 3616
    .local v1, "x":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3617
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 3618
    .local v5, "y":Ljava/lang/Float;
    if-nez v5, :cond_a

    .line 3619
    const-string v6, "SVGParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bad path coords for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " path segment"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    return-object v9

    .line 3623
    :cond_a
    if-ne v2, v8, :cond_b

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 3624
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 3625
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3627
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v9, v6, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->moveTo(FF)V

    .line 3628
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v7, v6

    .end local v25    # "lastControlX":F
    .restart local v7    # "lastControlX":F
    move v11, v6

    .end local v19    # "lastMoveX":F
    .local v11, "lastMoveX":F
    move v3, v6

    .line 3629
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v12, v6

    .end local v26    # "lastControlY":F
    .local v12, "lastControlY":F
    move v13, v6

    .end local v20    # "lastMoveY":F
    .local v13, "lastMoveY":F
    move v4, v6

    .line 3631
    if-ne v2, v8, :cond_c

    goto :goto_1

    :cond_c
    const/16 v10, 0x4c

    :goto_1
    move v2, v10

    .line 3632
    nop

    .line 3836
    move v5, v11

    move v8, v12

    move v6, v13

    goto/16 :goto_4

    .line 3637
    .end local v1    # "x":Ljava/lang/Float;
    .end local v11    # "lastMoveX":F
    .end local v12    # "lastControlY":F
    .end local v13    # "lastMoveY":F
    .local v5, "lastMoveX":F
    .restart local v6    # "lastMoveY":F
    .restart local v8    # "lastControlY":F
    :sswitch_6
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move v8, v15

    .end local v5    # "lastMoveX":F
    .end local v6    # "lastMoveY":F
    .end local v7    # "lastControlX":F
    .end local v8    # "lastControlY":F
    .restart local v19    # "lastMoveX":F
    .restart local v20    # "lastMoveY":F
    .restart local v25    # "lastControlX":F
    .restart local v26    # "lastControlY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 3638
    .restart local v1    # "x":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3639
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 3640
    .local v5, "y":Ljava/lang/Float;
    if-nez v5, :cond_d

    .line 3641
    const-string v6, "SVGParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bad path coords for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " path segment"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    return-object v9

    .line 3644
    :cond_d
    if-ne v2, v10, :cond_e

    .line 3645
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 3646
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3648
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v9, v6, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3649
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v7, v6

    .end local v25    # "lastControlX":F
    .restart local v7    # "lastControlX":F
    move v3, v6

    .line 3650
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v10, v6

    .end local v26    # "lastControlY":F
    .local v10, "lastControlY":F
    move v4, v6

    .line 3651
    nop

    .line 3836
    move v8, v10

    goto/16 :goto_3

    .line 3726
    .end local v1    # "x":Ljava/lang/Float;
    .end local v10    # "lastControlY":F
    .end local v19    # "lastMoveX":F
    .end local v20    # "lastMoveY":F
    .local v5, "lastMoveX":F
    .restart local v6    # "lastMoveY":F
    .restart local v8    # "lastControlY":F
    :sswitch_7
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move v8, v15

    .end local v5    # "lastMoveX":F
    .end local v6    # "lastMoveY":F
    .end local v7    # "lastControlX":F
    .end local v8    # "lastControlY":F
    .restart local v19    # "lastMoveX":F
    .restart local v20    # "lastMoveY":F
    .restart local v25    # "lastControlX":F
    .restart local v26    # "lastControlY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 3727
    .restart local v1    # "x":Ljava/lang/Float;
    if-nez v1, :cond_f

    .line 3728
    const-string v5, "SVGParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad path coords for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " path segment"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    return-object v9

    .line 3731
    :cond_f
    const/16 v5, 0x68

    if-ne v2, v5, :cond_10

    .line 3732
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 3734
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v9, v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3735
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move v6, v5

    .end local v25    # "lastControlX":F
    .local v6, "lastControlX":F
    move v3, v5

    .line 3736
    nop

    .line 3836
    move v7, v6

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v8, v26

    goto/16 :goto_4

    .line 3656
    .end local v1    # "x":Ljava/lang/Float;
    .end local v19    # "lastMoveX":F
    .end local v20    # "lastMoveY":F
    .end local v26    # "lastControlY":F
    .restart local v5    # "lastMoveX":F
    .local v6, "lastMoveY":F
    .restart local v7    # "lastControlX":F
    .restart local v8    # "lastControlY":F
    :sswitch_8
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move v8, v15

    .end local v5    # "lastMoveX":F
    .end local v6    # "lastMoveY":F
    .end local v7    # "lastControlX":F
    .end local v8    # "lastControlY":F
    .restart local v19    # "lastMoveX":F
    .restart local v20    # "lastMoveY":F
    .restart local v25    # "lastControlX":F
    .restart local v26    # "lastControlY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 3657
    .local v1, "x1":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3658
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 3659
    .local v5, "y1":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3660
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 3661
    .local v6, "x2":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3662
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    .line 3663
    .local v7, "y2":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3664
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v10

    .line 3665
    .local v10, "x":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3666
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v11

    .line 3667
    .local v11, "y":Ljava/lang/Float;
    if-nez v11, :cond_11

    .line 3668
    const-string v8, "SVGParser"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Bad path coords for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " path segment"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    return-object v9

    .line 3671
    :cond_11
    const/16 v12, 0x63

    if-ne v2, v12, :cond_12

    .line 3672
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 3673
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 3674
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 3675
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3676
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 3677
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 3679
    .end local v10    # "x":Ljava/lang/Float;
    .end local v11    # "y":Ljava/lang/Float;
    .local v14, "y":Ljava/lang/Float;
    .local v15, "x":Ljava/lang/Float;
    :cond_12
    move-object v15, v10

    move-object v14, v11

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object v10, v9

    move-object v8, v14

    move/from16 v14, v16

    .end local v14    # "y":Ljava/lang/Float;
    .local v8, "y":Ljava/lang/Float;
    move-object/from16 v27, v1

    move-object v1, v15

    move/from16 v15, v17

    .end local v15    # "x":Ljava/lang/Float;
    .local v1, "x":Ljava/lang/Float;
    .local v27, "x1":Ljava/lang/Float;
    move/from16 v16, v18

    invoke-virtual/range {v10 .. v16}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    .line 3680
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 3681
    .end local v25    # "lastControlX":F
    .local v10, "lastControlX":F
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 3682
    .end local v26    # "lastControlY":F
    .local v11, "lastControlY":F
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3683
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 3684
    nop

    .line 3836
    .end local v1    # "x":Ljava/lang/Float;
    .end local v10    # "lastControlX":F
    .end local v11    # "lastControlY":F
    .end local v19    # "lastMoveX":F
    .end local v20    # "lastMoveY":F
    .end local v27    # "x1":Ljava/lang/Float;
    .local v5, "lastMoveX":F
    .local v6, "lastMoveY":F
    .local v7, "lastControlX":F
    .local v8, "lastControlY":F
    :goto_2
    move v7, v10

    move v8, v11

    :goto_3
    move/from16 v5, v19

    move/from16 v6, v20

    goto/16 :goto_4

    .line 3806
    :sswitch_9
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move/from16 v26, v8

    .end local v5    # "lastMoveX":F
    .end local v6    # "lastMoveY":F
    .end local v7    # "lastControlX":F
    .end local v8    # "lastControlY":F
    .restart local v19    # "lastMoveX":F
    .restart local v20    # "lastMoveY":F
    .restart local v25    # "lastControlX":F
    .restart local v26    # "lastControlY":F
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 3807
    .local v1, "rx":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3808
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 3809
    .local v5, "ry":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3810
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 3811
    .local v6, "xAxisRotation":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3812
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v7

    .line 3813
    .local v7, "largeArcFlag":Ljava/lang/Boolean;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3814
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v8

    .line 3815
    .local v8, "sweepFlag":Ljava/lang/Boolean;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3816
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v10

    .line 3817
    .local v10, "x":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3818
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v11

    .line 3819
    .local v11, "y":Ljava/lang/Float;
    if-eqz v11, :cond_17

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_17

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpg-float v12, v12, v13

    if-gez v12, :cond_13

    .line 3820
    move-object/from16 v28, v1

    move/from16 v29, v3

    goto/16 :goto_5

    .line 3823
    :cond_13
    const/16 v12, 0x61

    if-ne v2, v12, :cond_14

    .line 3824
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 3825
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 3827
    .end local v10    # "x":Ljava/lang/Float;
    .end local v11    # "y":Ljava/lang/Float;
    .restart local v14    # "y":Ljava/lang/Float;
    .restart local v15    # "x":Ljava/lang/Float;
    :cond_14
    move-object v15, v10

    move-object v14, v11

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move-object v10, v9

    move-object/from16 v28, v1

    move-object v1, v14

    move/from16 v14, v16

    .end local v14    # "y":Ljava/lang/Float;
    .local v1, "y":Ljava/lang/Float;
    .local v28, "rx":Ljava/lang/Float;
    move/from16 v29, v3

    move-object v3, v15

    move/from16 v15, v17

    .end local v15    # "x":Ljava/lang/Float;
    .local v3, "x":Ljava/lang/Float;
    .restart local v29    # "currentX":F
    move/from16 v16, v18

    move/from16 v17, v21

    invoke-virtual/range {v10 .. v17}, Lcom/caverock/androidsvg/SVG$PathDefinition;->arcTo(FFFZZFF)V

    .line 3828
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move v11, v10

    .line 3829
    .end local v25    # "lastControlX":F
    .end local v29    # "currentX":F
    .local v10, "currentX":F
    .local v11, "lastControlX":F
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move v13, v12

    .end local v26    # "lastControlY":F
    .local v13, "lastControlY":F
    move v4, v12

    .line 3830
    nop

    .line 3836
    move v3, v10

    move v7, v11

    move v8, v13

    goto/16 :goto_3

    .end local v1    # "y":Ljava/lang/Float;
    .end local v10    # "currentX":F
    .end local v11    # "lastControlX":F
    .end local v13    # "lastControlY":F
    .end local v19    # "lastMoveX":F
    .end local v20    # "lastMoveY":F
    .end local v28    # "rx":Ljava/lang/Float;
    .local v3, "currentX":F
    .local v5, "lastMoveX":F
    .local v6, "lastMoveY":F
    .local v7, "lastControlX":F
    .local v8, "lastControlY":F
    :goto_4
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3837
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3838
    nop

    .line 3846
    return-object v9

    .line 3841
    :cond_15
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->hasLetter()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3843
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3606
    nop

    .line 3608
    :cond_16
    move-object/from16 v1, p0

    const/16 v15, 0x6d

    goto/16 :goto_0

    .line 3820
    .local v1, "rx":Ljava/lang/Float;
    .local v5, "ry":Ljava/lang/Float;
    .local v6, "xAxisRotation":Ljava/lang/Float;
    .local v7, "largeArcFlag":Ljava/lang/Boolean;
    .local v8, "sweepFlag":Ljava/lang/Boolean;
    .local v10, "x":Ljava/lang/Float;
    .local v11, "y":Ljava/lang/Float;
    .restart local v19    # "lastMoveX":F
    .restart local v20    # "lastMoveY":F
    .restart local v25    # "lastControlX":F
    .restart local v26    # "lastControlY":F
    :cond_17
    move-object/from16 v28, v1

    move/from16 v29, v3

    .end local v1    # "rx":Ljava/lang/Float;
    .end local v3    # "currentX":F
    .restart local v28    # "rx":Ljava/lang/Float;
    .restart local v29    # "currentX":F
    :goto_5
    const-string v1, "SVGParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "Bad path coords for "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " path segment"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    return-object v9

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .locals 8
    .param p0, "obj"    # Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3139
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3140
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3142
    const/4 v1, 0x0

    .line 3143
    .local v1, "align":Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
    const/4 v2, 0x0

    .line 3145
    .local v2, "scale":Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 3146
    .local v3, "word":Ljava/lang/String;
    const-string v4, "defer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3147
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3148
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 3150
    :cond_0
    sget-object v4, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 3151
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3153
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3154
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 3155
    .local v4, "meetOrSlice":Ljava/lang/String;
    const-string v5, "meet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3156
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 3157
    goto :goto_0

    :cond_1
    const-string v5, "slice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3158
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 3159
    goto :goto_0

    .line 3160
    :cond_2
    new-instance v5, Lorg/xml/sax/SAXException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid preserveAspectRatio definition: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3163
    .end local v4    # "meetOrSlice":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v4, Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {v4, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    iput-object v4, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 3164
    return-void
.end method

.method private static parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3858
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3859
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3861
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3874
    return-object v1

    .line 3863
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 3864
    .local v2, "feature":Ljava/lang/String;
    const-string v3, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3865
    const-string v3, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3866
    goto :goto_1

    .line 3870
    :cond_1
    const-string v3, "UNSUPPORTED"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3872
    :goto_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .end local v2    # "feature":Ljava/lang/String;
    goto :goto_0
.end method

.method private static parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3905
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3906
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3908
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3914
    return-object v1

    .line 3910
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 3911
    .local v2, "mimetype":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3912
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .end local v2    # "mimetype":Ljava/lang/String;
    goto :goto_0
.end method

.method private static parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;
    .locals 7
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3472
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3473
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3475
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3476
    return-object v2

    .line 3478
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    .line 3479
    .local v1, "dash":Lcom/caverock/androidsvg/SVG$Length;
    if-nez v1, :cond_1

    .line 3480
    return-object v2

    .line 3481
    :cond_1
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3484
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v3

    .line 3486
    .local v3, "sum":F
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3487
    .local v4, "dashes":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$Length;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3488
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3502
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_2

    .line 3503
    return-object v2

    .line 3505
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/caverock/androidsvg/SVG$Length;

    return-object v2

    .line 3490
    :cond_3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3491
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    .line 3492
    if-eqz v1, :cond_5

    .line 3494
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3496
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3497
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    goto :goto_0

    .line 3495
    :cond_4
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3493
    :cond_5
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid stroke-dasharray. Non-Length content found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3482
    .end local v3    # "sum":F
    .end local v4    # "dashes":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$Length;>;"
    :cond_6
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCaps;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3446
    const-string v0, "butt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3447
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    return-object v0

    .line 3448
    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3449
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    return-object v0

    .line 3450
    :cond_1
    const-string v0, "square"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3451
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    return-object v0

    .line 3452
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid stroke-linecap property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3459
    const-string v0, "miter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3460
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object v0

    .line 3461
    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3462
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object v0

    .line 3463
    :cond_1
    const-string v0, "bevel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3464
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object v0

    .line 3465
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid stroke-linejoin property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V
    .locals 5
    .param p0, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .param p1, "style"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2602
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const-string v1, "/\\*.*?\\*/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 2606
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    :cond_0
    :goto_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    .line 2607
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2608
    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2609
    goto :goto_1

    .line 2610
    :cond_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2611
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v3

    .line 2612
    .local v3, "propertyValue":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 2613
    nop

    .line 2623
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    :goto_1
    return-void

    .line 2614
    .restart local v2    # "propertyName":Ljava/lang/String;
    .restart local v3    # "propertyValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2615
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2617
    :cond_3
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v1, :cond_4

    .line 2618
    new-instance v1, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 2619
    :cond_4
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2604
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    goto :goto_0
.end method

.method private static parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3882
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3883
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3885
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3897
    return-object v1

    .line 3887
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 3888
    .local v2, "language":Ljava/lang/String;
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 3889
    .local v3, "hyphenPos":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 3890
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3893
    :cond_1
    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v4, v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 3894
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3895
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "hyphenPos":I
    goto :goto_0
.end method

.method private static parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3512
    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3513
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0

    .line 3514
    :cond_0
    const-string v0, "middle"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3515
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0

    .line 3516
    :cond_1
    const-string v0, "end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3517
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0

    .line 3518
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid text-anchor property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3407
    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3408
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3409
    :cond_0
    const-string v0, "underline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3410
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3411
    :cond_1
    const-string v0, "overline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3412
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3413
    :cond_2
    const-string v0, "line-through"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3414
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3415
    :cond_3
    const-string v0, "blink"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3416
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3417
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid text-decoration property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3424
    const-string v0, "ltr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3425
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-object v0

    .line 3426
    :cond_0
    const-string v0, "rtl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3427
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-object v0

    .line 3428
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid direction property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 14
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2891
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2893
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 2894
    .local v1, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2896
    :goto_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 2898
    :cond_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFunction()Ljava/lang/String;

    move-result-object v2

    .line 2900
    .local v2, "cmd":Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 2903
    const-string v3, "matrix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x29

    if-eqz v3, :cond_2

    .line 2905
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2906
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2907
    .local v3, "a":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2908
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 2909
    .local v6, "b":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2910
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    .line 2911
    .local v7, "c":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2912
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v8

    .line 2913
    .local v8, "d":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2914
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v9

    .line 2915
    .local v9, "e":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2916
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v10

    .line 2917
    .local v10, "f":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2919
    if-eqz v10, :cond_1

    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2922
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2923
    .local v5, "m":Landroid/graphics/Matrix;
    const/16 v11, 0x9

    new-array v11, v11, [F

    const/4 v12, 0x0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v11, v12

    const/4 v12, 0x3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v11, v12

    const/4 v12, 0x4

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v11, v12

    const/4 v12, 0x5

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v11, v12

    const/4 v12, 0x6

    aput v4, v11, v12

    const/4 v12, 0x7

    aput v4, v11, v12

    const/16 v4, 0x8

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v4

    invoke-virtual {v5, v11}, Landroid/graphics/Matrix;->setValues([F)V

    .line 2924
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 2925
    .end local v3    # "a":Ljava/lang/Float;
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v6    # "b":Ljava/lang/Float;
    .end local v7    # "c":Ljava/lang/Float;
    .end local v8    # "d":Ljava/lang/Float;
    .end local v9    # "e":Ljava/lang/Float;
    .end local v10    # "f":Ljava/lang/Float;
    goto/16 :goto_1

    .line 2920
    .restart local v3    # "a":Ljava/lang/Float;
    .restart local v6    # "b":Ljava/lang/Float;
    .restart local v7    # "c":Ljava/lang/Float;
    .restart local v8    # "d":Ljava/lang/Float;
    .restart local v9    # "e":Ljava/lang/Float;
    .restart local v10    # "f":Ljava/lang/Float;
    :cond_1
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "Invalid transform list: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2926
    .end local v3    # "a":Ljava/lang/Float;
    .end local v6    # "b":Ljava/lang/Float;
    .end local v7    # "c":Ljava/lang/Float;
    .end local v8    # "d":Ljava/lang/Float;
    .end local v9    # "e":Ljava/lang/Float;
    .end local v10    # "f":Ljava/lang/Float;
    :cond_2
    const-string v3, "translate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2928
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2929
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2930
    .local v3, "tx":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 2931
    .local v6, "ty":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2933
    if-eqz v3, :cond_4

    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2936
    if-nez v6, :cond_3

    .line 2937
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_1

    .line 2939
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2940
    .end local v3    # "tx":Ljava/lang/Float;
    .end local v6    # "ty":Ljava/lang/Float;
    goto/16 :goto_1

    .line 2934
    .restart local v3    # "tx":Ljava/lang/Float;
    .restart local v6    # "ty":Ljava/lang/Float;
    :cond_4
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Invalid transform list: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2941
    .end local v3    # "tx":Ljava/lang/Float;
    .end local v6    # "ty":Ljava/lang/Float;
    :cond_5
    const-string v3, "scale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2943
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2944
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2945
    .local v3, "sx":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v4

    .line 2946
    .local v4, "sy":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2948
    if-eqz v3, :cond_7

    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2951
    if-nez v4, :cond_6

    .line 2952
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    .line 2954
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2955
    .end local v3    # "sx":Ljava/lang/Float;
    .end local v4    # "sy":Ljava/lang/Float;
    goto/16 :goto_1

    .line 2949
    .restart local v3    # "sx":Ljava/lang/Float;
    .restart local v4    # "sy":Ljava/lang/Float;
    :cond_7
    new-instance v5, Lorg/xml/sax/SAXException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid transform list: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2956
    .end local v3    # "sx":Ljava/lang/Float;
    .end local v4    # "sy":Ljava/lang/Float;
    :cond_8
    const-string v3, "rotate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2958
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2959
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2960
    .local v3, "ang":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v4

    .line 2961
    .local v4, "cx":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 2962
    .local v6, "cy":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2964
    if-eqz v3, :cond_b

    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2967
    if-nez v4, :cond_9

    .line 2968
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2969
    goto/16 :goto_1

    :cond_9
    if-eqz v6, :cond_a

    .line 2970
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v0, v5, v7, v8}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 2971
    goto/16 :goto_1

    .line 2972
    :cond_a
    new-instance v5, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid transform list: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2965
    :cond_b
    new-instance v5, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid transform list: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2975
    .end local v3    # "ang":Ljava/lang/Float;
    .end local v4    # "cx":Ljava/lang/Float;
    .end local v6    # "cy":Ljava/lang/Float;
    :cond_c
    const-string v3, "skewX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2977
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2978
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2979
    .restart local v3    # "ang":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2981
    if-eqz v3, :cond_d

    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2984
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 2985
    .end local v3    # "ang":Ljava/lang/Float;
    goto :goto_1

    .line 2982
    .restart local v3    # "ang":Ljava/lang/Float;
    :cond_d
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid transform list: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2986
    .end local v3    # "ang":Ljava/lang/Float;
    :cond_e
    const-string v3, "skewY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2988
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2989
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2990
    .restart local v3    # "ang":Ljava/lang/Float;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2992
    if-eqz v3, :cond_f

    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2995
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 2996
    .end local v3    # "ang":Ljava/lang/Float;
    goto :goto_1

    .line 2993
    .restart local v3    # "ang":Ljava/lang/Float;
    :cond_f
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid transform list: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2997
    .end local v3    # "ang":Ljava/lang/Float;
    :cond_10
    if-nez v2, :cond_12

    .line 3001
    :goto_1
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3002
    nop

    .line 3006
    .end local v2    # "cmd":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 3003
    .restart local v2    # "cmd":Ljava/lang/String;
    :cond_11
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .end local v2    # "cmd":Ljava/lang/String;
    goto/16 :goto_0

    .line 2998
    .restart local v2    # "cmd":Ljava/lang/String;
    :cond_12
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid transform list fn: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2901
    :cond_13
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad transform function encountered in transform list: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3572
    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3573
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object v0

    .line 3574
    :cond_0
    const-string v0, "non-scaling-stroke"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3575
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object v0

    .line 3576
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid vector-effect property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 10
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3112
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3113
    .local v0, "scan":Lcom/caverock/androidsvg/SVGParser$TextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3115
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 3116
    .local v1, "minX":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3117
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3118
    .local v2, "minY":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3119
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3120
    .local v3, "width":Ljava/lang/Float;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3121
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    .line 3123
    .local v4, "height":Ljava/lang/Float;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 3125
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 3127
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 3130
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v5

    .line 3128
    :cond_0
    new-instance v5, Lorg/xml/sax/SAXException;

    const-string v6, "Invalid viewBox. height cannot be negative"

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3126
    :cond_1
    new-instance v5, Lorg/xml/sax/SAXException;

    const-string v6, "Invalid viewBox. width cannot be negative"

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3124
    :cond_2
    new-instance v5, Lorg/xml/sax/SAXException;

    const-string v6, "Invalid viewBox definition - should have four numbers"

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private path(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1067
    const-string v0, "<path>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Path;-><init>()V

    .line 1072
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Path;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Path;->document:Lcom/caverock/androidsvg/SVG;

    .line 1073
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Path;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1074
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1075
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1076
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1077
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1078
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V

    .line 1079
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1080
    return-void

    .line 1070
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Path;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pattern(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1987
    const-string v0, "<pattern>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1989
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1991
    new-instance v0, Lcom/caverock/androidsvg/SVG$Pattern;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Pattern;-><init>()V

    .line 1992
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Pattern;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    .line 1993
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1994
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1995
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1996
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1997
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1998
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V

    .line 1999
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2000
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2001
    return-void

    .line 1990
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Pattern;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private polygon(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1377
    const-string v0, "<polygon>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1379
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1381
    new-instance v0, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Polygon;-><init>()V

    .line 1382
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Polygon;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Polygon;->document:Lcom/caverock/androidsvg/SVG;

    .line 1383
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Polygon;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1384
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1385
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1386
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1387
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1388
    const-string v1, "polygon"

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1389
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1390
    return-void

    .line 1380
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Polygon;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private polyline(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1320
    const-string v0, "<polyline>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1322
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1324
    new-instance v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$PolyLine;-><init>()V

    .line 1325
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$PolyLine;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->document:Lcom/caverock/androidsvg/SVG;

    .line 1326
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1327
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1328
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1329
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1330
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1331
    const-string v1, "polyline"

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1332
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1333
    return-void

    .line 1323
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$PolyLine;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "style"    # Lcom/caverock/androidsvg/SVG$Style;
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2628
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2629
    return-void

    .line 2631
    :cond_0
    const-string v0, "inherit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2632
    return-void

    .line 2634
    :cond_1
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v0

    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, -0x1

    const/16 v2, 0x7c

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 2847
    :sswitch_0
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 2848
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x800000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2849
    goto/16 :goto_4

    .line 2744
    :sswitch_1
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 2745
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x80000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2746
    goto/16 :goto_4

    .line 2695
    :sswitch_2
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 2696
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2697
    goto/16 :goto_4

    .line 2814
    :sswitch_3
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 2815
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2816
    goto/16 :goto_4

    .line 2734
    :sswitch_4
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 2735
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x1000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2736
    goto/16 :goto_4

    .line 2778
    :pswitch_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, "|visible|hidden|collapse|"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 2780
    const-string v0, "visible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 2781
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2782
    goto/16 :goto_4

    .line 2779
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for \"visibility\" attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2842
    :pswitch_1
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 2843
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x400000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2844
    goto/16 :goto_4

    .line 2833
    :pswitch_2
    const-string v0, "currentColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2834
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2835
    goto :goto_0

    .line 2836
    :cond_3
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2838
    :goto_0
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2839
    goto/16 :goto_4

    .line 2729
    :pswitch_3
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2730
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2731
    goto/16 :goto_4

    .line 2739
    :pswitch_4
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2740
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2741
    goto/16 :goto_4

    .line 2662
    :pswitch_5
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 2663
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2664
    goto/16 :goto_4

    .line 2657
    :pswitch_6
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 2658
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2659
    goto/16 :goto_4

    .line 2677
    :pswitch_7
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2678
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2679
    goto/16 :goto_4

    .line 2672
    :pswitch_8
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2673
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2674
    goto/16 :goto_4

    .line 2667
    :pswitch_9
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    .line 2668
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2669
    goto/16 :goto_4

    .line 2690
    :pswitch_a
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 2691
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2692
    goto/16 :goto_4

    .line 2682
    :pswitch_b
    const-string v0, "none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 2685
    :cond_4
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 2686
    :goto_1
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2687
    goto/16 :goto_4

    .line 2652
    :pswitch_c
    const-string v0, "stroke"

    invoke-static {p2, v0}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2653
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2654
    goto/16 :goto_4

    .line 2794
    :pswitch_d
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 2795
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x8000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2796
    goto/16 :goto_4

    .line 2785
    :pswitch_e
    const-string v0, "currentColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2786
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2787
    goto :goto_2

    .line 2788
    :cond_5
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2790
    :goto_2
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x4000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2791
    goto/16 :goto_4

    .line 2828
    :pswitch_f
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 2829
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2830
    goto/16 :goto_4

    .line 2819
    :pswitch_10
    const-string v0, "currentColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2820
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2821
    goto :goto_3

    .line 2822
    :cond_6
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2824
    :goto_3
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2825
    goto/16 :goto_4

    .line 2766
    :pswitch_11
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2767
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x800000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2768
    goto/16 :goto_4

    .line 2761
    :pswitch_12
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2762
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2763
    goto/16 :goto_4

    .line 2756
    :pswitch_13
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2757
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2758
    goto/16 :goto_4

    .line 2749
    :pswitch_14
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2750
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2751
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2752
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0xe00000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2753
    goto/16 :goto_4

    .line 2724
    :pswitch_15
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2725
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x10000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2726
    goto/16 :goto_4

    .line 2719
    :pswitch_16
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 2720
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2721
    goto/16 :goto_4

    .line 2714
    :pswitch_17
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 2715
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2716
    goto/16 :goto_4

    .line 2709
    :pswitch_18
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 2710
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2711
    goto/16 :goto_4

    .line 2705
    :pswitch_19
    invoke-static {p0, p2}, Lcom/caverock/androidsvg/SVGParser;->parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V

    .line 2706
    goto/16 :goto_4

    .line 2647
    :pswitch_1a
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 2648
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2649
    goto/16 :goto_4

    .line 2642
    :pswitch_1b
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2643
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2644
    goto/16 :goto_4

    .line 2637
    :pswitch_1c
    const-string v0, "fill"

    invoke-static {p2, v0}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2638
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2639
    goto/16 :goto_4

    .line 2771
    :pswitch_1d
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_7

    const-string v0, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 2773
    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 2774
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x1000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2775
    goto :goto_4

    .line 2772
    :cond_7
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for \"display\" attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2700
    :pswitch_1e
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 2701
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2702
    goto :goto_4

    .line 2809
    :pswitch_1f
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2810
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2811
    goto :goto_4

    .line 2804
    :pswitch_20
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 2805
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2806
    goto :goto_4

    .line 2799
    :pswitch_21
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 2800
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 2801
    nop

    .line 2854
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1d
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3b
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x4b
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x59
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0x24 -> :sswitch_3
        0x29 -> :sswitch_2
        0x2b -> :sswitch_1
        0x4f -> :sswitch_0
    .end sparse-switch
.end method

.method private radialGradient(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1755
    const-string v0, "<radialGradient>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1759
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;-><init>()V

    .line 1760
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$SvgRadialGradient;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->document:Lcom/caverock/androidsvg/SVG;

    .line 1761
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1762
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1763
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1764
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 1765
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V

    .line 1766
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1767
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1768
    return-void

    .line 1758
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$SvgRadialGradient;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rect(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1111
    const-string v0, "<rect>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1115
    new-instance v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Rect;-><init>()V

    .line 1116
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Rect;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->document:Lcom/caverock/androidsvg/SVG;

    .line 1117
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1118
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1119
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1120
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1121
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1122
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V

    .line 1123
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1124
    return-void

    .line 1114
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Rect;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private solidColor(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1873
    const-string v0, "<solidColor>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1875
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1877
    new-instance v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SolidColor;-><init>()V

    .line 1878
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$SolidColor;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;->document:Lcom/caverock/androidsvg/SVG;

    .line 1879
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1880
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1881
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1882
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1883
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1884
    return-void

    .line 1876
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$SolidColor;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stop(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1808
    const-string v0, "<stop>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1810
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1

    .line 1812
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-eqz v0, :cond_0

    .line 1814
    new-instance v0, Lcom/caverock/androidsvg/SVG$Stop;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Stop;-><init>()V

    .line 1815
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Stop;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Stop;->document:Lcom/caverock/androidsvg/SVG;

    .line 1816
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Stop;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1817
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1818
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1819
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V

    .line 1820
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1821
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1822
    return-void

    .line 1813
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Stop;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. <stop> elements are only valid inside <linearGradiant> or <radialGradient> elements."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1811
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private style(Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3937
    const-string v0, "<style>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3939
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_4

    .line 3943
    const/4 v0, 0x1

    .line 3944
    .local v0, "isTextCSS":Z
    const-string v1, "all"

    .line 3946
    .local v1, "media":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 3962
    .end local v2    # "i":I
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v1, v3}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3963
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 3964
    goto :goto_1

    .line 3965
    :cond_0
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 3966
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    .line 3968
    :goto_1
    return-void

    .line 3948
    .restart local v2    # "i":I
    :cond_1
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3949
    .local v3, "val":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x27

    if-eq v4, v5, :cond_3

    const/16 v5, 0x4e

    if-eq v4, v5, :cond_2

    .end local v3    # "val":Ljava/lang/String;
    goto :goto_2

    .line 3952
    .restart local v3    # "val":Ljava/lang/String;
    :cond_2
    const-string v4, "text/css"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3953
    goto :goto_2

    .line 3955
    :cond_3
    move-object v1, v3

    .line 3956
    nop

    .line 3946
    .end local v3    # "val":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3940
    .end local v0    # "isTextCSS":Z
    .end local v1    # "media":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private svg(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 847
    const-string v0, "<svg>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    new-instance v0, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Svg;-><init>()V

    .line 850
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Svg;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->document:Lcom/caverock/androidsvg/SVG;

    .line 851
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 852
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 853
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 854
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 855
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 856
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V

    .line 857
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V

    .line 859
    goto :goto_0

    .line 860
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 862
    :goto_0
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 863
    return-void
.end method

.method private symbol(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1575
    const-string v0, "<symbol>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1579
    new-instance v0, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Symbol;-><init>()V

    .line 1580
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Symbol;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Symbol;->document:Lcom/caverock/androidsvg/SVG;

    .line 1581
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Symbol;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1582
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1583
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1584
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1585
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1586
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1587
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1588
    return-void

    .line 1578
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Symbol;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private text(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1399
    const-string v0, "<text>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1403
    new-instance v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Text;-><init>()V

    .line 1404
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Text;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Text;->document:Lcom/caverock/androidsvg/SVG;

    .line 1405
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Text;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1406
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1407
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1408
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1409
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1410
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1411
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1412
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1413
    return-void

    .line 1402
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Text;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private textPath(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1939
    const-string v0, "<textPath>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1941
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1

    .line 1943
    new-instance v0, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TextPath;-><init>()V

    .line 1944
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$TextPath;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    .line 1945
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1946
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1947
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1948
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1949
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V

    .line 1950
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1951
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1952
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v1, :cond_0

    .line 1953
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 1955
    :cond_0
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1956
    :goto_0
    return-void

    .line 1942
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$TextPath;
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tref(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1476
    const-string v0, "<tref>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_2

    .line 1480
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_1

    .line 1482
    new-instance v0, Lcom/caverock/androidsvg/SVG$TRef;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TRef;-><init>()V

    .line 1483
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$TRef;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->document:Lcom/caverock/androidsvg/SVG;

    .line 1484
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1485
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1486
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1487
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1488
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V

    .line 1489
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1490
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v1, :cond_0

    .line 1491
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 1493
    :cond_0
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1494
    :goto_0
    return-void

    .line 1481
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$TRef;
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1479
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tspan(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1448
    const-string v0, "<tspan>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_2

    .line 1452
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_1

    .line 1454
    new-instance v0, Lcom/caverock/androidsvg/SVG$TSpan;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TSpan;-><init>()V

    .line 1455
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$TSpan;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->document:Lcom/caverock/androidsvg/SVG;

    .line 1456
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1457
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1458
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1459
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1460
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1461
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1462
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1463
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v1, :cond_0

    .line 1464
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 1466
    :cond_0
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v1, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1467
    :goto_0
    return-void

    .line 1453
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$TSpan;
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1451
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private use(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 948
    const-string v0, "<use>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 952
    new-instance v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Use;-><init>()V

    .line 953
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Use;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    .line 954
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Use;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 955
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 956
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 957
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 958
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 959
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V

    .line 960
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 961
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 962
    return-void

    .line 951
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Use;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private view(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2066
    const-string v0, "<view>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2068
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2070
    new-instance v0, Lcom/caverock/androidsvg/SVG$View;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$View;-><init>()V

    .line 2071
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$View;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$View;->document:Lcom/caverock/androidsvg/SVG;

    .line 2072
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$View;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2073
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2074
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2075
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 2076
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2077
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2078
    return-void

    .line 2069
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$View;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zwitch(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1522
    const-string v0, "<switch>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1524
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1526
    new-instance v0, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Switch;-><init>()V

    .line 1527
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Switch;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Switch;->document:Lcom/caverock/androidsvg/SVG;

    .line 1528
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Switch;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1529
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1530
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1531
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1532
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1533
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1534
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1535
    return-void

    .line 1525
    .end local v0    # "obj":Lcom/caverock/androidsvg/SVG$Switch;
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 691
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    .line 692
    return-void

    .line 694
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 699
    return-void

    .line 702
    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_4

    .line 704
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 706
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 707
    return-void

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_7

    .line 714
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    .line 715
    .local v0, "parent":Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 716
    .local v1, "numOlderSiblings":I
    if-nez v1, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 717
    .local v2, "previousSibling":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_0
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_6

    .line 719
    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    .line 720
    goto :goto_1

    .line 722
    :cond_6
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    new-instance v4, Lcom/caverock/androidsvg/SVG$TextSequence;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v4, v5}, Lcom/caverock/androidsvg/SVG$TextSequence;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 726
    .end local v0    # "parent":Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
    .end local v1    # "numOlderSiblings":I
    .end local v2    # "previousSibling":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_7
    :goto_1
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 732
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    .line 733
    return-void

    .line 737
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 742
    return-void

    .line 745
    :cond_2
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 810
    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->endDocument()V

    .line 815
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 751
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 754
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    if-nez v0, :cond_0

    .line 755
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 756
    return-void

    .line 760
    :cond_0
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    return-void

    .line 764
    :cond_1
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 774
    :cond_2
    const-string v0, "style"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 775
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 776
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 778
    return-void

    .line 782
    :cond_3
    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 783
    const-string v0, "defs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 784
    const-string v0, "g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 785
    const-string v0, "use"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 786
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 787
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 788
    const-string v0, "tspan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 789
    const-string v0, "switch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 790
    const-string v0, "symbol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 791
    const-string v0, "marker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 792
    const-string v0, "linearGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 793
    const-string v0, "radialGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 794
    const-string v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 795
    const-string v0, "clipPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 796
    const-string v0, "textPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 797
    const-string v0, "pattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 798
    const-string v0, "view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 799
    const-string v0, "mask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 800
    const-string v0, "solidColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 801
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 804
    :cond_5
    return-void

    .line 765
    :cond_6
    :goto_0
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 766
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 767
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 768
    :cond_7
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    const-string v2, "desc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 769
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->setDesc(Ljava/lang/String;)V

    .line 770
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 771
    return-void
.end method

.method protected parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 569
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 572
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 573
    .local v1, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 574
    .local v2, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v2, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 575
    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v2, v3, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v1    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "xr":Lorg/xml/sax/XMLReader;
    nop

    .line 590
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-object v1

    .line 586
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SVG parse error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 582
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v1

    .line 584
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "XML Parser problem"

    invoke-direct {v2, v3, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 578
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v1

    .line 580
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "File error"

    invoke-direct {v2, v3, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected setSupportedFormats([Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .line 557
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->supportedFormats:Ljava/util/HashSet;

    .line 558
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->supportedFormats:Ljava/util/HashSet;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 602
    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->startDocument()V

    .line 603
    new-instance v0, Lcom/caverock/androidsvg/SVG;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 604
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 610
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/ext/DefaultHandler2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 612
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 613
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    .line 614
    return-void

    .line 616
    :cond_0
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 617
    return-void

    .line 620
    :cond_1
    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->svg(Lorg/xml/sax/Attributes;)V

    .line 622
    goto/16 :goto_1

    :cond_2
    const-string v0, "g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 623
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    .line 624
    goto/16 :goto_1

    :cond_3
    const-string v0, "defs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 625
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->defs(Lorg/xml/sax/Attributes;)V

    .line 626
    goto/16 :goto_1

    :cond_4
    const-string v0, "use"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 627
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->use(Lorg/xml/sax/Attributes;)V

    .line 628
    goto/16 :goto_1

    :cond_5
    const-string v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 629
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->path(Lorg/xml/sax/Attributes;)V

    .line 630
    goto/16 :goto_1

    :cond_6
    const-string v0, "rect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 631
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->rect(Lorg/xml/sax/Attributes;)V

    .line 632
    goto/16 :goto_1

    :cond_7
    const-string v0, "circle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 633
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->circle(Lorg/xml/sax/Attributes;)V

    .line 634
    goto/16 :goto_1

    :cond_8
    const-string v0, "ellipse"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 635
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->ellipse(Lorg/xml/sax/Attributes;)V

    .line 636
    goto/16 :goto_1

    :cond_9
    const-string v0, "line"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 637
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->line(Lorg/xml/sax/Attributes;)V

    .line 638
    goto/16 :goto_1

    :cond_a
    const-string v0, "polyline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 639
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polyline(Lorg/xml/sax/Attributes;)V

    .line 640
    goto/16 :goto_1

    :cond_b
    const-string v0, "polygon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 641
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polygon(Lorg/xml/sax/Attributes;)V

    .line 642
    goto/16 :goto_1

    :cond_c
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 643
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->text(Lorg/xml/sax/Attributes;)V

    .line 644
    goto/16 :goto_1

    :cond_d
    const-string v0, "tspan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 645
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tspan(Lorg/xml/sax/Attributes;)V

    .line 646
    goto/16 :goto_1

    :cond_e
    const-string v0, "tref"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 647
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tref(Lorg/xml/sax/Attributes;)V

    .line 648
    goto/16 :goto_1

    :cond_f
    const-string v0, "switch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 649
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->zwitch(Lorg/xml/sax/Attributes;)V

    .line 650
    goto/16 :goto_1

    :cond_10
    const-string v0, "symbol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 651
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->symbol(Lorg/xml/sax/Attributes;)V

    .line 652
    goto/16 :goto_1

    :cond_11
    const-string v0, "marker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 653
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->marker(Lorg/xml/sax/Attributes;)V

    .line 654
    goto/16 :goto_1

    :cond_12
    const-string v0, "linearGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 655
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->linearGradient(Lorg/xml/sax/Attributes;)V

    .line 656
    goto/16 :goto_1

    :cond_13
    const-string v0, "radialGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 657
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->radialGradient(Lorg/xml/sax/Attributes;)V

    .line 658
    goto/16 :goto_1

    :cond_14
    const-string v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 659
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->stop(Lorg/xml/sax/Attributes;)V

    .line 660
    goto/16 :goto_1

    :cond_15
    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 661
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    .line 662
    goto/16 :goto_1

    :cond_16
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_0

    .line 665
    :cond_17
    const-string v0, "clipPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 666
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->clipPath(Lorg/xml/sax/Attributes;)V

    .line 667
    goto :goto_1

    :cond_18
    const-string v0, "textPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 668
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->textPath(Lorg/xml/sax/Attributes;)V

    .line 669
    goto :goto_1

    :cond_19
    const-string v0, "pattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 670
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->pattern(Lorg/xml/sax/Attributes;)V

    .line 671
    goto :goto_1

    :cond_1a
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 672
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->image(Lorg/xml/sax/Attributes;)V

    .line 673
    goto :goto_1

    :cond_1b
    const-string v0, "view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 674
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->view(Lorg/xml/sax/Attributes;)V

    .line 675
    goto :goto_1

    :cond_1c
    const-string v0, "mask"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 676
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->mask(Lorg/xml/sax/Attributes;)V

    .line 677
    goto :goto_1

    :cond_1d
    const-string v0, "style"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 678
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->style(Lorg/xml/sax/Attributes;)V

    .line 679
    goto :goto_1

    :cond_1e
    const-string v0, "solidColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 680
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->solidColor(Lorg/xml/sax/Attributes;)V

    .line 681
    goto :goto_1

    .line 682
    :cond_1f
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 683
    iput v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto :goto_1

    .line 663
    :cond_20
    :goto_0
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 664
    iput-object p2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    .line 665
    nop

    .line 685
    :goto_1
    return-void
.end method
