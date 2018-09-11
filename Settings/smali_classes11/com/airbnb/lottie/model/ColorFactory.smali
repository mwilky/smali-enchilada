.class public Lcom/airbnb/lottie/model/ColorFactory;
.super Ljava/lang/Object;
.source "ColorFactory.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/model/ColorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/airbnb/lottie/model/ColorFactory;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/ColorFactory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/ColorFactory;->INSTANCE:Lcom/airbnb/lottie/model/ColorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Ljava/lang/Integer;
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .line 13
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    .line 14
    .local v0, "colorArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 15
    const/4 v1, 0x1

    .line 16
    .local v1, "shouldUse255":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "shouldUse255":Z
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    .line 18
    .local v4, "colorChannel":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    .line 19
    const/4 v3, 0x0

    .line 16
    .end local v4    # "colorChannel":D
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v1    # "i":I
    :cond_1
    if-eqz v3, :cond_2

    const/high16 v1, 0x437f0000    # 255.0f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    .local v1, "multiplier":F
    :goto_1
    const/4 v4, 0x3

    .line 25
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 26
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v5

    float-to-double v7, v1

    mul-double/2addr v5, v7

    double-to-int v2, v5

    .line 27
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v5

    float-to-double v7, v1

    mul-double/2addr v5, v7

    double-to-int v5, v5

    const/4 v6, 0x2

    .line 28
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    float-to-double v8, v1

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 24
    invoke-static {v4, v2, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 30
    .end local v1    # "multiplier":F
    .end local v3    # "shouldUse255":Z
    :cond_3
    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/ColorFactory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
