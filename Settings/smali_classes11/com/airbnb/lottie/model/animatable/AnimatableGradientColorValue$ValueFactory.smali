.class Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;
.super Ljava/lang/Object;
.source "AnimatableGradientColorValue.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final colorPoints:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;-><init>(I)V

    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Lorg/json/JSONArray;)V
    .locals 10

    iget v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [D

    new-array v3, v1, [D

    move v4, v0

    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v7

    aput-wide v7, v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v7

    aput-wide v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_2
    move v4, v5

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v5

    aget v5, v5, v4

    nop

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v6

    aget v6, v6, v4

    float-to-double v6, v6

    invoke-direct {p0, v6, v7, v2, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->getOpacityAtPosition(D[D[D)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v6

    aput v5, v6, v4

    add-int/lit8 v5, v4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 21
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    array-length v4, v0

    const-wide v5, 0x406fe00000000000L    # 255.0

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    aget-wide v7, v0, v4

    aget-wide v9, v0, v3

    aget-wide v11, v0, v3

    cmpl-double v4, v11, p1

    if-ltz v4, :cond_0

    sub-double v11, p1, v7

    sub-double v13, v9, v7

    div-double/2addr v11, v13

    add-int/lit8 v2, v3, -0x1

    aget-wide v15, v1, v2

    aget-wide v17, v1, v3

    move-wide/from16 v19, v11

    invoke-static/range {v15 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v13

    mul-double/2addr v5, v13

    double-to-int v2, v5

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-wide v2, v1, v3

    mul-double/2addr v5, v2

    double-to-int v2, v5

    return v2
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 13

    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    iget v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    new-array v1, v1, [F

    iget v2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    new-array v2, v2, [I

    new-instance v3, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v3, v1, v2}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    iget v7, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v7, v7, 0x4

    if-eq v6, v7, :cond_0

    const-string v6, "LOTTIE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected gradient length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". This may affect the appearance of the gradient. Make sure to save your After Effects file before exporting an animation with gradients."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget v7, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v7, v7, 0x4

    if-ge v6, v7, :cond_1

    div-int/lit8 v7, v6, 0x4

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    rem-int/lit8 v10, v6, 0x4

    const-wide v11, 0x406fe00000000000L    # 255.0

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-double/2addr v11, v8

    double-to-int v10, v11

    const/16 v11, 0xff

    invoke-static {v11, v4, v5, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    aput v11, v2, v7

    goto :goto_1

    :pswitch_1
    mul-double/2addr v11, v8

    double-to-int v5, v11

    goto :goto_1

    :pswitch_2
    mul-double/2addr v11, v8

    double-to-int v4, v11

    goto :goto_1

    :pswitch_3
    double-to-float v10, v8

    aput v10, v1, v7

    nop

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Lorg/json/JSONArray;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
