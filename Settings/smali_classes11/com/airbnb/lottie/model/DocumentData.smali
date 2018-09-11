.class public Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/DocumentData$Factory;
    }
.end annotation


# instance fields
.field public color:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public fontName:Ljava/lang/String;

.field justification:I

.field lineHeight:D

.field public size:I

.field public strokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public strokeOverFill:Z

.field public strokeWidth:I

.field public text:Ljava/lang/String;

.field public tracking:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIDIIIZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "justification"    # I
    .param p5, "tracking"    # I
    .param p6, "lineHeight"    # D
    .param p8, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p9, "strokeColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p10, "strokeWidth"    # I
    .param p11, "strokeOverFill"    # Z

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:I

    .line 29
    iput p4, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    .line 30
    iput p5, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 31
    iput-wide p6, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    .line 32
    iput p8, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 33
    iput p9, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 34
    iput p10, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:I

    .line 35
    iput-boolean p11, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 36
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 7

    .line 88
    iget-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 89
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 90
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget v3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:I

    add-int/2addr v0, v3

    .line 91
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    add-int/2addr v2, v3

    .line 92
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    add-int/2addr v0, v3

    .line 93
    .end local v2    # "result":I
    .restart local v0    # "result":I
    iget-wide v2, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 94
    .local v2, "temp":J
    mul-int v4, v1, v0

    const/16 v5, 0x20

    ushr-long v5, v2, v5

    xor-long/2addr v5, v2

    long-to-int v5, v5

    add-int/2addr v4, v5

    .line 95
    .end local v0    # "result":I
    .local v4, "result":I
    mul-int/2addr v1, v4

    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    add-int/2addr v1, v0

    .line 96
    .end local v4    # "result":I
    .local v1, "result":I
    return v1
.end method

.method set(Lcom/airbnb/lottie/model/DocumentData;)V
    .locals 2
    .param p1, "documentData"    # Lcom/airbnb/lottie/model/DocumentData;

    .line 39
    iget-object v0, p1, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 41
    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->size:I

    iput v0, p0, Lcom/airbnb/lottie/model/DocumentData;->size:I

    .line 42
    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    iput v0, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    .line 43
    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iput v0, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 44
    iget-wide v0, p1, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    iput-wide v0, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    .line 45
    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    iput v0, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 46
    return-void
.end method
