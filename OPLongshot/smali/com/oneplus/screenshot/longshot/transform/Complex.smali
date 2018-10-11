.class public Lcom/oneplus/screenshot/longshot/transform/Complex;
.super Ljava/lang/Object;
.source "Complex.java"


# instance fields
.field private mImag:D

.field private mReal:D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    iput-wide p1, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    iput-wide p3, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/screenshot/longshot/transform/Complex;
    .locals 5

    new-instance v0, Lcom/oneplus/screenshot/longshot/transform/Complex;

    iget-wide v1, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v3, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/transform/Complex;->clone()Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v0

    return-object v0
.end method

.method public conjugate()Lcom/oneplus/screenshot/longshot/transform/Complex;
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    return-object p0
.end method

.method public divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    return-object p0
.end method

.method public getImag()D
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    return-wide v0
.end method

.method public getReal()D
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    return-wide v0
.end method

.method public minus(Lcom/oneplus/screenshot/longshot/transform/Complex;)Lcom/oneplus/screenshot/longshot/transform/Complex;
    .locals 4

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v2, p1, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    iget-wide v2, p1, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    return-object p0
.end method

.method public multiply(Lcom/oneplus/screenshot/longshot/transform/Complex;)Lcom/oneplus/screenshot/longshot/transform/Complex;
    .locals 6

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v2, p1, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    iget-wide v4, p1, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v2, p1, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    iget-wide v4, p1, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    return-object p0
.end method

.method public plus(Lcom/oneplus/screenshot/longshot/transform/Complex;)Lcom/oneplus/screenshot/longshot/transform/Complex;
    .locals 4

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v2, p1, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    iget-wide v2, p1, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/transform/Complex;->mImag:D

    return-object p0
.end method
