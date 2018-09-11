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
    .param p1, "colorPoints"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    .line 55
    return-void
.end method

.method synthetic constructor <init>(ILcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$1;

    .line 50
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;-><init>(I)V

    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Lorg/json/JSONArray;)V
    .locals 10
    .param p1, "gradientColor"    # Lcom/airbnb/lottie/model/content/GradientColor;
    .param p2, "array"    # Lorg/json/JSONArray;

    .line 125
    iget v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    .line 126
    .local v0, "startIndex":I
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 131
    .local v1, "opacityStops":I
    new-array v2, v1, [D

    .line 132
    .local v2, "positions":[D
    new-array v3, v1, [D

    .line 134
    .local v3, "opacities":[D
    move v4, v0

    .local v4, "i":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "j":I
    .local v6, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 135
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_1

    .line 136
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v7

    aput-wide v7, v2, v4

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v7

    aput-wide v7, v3, v4

    .line 139
    add-int/lit8 v4, v4, 0x1

    .line 134
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 143
    .end local v4    # "j":I
    .end local v6    # "i":I
    :cond_2
    nop

    .local v5, "i":I
    :goto_2
    move v4, v5

    .end local v5    # "i":I
    .local v4, "i":I
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 144
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v5

    aget v5, v5, v4

    .line 145
    .local v5, "color":I
    nop

    .line 146
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v6

    aget v6, v6, v4

    float-to-double v6, v6

    invoke-direct {p0, v6, v7, v2, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->getOpacityAtPosition(D[D[D)I

    move-result v6

    .line 147
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 148
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 149
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 145
    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 151
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v6

    aput v5, v6, v4

    .line 143
    .end local v5    # "color":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    goto :goto_2

    .line 153
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 21
    .param p1, "position"    # D
    .param p3, "positions"    # [D
    .param p4, "opacities"    # [D
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    move-object/from16 v0, p3

    .line 157
    move-object/from16 v1, p4

    const/4 v2, 0x1

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    const-wide v5, 0x406fe00000000000L    # 255.0

    if-ge v3, v4, :cond_1

    .line 158
    add-int/lit8 v4, v3, -0x1

    aget-wide v7, v0, v4

    .line 159
    .local v7, "lastPosition":D
    aget-wide v9, v0, v3

    .line 160
    .local v9, "thisPosition":D
    aget-wide v11, v0, v3

    cmpl-double v4, v11, p1

    if-ltz v4, :cond_0

    .line 161
    sub-double v11, p1, v7

    sub-double v13, v9, v7

    div-double/2addr v11, v13

    .line 162
    .local v11, "progress":D
    add-int/lit8 v2, v3, -0x1

    aget-wide v15, v1, v2

    aget-wide v17, v1, v3

    move-wide/from16 v19, v11

    invoke-static/range {v15 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v13

    mul-double/2addr v5, v13

    double-to-int v2, v5

    return v2

    .line 157
    .end local v7    # "lastPosition":D
    .end local v9    # "thisPosition":D
    .end local v11    # "progress":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "i":I
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
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .line 78
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    .line 79
    .local v0, "array":Lorg/json/JSONArray;
    iget v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    new-array v1, v1, [F

    .line 80
    .local v1, "positions":[F
    iget v2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    new-array v2, v2, [I

    .line 81
    .local v2, "colors":[I
    new-instance v3, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v3, v1, v2}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 82
    .local v3, "gradientColor":Lcom/airbnb/lottie/model/content/GradientColor;
    const/4 v4, 0x0

    .line 83
    .local v4, "r":I
    const/4 v5, 0x0

    .line 84
    .local v5, "g":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    iget v7, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v7, v7, 0x4

    if-eq v6, v7, :cond_0

    .line 85
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

    .line 90
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v7, p0, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v7, v7, 0x4

    if-ge v6, v7, :cond_1

    .line 91
    div-int/lit8 v7, v6, 0x4

    .line 92
    .local v7, "colorIndex":I
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    .line 93
    .local v8, "value":D
    rem-int/lit8 v10, v6, 0x4

    const-wide v11, 0x406fe00000000000L    # 255.0

    packed-switch v10, :pswitch_data_0

    .end local v7    # "colorIndex":I
    .end local v8    # "value":D
    goto :goto_1

    .line 105
    .restart local v7    # "colorIndex":I
    .restart local v8    # "value":D
    :pswitch_0
    mul-double/2addr v11, v8

    double-to-int v10, v11

    .line 106
    .local v10, "b":I
    const/16 v11, 0xff

    invoke-static {v11, v4, v5, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    aput v11, v2, v7

    .end local v7    # "colorIndex":I
    .end local v8    # "value":D
    .end local v10    # "b":I
    goto :goto_1

    .line 102
    .restart local v7    # "colorIndex":I
    .restart local v8    # "value":D
    :pswitch_1
    mul-double/2addr v11, v8

    double-to-int v5, v11

    .line 103
    goto :goto_1

    .line 99
    :pswitch_2
    mul-double/2addr v11, v8

    double-to-int v4, v11

    .line 100
    goto :goto_1

    .line 96
    :pswitch_3
    double-to-float v10, v8

    aput v10, v1, v7

    .line 97
    nop

    .line 90
    .end local v7    # "colorIndex":I
    .end local v8    # "value":D
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 111
    .end local v6    # "i":I
    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Lorg/json/JSONArray;)V

    .line 112
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

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$ValueFactory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
