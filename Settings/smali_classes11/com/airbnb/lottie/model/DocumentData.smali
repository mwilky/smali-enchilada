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
    .param p8    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iput p3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:I

    iput p4, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    iput p5, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iput-wide p6, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    iput p8, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    iput p9, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    iput p10, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:I

    iput-boolean p11, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget v3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:I

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget v3, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget v3, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    add-int/2addr v0, v3

    iget-wide v2, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int v4, v1, v0

    const/16 v5, 0x20

    ushr-long v5, v2, v5

    xor-long/2addr v5, v2

    long-to-int v5, v5

    add-int/2addr v4, v5

    mul-int/2addr v1, v4

    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    add-int/2addr v1, v0

    return v1
.end method

.method set(Lcom/airbnb/lottie/model/DocumentData;)V
    .locals 2

    iget-object v0, p1, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iget-object v0, p1, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->size:I

    iput v0, p0, Lcom/airbnb/lottie/model/DocumentData;->size:I

    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    iput v0, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iput v0, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iget-wide v0, p1, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    iput-wide v0, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    iput v0, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    return-void
.end method
