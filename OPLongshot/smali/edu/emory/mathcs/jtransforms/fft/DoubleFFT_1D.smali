.class public Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;
    }
.end annotation


# static fields
.field private static final PI:D = 3.141592653589793

.field private static final TWO_PI:D = 6.283185307179586

.field private static final factors:[I


# instance fields
.field private bk1:[D

.field private bk2:[D

.field private ip:[I

.field private n:I

.field private nBluestein:I

.field private nc:I

.field private nw:I

.field private plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

.field private w:[D

.field private wtable:[D

.field private wtable_r:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x2
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v1

    const/4 v2, 0x0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/4 v7, 0x2

    if-nez v1, :cond_3

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    invoke-static {p1, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->getReminder(I[I)I

    move-result v1

    const/16 v8, 0xd3

    if-lt v1, v8, :cond_2

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    mul-int/lit8 v1, p1, 0x2

    sub-int/2addr v1, v0

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->nextPow2(I)I

    move-result v1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/2addr v1, v7

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/2addr v1, v7

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    int-to-double v8, v1

    add-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v5, v3

    double-to-int v1, v5

    div-int/2addr v1, v7

    shl-int v1, v0, v1

    add-int/2addr v1, v7

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/2addr v1, v7

    new-array v1, v1, [I

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/2addr v1, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v2, v3, v2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    shl-int/2addr v2, v7

    if-le v1, v2, :cond_0

    shr-int/lit8 v2, v1, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makewt(I)V

    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v0, v2, v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    shl-int/2addr v2, v7

    if-le v0, v2, :cond_1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    shr-int/2addr v0, v7

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v0, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makect(I[DI)V

    :cond_1
    invoke-direct {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluesteini()V

    goto :goto_0

    :cond_2
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    const/4 v0, 0x4

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    mul-int/2addr v7, p1

    add-int/lit8 v7, v7, 0xf

    new-array v0, v7, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cffti()V

    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rffti()V

    goto :goto_0

    :cond_3
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    int-to-double v8, p1

    add-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v5, v3

    double-to-int v1, v5

    div-int/2addr v1, v7

    shl-int v1, v0, v1

    add-int/2addr v1, v7

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/2addr v1, v7

    new-array v1, v1, [I

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    new-array v1, p1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    mul-int v1, v7, p1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v2, v3, v2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    shl-int/2addr v2, v7

    if-le v1, v2, :cond_4

    shr-int/lit8 v2, v1, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makewt(I)V

    :cond_4
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v0, v2, v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    shl-int/2addr v0, v7

    if-le p1, v0, :cond_5

    shr-int/lit8 v0, p1, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v0, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makect(I[DI)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D
    .locals 1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    return-object v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D
    .locals 1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    return-object v0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    return-void
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    return-void
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DII[D)I
    .locals 1

    invoke-direct/range {p0 .. p7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfttree(III[DII[D)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    return-void
.end method

.method private bitrv2(I[I[DI)V
    .locals 23

    const/4 v0, 0x1

    shr-int/lit8 v1, p1, 0x2

    :goto_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    shr-int/lit8 v3, p1, 0x1

    const/4 v4, 0x4

    mul-int v5, v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v1, v2, :cond_2

    move v2, v6

    :goto_1
    if-ge v2, v0, :cond_4

    mul-int v8, v4, v2

    move v9, v6

    :goto_2
    if-ge v9, v2, :cond_1

    mul-int v10, v4, v9

    add-int v11, v0, v2

    aget v11, p2, v11

    mul-int/2addr v11, v7

    add-int/2addr v10, v11

    add-int v11, v0, v9

    aget v11, p2, v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v8

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v16, v12, 0x1

    aget-wide v16, p3, v16

    aget-wide v18, p3, v13

    add-int/lit8 v20, v13, 0x1

    aget-wide v20, p3, v20

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v5

    mul-int v22, v7, v5

    add-int v11, v11, v22

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v5

    sub-int/2addr v11, v5

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v5

    mul-int v22, v7, v5

    add-int v11, v11, v22

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v3

    add-int/2addr v11, v7

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    sub-int/2addr v10, v5

    mul-int v22, v7, v5

    sub-int v11, v11, v22

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    sub-int/2addr v10, v5

    add-int/2addr v11, v5

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    sub-int/2addr v10, v5

    mul-int v22, v7, v5

    sub-int v11, v11, v22

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v7

    add-int/2addr v11, v3

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v5

    mul-int v22, v7, v5

    add-int v11, v11, v22

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v5

    sub-int/2addr v11, v5

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v5

    mul-int v22, v7, v5

    add-int v11, v11, v22

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    sub-int/2addr v10, v3

    add-int/lit8 v11, v11, -0x2

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    sub-int/2addr v10, v5

    mul-int v22, v7, v5

    sub-int v11, v11, v22

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    sub-int/2addr v10, v5

    add-int/2addr v11, v5

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    sub-int/2addr v10, v5

    mul-int v22, v7, v5

    sub-int v11, v11, v22

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_1
    add-int v9, v0, v2

    aget v9, p2, v9

    mul-int/2addr v9, v7

    add-int/2addr v9, v8

    add-int/lit8 v10, v9, 0x2

    add-int/2addr v9, v3

    add-int v11, p4, v10

    add-int v12, p4, v9

    aget-wide v13, p3, v11

    add-int/lit8 v15, v11, 0x1

    aget-wide v15, p3, v15

    aget-wide v17, p3, v12

    add-int/lit8 v19, v12, 0x1

    aget-wide v19, p3, v19

    aput-wide v17, p3, v11

    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    aput-wide v13, p3, v12

    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    add-int/2addr v10, v5

    mul-int v21, v7, v5

    add-int v9, v9, v21

    add-int v11, p4, v10

    add-int v12, p4, v9

    aget-wide v13, p3, v11

    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    aget-wide v17, p3, v12

    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    aput-wide v17, p3, v11

    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    aput-wide v13, p3, v12

    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    add-int/2addr v10, v5

    sub-int/2addr v9, v5

    add-int v11, p4, v10

    add-int v12, p4, v9

    aget-wide v13, p3, v11

    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    aget-wide v17, p3, v12

    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    aput-wide v17, p3, v11

    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    aput-wide v13, p3, v12

    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    add-int/lit8 v10, v10, -0x2

    sub-int/2addr v9, v3

    add-int v11, p4, v10

    add-int v12, p4, v9

    aget-wide v13, p3, v11

    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    aget-wide v17, p3, v12

    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    aput-wide v17, p3, v11

    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    aput-wide v13, p3, v12

    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    add-int/lit8 v21, v3, 0x2

    add-int v10, v10, v21

    add-int/lit8 v21, v3, 0x2

    add-int v9, v9, v21

    add-int v11, p4, v10

    add-int v12, p4, v9

    aget-wide v13, p3, v11

    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    aget-wide v17, p3, v12

    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    aput-wide v17, p3, v11

    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    aput-wide v13, p3, v12

    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    sub-int v21, v3, v5

    sub-int v10, v10, v21

    mul-int v21, v7, v5

    add-int/lit8 v21, v21, -0x2

    add-int v9, v9, v21

    add-int v11, p4, v10

    add-int v12, p4, v9

    aget-wide v13, p3, v11

    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    aget-wide v17, p3, v12

    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    aput-wide v17, p3, v11

    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    aput-wide v13, p3, v12

    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    move v2, v6

    :goto_3
    if-ge v2, v0, :cond_4

    mul-int v8, v4, v2

    move v9, v6

    :goto_4
    if-ge v9, v2, :cond_3

    mul-int v10, v4, v9

    add-int v11, v0, v2

    aget v11, p2, v11

    add-int/2addr v10, v11

    add-int v11, v0, v9

    aget v11, p2, v11

    add-int/2addr v11, v8

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v16, v12, 0x1

    aget-wide v16, p3, v16

    aget-wide v18, p3, v13

    add-int/lit8 v20, v13, 0x1

    aget-wide v20, p3, v20

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v5

    add-int/2addr v11, v5

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v3

    add-int/2addr v11, v7

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    sub-int/2addr v10, v5

    sub-int/2addr v11, v5

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v7

    add-int/2addr v11, v3

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/2addr v10, v5

    add-int/2addr v11, v5

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    sub-int/2addr v10, v3

    add-int/lit8 v11, v11, -0x2

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    sub-int/2addr v10, v5

    sub-int/2addr v11, v5

    add-int v12, p4, v10

    add-int v13, p4, v11

    aget-wide v14, p3, v12

    add-int/lit8 v22, v12, 0x1

    aget-wide v16, p3, v22

    aget-wide v18, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v20, p3, v22

    aput-wide v18, p3, v12

    add-int/lit8 v22, v12, 0x1

    aput-wide v20, p3, v22

    aput-wide v14, p3, v13

    add-int/lit8 v22, v13, 0x1

    aput-wide v16, p3, v22

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    :cond_3
    add-int v9, v0, v2

    aget v9, p2, v9

    add-int/2addr v9, v8

    add-int/lit8 v10, v9, 0x2

    add-int/2addr v9, v3

    add-int v11, p4, v10

    add-int v12, p4, v9

    aget-wide v13, p3, v11

    add-int/lit8 v15, v11, 0x1

    aget-wide v15, p3, v15

    aget-wide v17, p3, v12

    add-int/lit8 v19, v12, 0x1

    aget-wide v19, p3, v19

    aput-wide v17, p3, v11

    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    aput-wide v13, p3, v12

    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    add-int/2addr v10, v5

    add-int/2addr v9, v5

    add-int v11, p4, v10

    add-int v12, p4, v9

    aget-wide v13, p3, v11

    add-int/lit8 v21, v11, 0x1

    aget-wide v15, p3, v21

    aget-wide v17, p3, v12

    add-int/lit8 v21, v12, 0x1

    aget-wide v19, p3, v21

    aput-wide v17, p3, v11

    add-int/lit8 v21, v11, 0x1

    aput-wide v19, p3, v21

    aput-wide v13, p3, v12

    add-int/lit8 v21, v12, 0x1

    aput-wide v15, p3, v21

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_4
    return-void
.end method

.method private bitrv208([DI)V
    .locals 17

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x6

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x7

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x8

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x9

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0xc

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0xd

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x2

    aput-wide v8, p1, v16

    add-int/lit8 v16, p2, 0x3

    aput-wide v10, p1, v16

    add-int/lit8 v16, p2, 0x6

    aput-wide v12, p1, v16

    add-int/lit8 v16, p2, 0x7

    aput-wide v14, p1, v16

    add-int/lit8 v16, p2, 0x8

    aput-wide v0, p1, v16

    add-int/lit8 v16, p2, 0x9

    aput-wide v2, p1, v16

    add-int/lit8 v16, p2, 0xc

    aput-wide v4, p1, v16

    add-int/lit8 v16, p2, 0xd

    aput-wide v6, p1, v16

    return-void
.end method

.method private bitrv208neg([DI)V
    .locals 29

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x6

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x7

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x8

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x9

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0xc

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0xd

    aget-wide v22, p1, v22

    add-int/lit8 v24, p2, 0xe

    aget-wide v24, p1, v24

    add-int/lit8 v26, p2, 0xf

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0x2

    aput-wide v24, p1, v28

    add-int/lit8 v28, p2, 0x3

    aput-wide v26, p1, v28

    add-int/lit8 v28, p2, 0x4

    aput-wide v8, p1, v28

    add-int/lit8 v28, p2, 0x5

    aput-wide v10, p1, v28

    add-int/lit8 v28, p2, 0x6

    aput-wide v16, p1, v28

    add-int/lit8 v28, p2, 0x7

    aput-wide v18, p1, v28

    add-int/lit8 v28, p2, 0x8

    aput-wide v0, p1, v28

    add-int/lit8 v28, p2, 0x9

    aput-wide v2, p1, v28

    add-int/lit8 v28, p2, 0xa

    aput-wide v20, p1, v28

    add-int/lit8 v28, p2, 0xb

    aput-wide v22, p1, v28

    add-int/lit8 v28, p2, 0xc

    aput-wide v4, p1, v28

    add-int/lit8 v28, p2, 0xd

    aput-wide v6, p1, v28

    add-int/lit8 v28, p2, 0xe

    aput-wide v12, p1, v28

    add-int/lit8 v28, p2, 0xf

    aput-wide v14, p1, v28

    return-void
.end method

.method private bitrv216([DI)V
    .locals 49

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x6

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x7

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x8

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x9

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0xe

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0xf

    aget-wide v22, p1, v22

    add-int/lit8 v24, p2, 0x10

    aget-wide v24, p1, v24

    add-int/lit8 v26, p2, 0x11

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0x14

    aget-wide v28, p1, v28

    add-int/lit8 v30, p2, 0x15

    aget-wide v30, p1, v30

    add-int/lit8 v32, p2, 0x16

    aget-wide v32, p1, v32

    add-int/lit8 v34, p2, 0x17

    aget-wide v34, p1, v34

    add-int/lit8 v36, p2, 0x18

    aget-wide v36, p1, v36

    add-int/lit8 v38, p2, 0x19

    aget-wide v38, p1, v38

    add-int/lit8 v40, p2, 0x1a

    aget-wide v40, p1, v40

    add-int/lit8 v42, p2, 0x1b

    aget-wide v42, p1, v42

    add-int/lit8 v44, p2, 0x1c

    aget-wide v44, p1, v44

    add-int/lit8 v46, p2, 0x1d

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0x2

    aput-wide v24, p1, v48

    add-int/lit8 v48, p2, 0x3

    aput-wide v26, p1, v48

    add-int/lit8 v48, p2, 0x4

    aput-wide v12, p1, v48

    add-int/lit8 v48, p2, 0x5

    aput-wide v14, p1, v48

    add-int/lit8 v48, p2, 0x6

    aput-wide v36, p1, v48

    add-int/lit8 v48, p2, 0x7

    aput-wide v38, p1, v48

    add-int/lit8 v48, p2, 0x8

    aput-wide v4, p1, v48

    add-int/lit8 v48, p2, 0x9

    aput-wide v6, p1, v48

    add-int/lit8 v48, p2, 0xa

    aput-wide v28, p1, v48

    add-int/lit8 v48, p2, 0xb

    aput-wide v30, p1, v48

    add-int/lit8 v48, p2, 0xe

    aput-wide v44, p1, v48

    add-int/lit8 v48, p2, 0xf

    aput-wide v46, p1, v48

    add-int/lit8 v48, p2, 0x10

    aput-wide v0, p1, v48

    add-int/lit8 v48, p2, 0x11

    aput-wide v2, p1, v48

    add-int/lit8 v48, p2, 0x14

    aput-wide v16, p1, v48

    add-int/lit8 v48, p2, 0x15

    aput-wide v18, p1, v48

    add-int/lit8 v48, p2, 0x16

    aput-wide v40, p1, v48

    add-int/lit8 v48, p2, 0x17

    aput-wide v42, p1, v48

    add-int/lit8 v48, p2, 0x18

    aput-wide v8, p1, v48

    add-int/lit8 v48, p2, 0x19

    aput-wide v10, p1, v48

    add-int/lit8 v48, p2, 0x1a

    aput-wide v32, p1, v48

    add-int/lit8 v48, p2, 0x1b

    aput-wide v34, p1, v48

    add-int/lit8 v48, p2, 0x1c

    aput-wide v20, p1, v48

    add-int/lit8 v48, p2, 0x1d

    aput-wide v22, p1, v48

    return-void
.end method

.method private bitrv216neg([DI)V
    .locals 61

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x6

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x7

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x8

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x9

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0xc

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0xd

    aget-wide v22, p1, v22

    add-int/lit8 v24, p2, 0xe

    aget-wide v24, p1, v24

    add-int/lit8 v26, p2, 0xf

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0x10

    aget-wide v28, p1, v28

    add-int/lit8 v30, p2, 0x11

    aget-wide v30, p1, v30

    add-int/lit8 v32, p2, 0x12

    aget-wide v32, p1, v32

    add-int/lit8 v34, p2, 0x13

    aget-wide v34, p1, v34

    add-int/lit8 v36, p2, 0x14

    aget-wide v36, p1, v36

    add-int/lit8 v38, p2, 0x15

    aget-wide v38, p1, v38

    add-int/lit8 v40, p2, 0x16

    aget-wide v40, p1, v40

    add-int/lit8 v42, p2, 0x17

    aget-wide v42, p1, v42

    add-int/lit8 v44, p2, 0x18

    aget-wide v44, p1, v44

    add-int/lit8 v46, p2, 0x19

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0x1a

    aget-wide v48, p1, v48

    add-int/lit8 v50, p2, 0x1b

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0x1c

    aget-wide v52, p1, v52

    add-int/lit8 v54, p2, 0x1d

    aget-wide v54, p1, v54

    add-int/lit8 v56, p2, 0x1e

    aget-wide v56, p1, v56

    add-int/lit8 v58, p2, 0x1f

    aget-wide v58, p1, v58

    add-int/lit8 v60, p2, 0x2

    aput-wide v56, p1, v60

    add-int/lit8 v60, p2, 0x3

    aput-wide v58, p1, v60

    add-int/lit8 v60, p2, 0x4

    aput-wide v24, p1, v60

    add-int/lit8 v60, p2, 0x5

    aput-wide v26, p1, v60

    add-int/lit8 v60, p2, 0x6

    aput-wide v40, p1, v60

    add-int/lit8 v60, p2, 0x7

    aput-wide v42, p1, v60

    add-int/lit8 v60, p2, 0x8

    aput-wide v8, p1, v60

    add-int/lit8 v60, p2, 0x9

    aput-wide v10, p1, v60

    add-int/lit8 v60, p2, 0xa

    aput-wide v48, p1, v60

    add-int/lit8 v60, p2, 0xb

    aput-wide v50, p1, v60

    add-int/lit8 v60, p2, 0xc

    aput-wide v16, p1, v60

    add-int/lit8 v60, p2, 0xd

    aput-wide v18, p1, v60

    add-int/lit8 v60, p2, 0xe

    aput-wide v32, p1, v60

    add-int/lit8 v60, p2, 0xf

    aput-wide v34, p1, v60

    add-int/lit8 v60, p2, 0x10

    aput-wide v0, p1, v60

    add-int/lit8 v60, p2, 0x11

    aput-wide v2, p1, v60

    add-int/lit8 v60, p2, 0x12

    aput-wide v52, p1, v60

    add-int/lit8 v60, p2, 0x13

    aput-wide v54, p1, v60

    add-int/lit8 v60, p2, 0x14

    aput-wide v20, p1, v60

    add-int/lit8 v60, p2, 0x15

    aput-wide v22, p1, v60

    add-int/lit8 v60, p2, 0x16

    aput-wide v36, p1, v60

    add-int/lit8 v60, p2, 0x17

    aput-wide v38, p1, v60

    add-int/lit8 v60, p2, 0x18

    aput-wide v4, p1, v60

    add-int/lit8 v60, p2, 0x19

    aput-wide v6, p1, v60

    add-int/lit8 v60, p2, 0x1a

    aput-wide v44, p1, v60

    add-int/lit8 v60, p2, 0x1b

    aput-wide v46, p1, v60

    add-int/lit8 v60, p2, 0x1c

    aput-wide v12, p1, v60

    add-int/lit8 v60, p2, 0x1d

    aput-wide v14, p1, v60

    add-int/lit8 v60, p2, 0x1e

    aput-wide v28, p1, v60

    add-int/lit8 v60, p2, 0x1f

    aput-wide v30, p1, v60

    return-void
.end method

.method private bitrv2conj(I[I[DI)V
    .locals 137

    const/4 v3, 0x1

    shr-int/lit8 v4, p1, 0x2

    :goto_0
    const/16 v5, 0x8

    if-le v4, v5, :cond_0

    shl-int/lit8 v3, v3, 0x1

    shr-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    shr-int/lit8 v6, p1, 0x1

    const/4 v7, 0x4

    mul-int v8, v7, v3

    const/4 v10, 0x2

    if-ne v4, v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    mul-int v11, v7, v5

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_1

    mul-int v13, v7, v12

    add-int v14, v3, v5

    aget v14, p2, v14

    mul-int/2addr v14, v10

    add-int/2addr v13, v14

    add-int v14, v3, v12

    aget v14, p2, v14

    mul-int/2addr v14, v10

    add-int/2addr v14, v11

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    aget-wide v9, p3, v19

    neg-double v9, v9

    aget-wide v20, p3, v16

    add-int/lit8 v19, v16, 0x1

    move/from16 v22, v8

    aget-wide v7, p3, v19

    neg-double v7, v7

    aput-wide v20, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v7, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v9, p3, v19

    add-int v13, v13, v22

    const/16 v19, 0x2

    mul-int v23, v19, v22

    add-int v14, v14, v23

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v24, v7

    aget-wide v7, p3, v19

    neg-double v7, v7

    aget-wide v9, p3, v16

    add-int/lit8 v19, v16, 0x1

    aget-wide v0, p3, v19

    neg-double v0, v0

    aput-wide v9, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v0, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v7, p3, v19

    add-int v13, v13, v22

    sub-int v14, v14, v22

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v26, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v9, v16, 0x1

    aget-wide v9, p3, v9

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    add-int v13, v13, v22

    const/16 v19, 0x2

    mul-int v20, v19, v22

    add-int v14, v14, v20

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v28, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v30, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    add-int/2addr v13, v6

    const/16 v19, 0x2

    add-int/lit8 v14, v14, 0x2

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v32, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v34, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    sub-int v13, v13, v22

    const/16 v19, 0x2

    mul-int v20, v19, v22

    sub-int v14, v14, v20

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v36, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v38, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    sub-int v13, v13, v22

    add-int v14, v14, v22

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v40, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v42, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    sub-int v13, v13, v22

    const/16 v19, 0x2

    mul-int v20, v19, v22

    sub-int v14, v14, v20

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v44, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v46, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    const/16 v19, 0x2

    add-int/lit8 v13, v13, 0x2

    add-int/2addr v14, v6

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v48, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v50, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    add-int v13, v13, v22

    const/16 v19, 0x2

    mul-int v20, v19, v22

    add-int v14, v14, v20

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v52, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v54, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    add-int v13, v13, v22

    sub-int v14, v14, v22

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v56, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v58, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    add-int v13, v13, v22

    const/16 v19, 0x2

    mul-int v20, v19, v22

    add-int v14, v14, v20

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v60, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v62, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    sub-int/2addr v13, v6

    add-int/lit8 v14, v14, -0x2

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v64, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v66, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    sub-int v13, v13, v22

    const/16 v19, 0x2

    mul-int v20, v19, v22

    sub-int v14, v14, v20

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v68, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v70, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    sub-int v13, v13, v22

    add-int v14, v14, v22

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v72, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v74, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    sub-int v13, v13, v22

    const/16 v19, 0x2

    mul-int v20, v19, v22

    sub-int v14, v14, v20

    add-int v15, p4, v13

    add-int v16, p4, v14

    aget-wide v17, p3, v15

    add-int/lit8 v19, v15, 0x1

    move-wide/from16 v76, v0

    aget-wide v0, p3, v19

    neg-double v0, v0

    aget-wide v7, p3, v16

    add-int/lit8 v19, v16, 0x1

    move-wide/from16 v78, v9

    aget-wide v9, p3, v19

    neg-double v9, v9

    aput-wide v7, p3, v15

    add-int/lit8 v19, v15, 0x1

    aput-wide v9, p3, v19

    aput-wide v17, p3, v16

    add-int/lit8 v19, v16, 0x1

    aput-wide v0, p3, v19

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v22

    const/4 v7, 0x4

    const/4 v10, 0x2

    goto/16 :goto_2

    :cond_1
    move/from16 v22, v8

    add-int v0, v3, v5

    aget v0, p2, v0

    const/4 v7, 0x2

    mul-int v10, v7, v0

    add-int/2addr v10, v11

    add-int/lit8 v0, v10, 0x2

    add-int/2addr v10, v6

    add-int v7, p4, v0

    add-int v8, p4, v10

    add-int/lit8 v9, v7, -0x1

    add-int/lit8 v12, v7, -0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aput-wide v12, p3, v9

    aget-wide v12, p3, v7

    add-int/lit8 v9, v7, 0x1

    move/from16 v80, v3

    move/from16 v81, v4

    aget-wide v3, p3, v9

    neg-double v3, v3

    aget-wide v14, p3, v8

    add-int/lit8 v9, v8, 0x1

    move/from16 v83, v5

    move/from16 v82, v6

    aget-wide v5, p3, v9

    neg-double v5, v5

    aput-wide v14, p3, v7

    add-int/lit8 v9, v7, 0x1

    aput-wide v5, p3, v9

    aput-wide v12, p3, v8

    add-int/lit8 v9, v8, 0x1

    aput-wide v3, p3, v9

    add-int/lit8 v9, v8, 0x3

    add-int/lit8 v16, v8, 0x3

    move-wide/from16 v84, v3

    aget-wide v3, p3, v16

    neg-double v3, v3

    aput-wide v3, p3, v9

    add-int v0, v0, v22

    const/4 v3, 0x2

    mul-int v4, v3, v22

    add-int/2addr v10, v4

    add-int v3, p4, v0

    add-int v4, p4, v10

    aget-wide v7, p3, v3

    add-int/lit8 v9, v3, 0x1

    aget-wide v12, p3, v9

    neg-double v12, v12

    aget-wide v14, p3, v4

    add-int/lit8 v9, v4, 0x1

    move-wide/from16 v86, v5

    aget-wide v5, p3, v9

    neg-double v5, v5

    aput-wide v14, p3, v3

    add-int/lit8 v9, v3, 0x1

    aput-wide v5, p3, v9

    aput-wide v7, p3, v4

    add-int/lit8 v9, v4, 0x1

    aput-wide v12, p3, v9

    add-int v0, v0, v22

    sub-int v10, v10, v22

    add-int v3, p4, v0

    add-int v4, p4, v10

    aget-wide v7, p3, v3

    add-int/lit8 v9, v3, 0x1

    move-wide/from16 v88, v5

    aget-wide v5, p3, v9

    neg-double v5, v5

    aget-wide v12, p3, v4

    add-int/lit8 v9, v4, 0x1

    move/from16 v90, v10

    aget-wide v9, p3, v9

    neg-double v9, v9

    aput-wide v12, p3, v3

    add-int/lit8 v14, v3, 0x1

    aput-wide v9, p3, v14

    aput-wide v7, p3, v4

    add-int/lit8 v14, v4, 0x1

    aput-wide v5, p3, v14

    add-int/lit8 v0, v0, -0x2

    sub-int v14, v90, v82

    add-int v3, p4, v0

    add-int v4, p4, v14

    aget-wide v7, p3, v3

    add-int/lit8 v15, v3, 0x1

    move-wide/from16 v91, v5

    aget-wide v5, p3, v15

    neg-double v5, v5

    aget-wide v12, p3, v4

    add-int/lit8 v15, v4, 0x1

    move-wide/from16 v93, v9

    aget-wide v9, p3, v15

    neg-double v9, v9

    aput-wide v12, p3, v3

    add-int/lit8 v15, v3, 0x1

    aput-wide v9, p3, v15

    aput-wide v7, p3, v4

    add-int/lit8 v15, v4, 0x1

    aput-wide v5, p3, v15

    add-int/lit8 v15, v82, 0x2

    add-int/2addr v0, v15

    add-int/lit8 v15, v82, 0x2

    add-int/2addr v14, v15

    add-int v3, p4, v0

    add-int v4, p4, v14

    aget-wide v7, p3, v3

    add-int/lit8 v15, v3, 0x1

    move-wide/from16 v95, v5

    aget-wide v5, p3, v15

    neg-double v5, v5

    aget-wide v12, p3, v4

    add-int/lit8 v15, v4, 0x1

    move-wide/from16 v97, v9

    aget-wide v9, p3, v15

    neg-double v9, v9

    aput-wide v12, p3, v3

    add-int/lit8 v15, v3, 0x1

    aput-wide v9, p3, v15

    aput-wide v7, p3, v4

    add-int/lit8 v15, v4, 0x1

    aput-wide v5, p3, v15

    sub-int v15, v82, v22

    sub-int/2addr v0, v15

    const/4 v15, 0x2

    mul-int v16, v15, v22

    add-int/lit8 v16, v16, -0x2

    add-int v14, v14, v16

    add-int v3, p4, v0

    add-int v4, p4, v14

    add-int/lit8 v15, v3, -0x1

    add-int/lit8 v16, v3, -0x1

    move-wide/from16 v99, v5

    aget-wide v5, p3, v16

    neg-double v5, v5

    aput-wide v5, p3, v15

    aget-wide v5, p3, v3

    add-int/lit8 v7, v3, 0x1

    aget-wide v7, p3, v7

    neg-double v7, v7

    aget-wide v12, p3, v4

    add-int/lit8 v15, v4, 0x1

    move-wide/from16 v101, v9

    aget-wide v9, p3, v15

    neg-double v9, v9

    aput-wide v12, p3, v3

    add-int/lit8 v15, v3, 0x1

    aput-wide v9, p3, v15

    aput-wide v5, p3, v4

    add-int/lit8 v15, v4, 0x1

    aput-wide v7, p3, v15

    add-int/lit8 v15, v4, 0x3

    add-int/lit8 v16, v4, 0x3

    move/from16 v103, v3

    move/from16 v104, v4

    aget-wide v3, p3, v16

    neg-double v3, v3

    aput-wide v3, p3, v15

    add-int/lit8 v3, v83, 0x1

    move v5, v3

    move/from16 v8, v22

    move/from16 v3, v80

    move/from16 v4, v81

    move/from16 v6, v82

    const/4 v7, 0x4

    const/4 v10, 0x2

    goto/16 :goto_1

    :cond_2
    move/from16 v81, v4

    move/from16 v82, v6

    move/from16 v22, v8

    move/from16 v131, v3

    goto/16 :goto_5

    :cond_3
    move/from16 v80, v3

    move/from16 v81, v4

    move/from16 v82, v6

    move/from16 v22, v8

    const/4 v0, 0x0

    :goto_3
    move/from16 v3, v80

    if-ge v0, v3, :cond_5

    const/4 v4, 0x4

    mul-int v7, v4, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_4

    mul-int v6, v4, v5

    add-int v8, v3, v0

    aget v8, p2, v8

    add-int/2addr v6, v8

    add-int v8, v3, v5

    aget v8, p2, v8

    add-int/2addr v8, v7

    add-int v9, p4, v6

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v13, p3, v13

    neg-double v13, v13

    aget-wide v15, p3, v10

    add-int/lit8 v17, v10, 0x1

    move/from16 v105, v5

    aget-wide v4, p3, v17

    neg-double v4, v4

    aput-wide v15, p3, v9

    add-int/lit8 v17, v9, 0x1

    aput-wide v4, p3, v17

    aput-wide v11, p3, v10

    add-int/lit8 v17, v10, 0x1

    aput-wide v13, p3, v17

    add-int v6, v6, v22

    add-int v8, v8, v22

    add-int v9, p4, v6

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v17, v9, 0x1

    move-wide/from16 v106, v4

    aget-wide v4, p3, v17

    neg-double v4, v4

    aget-wide v13, p3, v10

    add-int/lit8 v15, v10, 0x1

    move/from16 v108, v0

    aget-wide v0, p3, v15

    neg-double v0, v0

    aput-wide v13, p3, v9

    add-int/lit8 v15, v9, 0x1

    aput-wide v0, p3, v15

    aput-wide v11, p3, v10

    add-int/lit8 v15, v10, 0x1

    aput-wide v4, p3, v15

    add-int v6, v6, v82

    const/4 v15, 0x2

    add-int/2addr v8, v15

    add-int v9, p4, v6

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v15, v9, 0x1

    move-wide/from16 v109, v0

    aget-wide v0, p3, v15

    neg-double v0, v0

    aget-wide v4, p3, v10

    add-int/lit8 v13, v10, 0x1

    aget-wide v13, p3, v13

    neg-double v13, v13

    aput-wide v4, p3, v9

    add-int/lit8 v15, v9, 0x1

    aput-wide v13, p3, v15

    aput-wide v11, p3, v10

    add-int/lit8 v15, v10, 0x1

    aput-wide v0, p3, v15

    sub-int v6, v6, v22

    sub-int v8, v8, v22

    add-int v9, p4, v6

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v15, v9, 0x1

    move-wide/from16 v111, v0

    aget-wide v0, p3, v15

    neg-double v0, v0

    aget-wide v4, p3, v10

    add-int/lit8 v15, v10, 0x1

    move-wide/from16 v113, v13

    aget-wide v13, p3, v15

    neg-double v13, v13

    aput-wide v4, p3, v9

    add-int/lit8 v15, v9, 0x1

    aput-wide v13, p3, v15

    aput-wide v11, p3, v10

    add-int/lit8 v15, v10, 0x1

    aput-wide v0, p3, v15

    const/4 v15, 0x2

    add-int/2addr v6, v15

    add-int v8, v8, v82

    add-int v9, p4, v6

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v16, v9, 0x1

    move-wide/from16 v115, v0

    aget-wide v0, p3, v16

    neg-double v0, v0

    aget-wide v4, p3, v10

    add-int/lit8 v16, v10, 0x1

    move-wide/from16 v117, v13

    aget-wide v13, p3, v16

    neg-double v13, v13

    aput-wide v4, p3, v9

    add-int/lit8 v16, v9, 0x1

    aput-wide v13, p3, v16

    aput-wide v11, p3, v10

    add-int/lit8 v16, v10, 0x1

    aput-wide v0, p3, v16

    add-int v6, v6, v22

    add-int v8, v8, v22

    add-int v9, p4, v6

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v16, v9, 0x1

    move-wide/from16 v119, v0

    aget-wide v0, p3, v16

    neg-double v0, v0

    aget-wide v4, p3, v10

    add-int/lit8 v16, v10, 0x1

    move-wide/from16 v121, v13

    aget-wide v13, p3, v16

    neg-double v13, v13

    aput-wide v4, p3, v9

    add-int/lit8 v16, v9, 0x1

    aput-wide v13, p3, v16

    aput-wide v11, p3, v10

    add-int/lit8 v16, v10, 0x1

    aput-wide v0, p3, v16

    sub-int v6, v6, v82

    add-int/lit8 v8, v8, -0x2

    add-int v9, p4, v6

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v16, v9, 0x1

    move-wide/from16 v123, v0

    aget-wide v0, p3, v16

    neg-double v0, v0

    aget-wide v4, p3, v10

    add-int/lit8 v16, v10, 0x1

    move-wide/from16 v125, v13

    aget-wide v13, p3, v16

    neg-double v13, v13

    aput-wide v4, p3, v9

    add-int/lit8 v16, v9, 0x1

    aput-wide v13, p3, v16

    aput-wide v11, p3, v10

    add-int/lit8 v16, v10, 0x1

    aput-wide v0, p3, v16

    sub-int v6, v6, v22

    sub-int v8, v8, v22

    add-int v9, p4, v6

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v16, v9, 0x1

    move-wide/from16 v127, v0

    aget-wide v0, p3, v16

    neg-double v0, v0

    aget-wide v4, p3, v10

    add-int/lit8 v16, v10, 0x1

    move-wide/from16 v129, v13

    aget-wide v13, p3, v16

    neg-double v13, v13

    aput-wide v4, p3, v9

    add-int/lit8 v16, v9, 0x1

    aput-wide v13, p3, v16

    aput-wide v11, p3, v10

    add-int/lit8 v16, v10, 0x1

    aput-wide v0, p3, v16

    add-int/lit8 v16, v105, 0x1

    move/from16 v5, v16

    move/from16 v0, v108

    const/4 v4, 0x4

    goto/16 :goto_4

    :cond_4
    move/from16 v108, v0

    const/4 v15, 0x2

    add-int v0, v3, v108

    aget v0, p2, v0

    add-int/2addr v0, v7

    add-int/lit8 v4, v0, 0x2

    add-int v0, v0, v82

    add-int v5, p4, v4

    add-int v6, p4, v0

    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v5, -0x1

    aget-wide v9, p3, v9

    neg-double v9, v9

    aput-wide v9, p3, v8

    aget-wide v8, p3, v5

    add-int/lit8 v10, v5, 0x1

    aget-wide v10, p3, v10

    neg-double v10, v10

    aget-wide v12, p3, v6

    add-int/lit8 v14, v6, 0x1

    move/from16 v131, v3

    aget-wide v2, p3, v14

    neg-double v2, v2

    aput-wide v12, p3, v5

    add-int/lit8 v14, v5, 0x1

    aput-wide v2, p3, v14

    aput-wide v8, p3, v6

    add-int/lit8 v14, v6, 0x1

    aput-wide v10, p3, v14

    add-int/lit8 v14, v6, 0x3

    add-int/lit8 v16, v6, 0x3

    move-wide/from16 v132, v2

    aget-wide v2, p3, v16

    neg-double v2, v2

    aput-wide v2, p3, v14

    add-int v4, v4, v22

    add-int v0, v0, v22

    add-int v3, p4, v4

    add-int v5, p4, v0

    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v14, v3, -0x1

    move/from16 v134, v0

    aget-wide v0, p3, v14

    neg-double v0, v0

    aput-wide v0, p3, v6

    aget-wide v0, p3, v3

    add-int/lit8 v6, v3, 0x1

    aget-wide v8, p3, v6

    neg-double v8, v8

    aget-wide v10, p3, v5

    add-int/lit8 v6, v5, 0x1

    aget-wide v12, p3, v6

    neg-double v12, v12

    aput-wide v10, p3, v3

    add-int/lit8 v6, v3, 0x1

    aput-wide v12, p3, v6

    aput-wide v0, p3, v5

    add-int/lit8 v6, v5, 0x1

    aput-wide v8, p3, v6

    add-int/lit8 v6, v5, 0x3

    add-int/lit8 v14, v5, 0x3

    move-wide/from16 v135, v0

    aget-wide v0, p3, v14

    neg-double v0, v0

    aput-wide v0, p3, v6

    add-int/lit8 v0, v108, 0x1

    move/from16 v80, v131

    goto/16 :goto_3

    :cond_5
    move/from16 v131, v3

    :goto_5
    return-void
.end method

.method private bluestein_complex([DII)V
    .locals 20

    move-object/from16 v8, p0

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v9, 0x2

    mul-int/2addr v0, v9

    new-array v10, v0, [D

    const/4 v7, 0x1

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v0, 0x1

    if-le v11, v0, :cond_7

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_7

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-lt v11, v1, :cond_0

    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    move v7, v0

    new-array v6, v7, [Ljava/util/concurrent/Future;

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v13, v0, v7

    const/4 v0, 0x0

    :goto_0
    move v5, v0

    if-ge v5, v7, :cond_2

    mul-int v14, v5, v13

    add-int/lit8 v0, v7, -0x1

    if-ne v5, v0, :cond_1

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_1
    add-int v0, v14, v13

    goto :goto_1

    :goto_2
    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;

    move-object v0, v3

    move-object v1, v8

    move/from16 v2, p3

    move-object v12, v3

    move v3, v14

    move/from16 v16, v5

    move/from16 v5, p2

    move-object v9, v6

    move-object v6, v10

    move/from16 v17, v11

    move v11, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v16

    add-int/lit8 v0, v16, 0x1

    move-object v6, v9

    move v7, v11

    move/from16 v11, v17

    const/4 v9, 0x2

    goto :goto_0

    :cond_2
    move-object v9, v6

    move/from16 v17, v11

    move v11, v7

    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v7, v0, v11

    const/4 v0, 0x0

    :goto_3
    move v6, v0

    if-ge v6, v11, :cond_4

    mul-int v12, v6, v7

    add-int/lit8 v0, v11, -0x1

    if-ne v6, v0, :cond_3

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    :goto_4
    move v4, v0

    goto :goto_5

    :cond_3
    add-int v0, v12, v7

    goto :goto_4

    :goto_5
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;

    move-object v0, v5

    move-object v1, v8

    move/from16 v2, p3

    move v3, v12

    move/from16 v18, v7

    move-object v7, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v0, v6, 0x1

    move/from16 v7, v18

    goto :goto_3

    :cond_4
    move/from16 v18, v7

    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v12, v0, v11

    const/4 v15, 0x0

    :goto_6
    move v7, v15

    if-ge v7, v11, :cond_6

    mul-int v13, v7, v12

    add-int/lit8 v0, v11, -0x1

    if-ne v7, v0, :cond_5

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_7
    move v4, v0

    goto :goto_8

    :cond_5
    add-int v0, v13, v12

    goto :goto_7

    :goto_8
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;

    move-object v0, v6

    move-object v1, v8

    move/from16 v2, p3

    move v3, v13

    move/from16 v5, p2

    move/from16 v19, v11

    move-object v11, v6

    move-object/from16 v6, p1

    move v14, v7

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v14

    add-int/lit8 v15, v14, 0x1

    move/from16 v11, v19

    goto :goto_6

    :cond_6
    move/from16 v19, v11

    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_f

    :cond_7
    move/from16 v17, v11

    if-lez p3, :cond_8

    const/4 v0, 0x0

    :goto_9
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v1, v9, 0x1

    add-int v2, p2, v9

    add-int v3, p2, v1

    aget-wide v4, p1, v2

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, p1, v3

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    sub-double/2addr v4, v11

    aput-wide v4, v10, v9

    aget-wide v4, p1, v2

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v1

    mul-double/2addr v4, v11

    aget-wide v11, p1, v3

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v6, v9

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, v10, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_a
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v1, v9, 0x1

    add-int v2, p2, v9

    add-int v3, p2, v1

    aget-wide v4, p1, v2

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, p1, v3

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, v10, v9

    aget-wide v4, p1, v2

    neg-double v4, v4

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v1

    mul-double/2addr v4, v11

    aget-wide v11, p1, v3

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v6, v9

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, v10, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    if-lez p3, :cond_a

    const/4 v0, 0x0

    :goto_b
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v1, v9, 0x1

    aget-wide v2, v10, v9

    neg-double v2, v2

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    aget-wide v4, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    add-double/2addr v2, v4

    aget-wide v4, v10, v9

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, v10, v9

    aput-wide v2, v10, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_c
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v1, v9, 0x1

    aget-wide v2, v10, v9

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    aget-wide v4, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    add-double/2addr v2, v4

    aget-wide v4, v10, v9

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    sub-double/2addr v4, v11

    aput-wide v4, v10, v9

    aput-wide v2, v10, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    if-lez p3, :cond_c

    const/4 v15, 0x0

    :goto_d
    move v0, v15

    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_d

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v1, v9, 0x1

    add-int v2, p2, v9

    add-int v3, p2, v1

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v9

    aget-wide v11, v10, v9

    mul-double/2addr v4, v11

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v1

    aget-wide v13, v10, v1

    mul-double/2addr v11, v13

    sub-double/2addr v4, v11

    aput-wide v4, p1, v2

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v1

    aget-wide v11, v10, v9

    mul-double/2addr v4, v11

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v9

    aget-wide v13, v10, v1

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, p1, v3

    add-int/lit8 v15, v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v15, 0x0

    :goto_e
    move v0, v15

    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_d

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v2, v9, 0x1

    add-int v3, p2, v9

    add-int v4, p2, v2

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v9

    aget-wide v11, v10, v9

    mul-double/2addr v5, v11

    iget-object v11, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v11, v2

    aget-wide v13, v10, v2

    mul-double/2addr v11, v13

    add-double/2addr v5, v11

    aput-wide v5, p1, v3

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v2

    neg-double v5, v5

    aget-wide v11, v10, v9

    mul-double/2addr v5, v11

    iget-object v11, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v11, v9

    aget-wide v13, v10, v2

    mul-double/2addr v11, v13

    add-double/2addr v5, v11

    aput-wide v5, p1, v4

    add-int/lit8 v15, v0, 0x1

    goto :goto_e

    :cond_d
    move/from16 v19, v7

    :goto_f
    return-void
.end method

.method private bluestein_real_forward([DI)V
    .locals 19

    move-object/from16 v7, p0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    new-array v9, v0, [D

    const/4 v10, 0x1

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v13, 0x1

    if-le v11, v13, :cond_5

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-lt v11, v1, :cond_0

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    move v10, v0

    new-array v6, v10, [Ljava/util/concurrent/Future;

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v14, v0, v10

    const/4 v0, 0x0

    :goto_0
    move v5, v0

    if-ge v5, v10, :cond_2

    mul-int v15, v5, v14

    add-int/lit8 v0, v10, -0x1

    if-ne v5, v0, :cond_1

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    add-int v0, v15, v14

    goto :goto_1

    :goto_2
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;

    move-object v0, v4

    move-object v1, v7

    move v2, v15

    move-object v13, v4

    move/from16 v4, p2

    move/from16 v17, v5

    move-object v5, v9

    move-object v12, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V

    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v17

    add-int/lit8 v0, v17, 0x1

    move-object v6, v12

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    move-object v12, v6

    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v10

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_4

    mul-int v2, v1, v0

    add-int/lit8 v3, v10, -0x1

    if-ne v1, v3, :cond_3

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_4

    :cond_3
    add-int v3, v2, v0

    :goto_4
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$10;

    invoke-direct {v4, v7, v2, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$10;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_6

    mul-int v1, v8, v0

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget-wide v4, p1, v3

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    mul-double/2addr v4, v12

    aput-wide v4, v9, v1

    aget-wide v4, p1, v3

    neg-double v4, v4

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v2

    mul-double/2addr v4, v12

    aput-wide v4, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    const/4 v0, 0x0

    :goto_6
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_7

    mul-int v1, v8, v0

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v9, v1

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v5, v5, v2

    mul-double/2addr v3, v5

    aget-wide v5, v9, v2

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    aget-wide v5, v9, v1

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    aget-wide v12, v9, v2

    iget-object v8, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v14, v8, v2

    mul-double/2addr v12, v14

    sub-double/2addr v5, v12

    aput-wide v5, v9, v1

    aput-wide v3, v9, v2

    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x2

    goto :goto_6

    :cond_7
    :goto_7
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move v1, v2

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_8

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    aget-wide v0, v9, v1

    mul-double/2addr v2, v0

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v1, v1, v2

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v9, v3

    mul-double/2addr v1, v3

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget-wide v3, v3, v4

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v6, v5

    aget-wide v5, v9, v6

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/16 v16, 0x1

    :goto_8
    move/from16 v0, v16

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_a

    mul-int v8, v2, v0

    add-int/lit8 v1, v8, 0x1

    add-int v2, p2, v8

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v8

    aget-wide v5, v9, v8

    mul-double/2addr v3, v5

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    add-int v2, p2, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v1

    neg-double v3, v3

    aget-wide v5, v9, v8

    mul-double/2addr v3, v5

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v8

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    add-int/lit8 v16, v0, 0x1

    goto :goto_8

    :cond_8
    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    aget-wide v0, v9, v1

    mul-double/2addr v2, v0

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v1, v1, v2

    neg-double v1, v1

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-wide v5, v9, v3

    mul-double/2addr v1, v5

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v5, v4

    aget-wide v3, v3, v5

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v5, v9, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    :goto_9
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_9

    mul-int v8, v2, v0

    add-int/lit8 v1, v8, 0x1

    add-int v3, p2, v8

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v8

    aget-wide v12, v9, v8

    mul-double/2addr v4, v12

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    aget-wide v14, v9, v1

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    aput-wide v4, p1, v3

    add-int v3, p2, v1

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v1

    neg-double v4, v4

    aget-wide v12, v9, v8

    mul-double/2addr v4, v12

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v8

    aget-wide v14, v9, v1

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    aput-wide v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v0, p2, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v3, v1

    aget-wide v2, v2, v3

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v4, v1

    aget-wide v4, v9, v4

    mul-double/2addr v2, v4

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v4, v1, v4

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    :cond_a
    return-void
.end method

.method private bluestein_real_full([DII)V
    .locals 20

    move-object/from16 v8, p0

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v9, 0x2

    mul-int/2addr v0, v9

    new-array v10, v0, [D

    const/4 v7, 0x1

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v0, 0x1

    if-le v11, v0, :cond_7

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_7

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-lt v11, v1, :cond_0

    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    move v7, v0

    new-array v6, v7, [Ljava/util/concurrent/Future;

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v13, v0, v7

    const/4 v0, 0x0

    :goto_0
    move v5, v0

    if-ge v5, v7, :cond_2

    mul-int v14, v5, v13

    add-int/lit8 v0, v7, -0x1

    if-ne v5, v0, :cond_1

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_1
    add-int v0, v14, v13

    goto :goto_1

    :goto_2
    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;

    move-object v0, v3

    move-object v1, v8

    move/from16 v2, p3

    move-object v12, v3

    move v3, v14

    move/from16 v16, v5

    move/from16 v5, p2

    move-object v9, v6

    move-object v6, v10

    move/from16 v17, v11

    move v11, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v16

    add-int/lit8 v0, v16, 0x1

    move-object v6, v9

    move v7, v11

    move/from16 v11, v17

    const/4 v9, 0x2

    goto :goto_0

    :cond_2
    move-object v9, v6

    move/from16 v17, v11

    move v11, v7

    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v7, v0, v11

    const/4 v0, 0x0

    :goto_3
    move v6, v0

    if-ge v6, v11, :cond_4

    mul-int v12, v6, v7

    add-int/lit8 v0, v11, -0x1

    if-ne v6, v0, :cond_3

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    :goto_4
    move v4, v0

    goto :goto_5

    :cond_3
    add-int v0, v12, v7

    goto :goto_4

    :goto_5
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;

    move-object v0, v5

    move-object v1, v8

    move/from16 v2, p3

    move v3, v12

    move/from16 v18, v7

    move-object v7, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v0, v6, 0x1

    move/from16 v7, v18

    goto :goto_3

    :cond_4
    move/from16 v18, v7

    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v12, v0, v11

    const/4 v15, 0x0

    :goto_6
    move v7, v15

    if-ge v7, v11, :cond_6

    mul-int v13, v7, v12

    add-int/lit8 v0, v11, -0x1

    if-ne v7, v0, :cond_5

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_7
    move v4, v0

    goto :goto_8

    :cond_5
    add-int v0, v13, v12

    goto :goto_7

    :goto_8
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;

    move-object v0, v6

    move-object v1, v8

    move/from16 v2, p3

    move v3, v13

    move-object/from16 v5, p1

    move/from16 v19, v11

    move-object v11, v6

    move/from16 v6, p2

    move v14, v7

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DI[D)V

    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v14

    add-int/lit8 v15, v14, 0x1

    move/from16 v11, v19

    goto :goto_6

    :cond_6
    move/from16 v19, v11

    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_f

    :cond_7
    move/from16 v17, v11

    if-lez p3, :cond_8

    const/4 v0, 0x0

    :goto_9
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v1, v9, 0x1

    add-int v2, p2, v0

    aget-wide v3, p1, v2

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v9

    mul-double/2addr v3, v5

    aput-wide v3, v10, v9

    aget-wide v3, p1, v2

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    mul-double/2addr v3, v5

    aput-wide v3, v10, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_a
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v1, v9, 0x1

    add-int v2, p2, v0

    aget-wide v3, p1, v2

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v9

    mul-double/2addr v3, v5

    aput-wide v3, v10, v9

    aget-wide v3, p1, v2

    neg-double v3, v3

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    mul-double/2addr v3, v5

    aput-wide v3, v10, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    if-lez p3, :cond_a

    const/4 v0, 0x0

    :goto_b
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v1, v9, 0x1

    aget-wide v2, v10, v9

    neg-double v2, v2

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    aget-wide v4, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    add-double/2addr v2, v4

    aget-wide v4, v10, v9

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, v10, v9

    aput-wide v2, v10, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_c
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v1, v9, 0x1

    aget-wide v2, v10, v9

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    aget-wide v4, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    add-double/2addr v2, v4

    aget-wide v4, v10, v9

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v6, v9

    mul-double/2addr v4, v11

    aget-wide v11, v10, v1

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v6, v1

    mul-double/2addr v11, v13

    sub-double/2addr v4, v11

    aput-wide v4, v10, v9

    aput-wide v2, v10, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v8

    move v1, v2

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    if-lez p3, :cond_c

    const/4 v15, 0x0

    :goto_d
    move v0, v15

    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_d

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v1, v9, 0x1

    add-int v2, p2, v9

    iget-object v3, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v9

    aget-wide v5, v10, v9

    mul-double/2addr v3, v5

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    aget-wide v11, v10, v1

    mul-double/2addr v5, v11

    sub-double/2addr v3, v5

    aput-wide v3, p1, v2

    add-int v2, p2, v1

    iget-object v3, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v1

    aget-wide v5, v10, v9

    mul-double/2addr v3, v5

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v9

    aget-wide v11, v10, v1

    mul-double/2addr v5, v11

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    add-int/lit8 v15, v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v15, 0x0

    :goto_e
    move v0, v15

    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_d

    const/4 v1, 0x2

    mul-int v9, v1, v0

    add-int/lit8 v2, v9, 0x1

    add-int v3, p2, v9

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v9

    aget-wide v11, v10, v9

    mul-double/2addr v4, v11

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v2

    aget-wide v13, v10, v2

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, p1, v3

    add-int v3, p2, v2

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v2

    neg-double v4, v4

    aget-wide v11, v10, v9

    mul-double/2addr v4, v11

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v11, v6, v9

    aget-wide v13, v10, v2

    mul-double/2addr v11, v13

    add-double/2addr v4, v11

    aput-wide v4, p1, v3

    add-int/lit8 v15, v0, 0x1

    goto :goto_e

    :cond_d
    move/from16 v19, v7

    :goto_f
    return-void
.end method

.method private bluestein_real_inverse([DI)V
    .locals 19

    move-object/from16 v7, p0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    new-array v9, v0, [D

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/2addr v0, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_1

    aget-wide v0, p1, p2

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v10

    mul-double/2addr v0, v2

    aput-wide v0, v9, v10

    aget-wide v0, p1, p2

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v11

    mul-double/2addr v0, v2

    aput-wide v0, v9, v11

    move v0, v11

    :goto_0
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v8

    if-ge v0, v1, :cond_0

    mul-int v1, v8, v0

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    add-int v4, p2, v2

    aget-wide v5, p1, v3

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v15, v10, v2

    mul-double/2addr v12, v15

    sub-double/2addr v5, v12

    aput-wide v5, v9, v1

    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v2

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v15, v10, v1

    mul-double/2addr v12, v15

    add-double/2addr v5, v12

    aput-wide v5, v9, v2

    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    aput-wide v1, v9, v0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v11

    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v4, v11

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    aput-wide v1, v9, v0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v8

    add-int/2addr v0, v11

    :goto_1
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_3

    mul-int v1, v8, v0

    add-int/lit8 v2, v1, 0x1

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v3, v8

    add-int v3, p2, v3

    sub-int/2addr v3, v1

    add-int/lit8 v4, v3, 0x1

    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v1

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v15, v10, v2

    mul-double/2addr v12, v15

    add-double/2addr v5, v12

    aput-wide v5, v9, v1

    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v2

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v15, v10, v1

    mul-double/2addr v12, v15

    sub-double/2addr v5, v12

    aput-wide v5, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget-wide v0, p1, p2

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v10, 0x0

    aget-wide v2, v2, v10

    mul-double/2addr v0, v2

    aput-wide v0, v9, v10

    aget-wide v0, p1, p2

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v11

    mul-double/2addr v0, v2

    aput-wide v0, v9, v11

    move v0, v11

    :goto_2
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v1, v11

    div-int/2addr v1, v8

    if-ge v0, v1, :cond_2

    mul-int v1, v8, v0

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    add-int v4, p2, v2

    aget-wide v5, p1, v3

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v10, v2

    mul-double/2addr v12, v14

    sub-double/2addr v5, v12

    aput-wide v5, v9, v1

    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v2

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v10, v1

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    aput-wide v5, v9, v2

    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v11

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v1, p2, v1

    sub-int/2addr v1, v11

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v4, v11

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v3, p1, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    aput-wide v1, v9, v0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v1, p2, v1

    sub-int/2addr v1, v11

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v3, p1, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v6, v11

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aput-wide v1, v9, v0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v11

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v1, p2, v1

    sub-int/2addr v1, v11

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v4, v11

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v3, p1, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v6, v8

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aput-wide v1, v9, v0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v8

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v1, p2, v1

    sub-int/2addr v1, v11

    aget-wide v1, p1, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v4, v8

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v3, p1, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v6, v11

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    aput-wide v1, v9, v0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v11

    div-int/2addr v0, v8

    add-int/2addr v0, v8

    :goto_3
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_3

    mul-int v1, v8, v0

    add-int/lit8 v2, v1, 0x1

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v3, v8

    add-int v3, p2, v3

    sub-int/2addr v3, v1

    add-int/lit8 v4, v3, 0x1

    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v1

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v10, v2

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    aput-wide v5, v9, v1

    aget-wide v5, p1, v3

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v10, v2

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    iget-object v10, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v10, v1

    mul-double/2addr v12, v14

    sub-double/2addr v5, v12

    aput-wide v5, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    const/4 v10, 0x1

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v12

    if-le v12, v11, :cond_9

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_9

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-lt v12, v1, :cond_4

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v1, v2, :cond_4

    const/4 v0, 0x4

    :cond_4
    move v10, v0

    new-array v11, v10, [Ljava/util/concurrent/Future;

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v13, v0, v10

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v10, :cond_6

    mul-int v1, v0, v13

    add-int/lit8 v2, v10, -0x1

    if-ne v0, v2, :cond_5

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_5

    :cond_5
    add-int v2, v1, v13

    :goto_5
    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$11;

    invoke-direct {v3, v7, v1, v2, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$11;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v8, v0, v10

    const/16 v17, 0x0

    :goto_6
    move/from16 v13, v17

    if-ge v13, v10, :cond_8

    mul-int v14, v13, v8

    add-int/lit8 v0, v10, -0x1

    if-ne v13, v0, :cond_7

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_7
    move v3, v0

    goto :goto_8

    :cond_7
    add-int v0, v14, v8

    goto :goto_7

    :goto_8
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;

    move-object v0, v6

    move-object v1, v7

    move v2, v14

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v18, v8

    move-object v8, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DI[D)V

    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v13

    add-int/lit8 v17, v13, 0x1

    move/from16 v8, v18

    goto :goto_6

    :cond_8
    move/from16 v18, v8

    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    :goto_9
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_a

    mul-int v1, v8, v0

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v9, v1

    neg-double v3, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v5, v5, v2

    mul-double/2addr v3, v5

    aget-wide v5, v9, v2

    iget-object v11, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v11, v1

    mul-double/2addr v5, v13

    add-double/2addr v3, v5

    aget-wide v5, v9, v1

    iget-object v11, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v13, v11, v1

    mul-double/2addr v5, v13

    aget-wide v13, v9, v2

    iget-object v11, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v15, v11, v2

    mul-double/2addr v13, v15

    add-double/2addr v5, v13

    aput-wide v5, v9, v1

    aput-wide v3, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    const/16 v17, 0x0

    :goto_a
    move/from16 v0, v17

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_b

    mul-int v1, v8, v0

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v1

    aget-wide v13, v9, v1

    mul-double/2addr v4, v13

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v6, v2

    aget-wide v15, v9, v2

    mul-double/2addr v13, v15

    sub-double/2addr v4, v13

    aput-wide v4, p1, v3

    add-int/lit8 v17, v0, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    return-void
.end method

.method private bluestein_real_inverse2([DI)V
    .locals 19

    move-object/from16 v7, p0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    new-array v9, v0, [D

    const/4 v10, 0x1

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v13, 0x1

    if-le v11, v13, :cond_5

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-lt v11, v1, :cond_0

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    move v10, v0

    new-array v6, v10, [Ljava/util/concurrent/Future;

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v14, v0, v10

    const/4 v0, 0x0

    :goto_0
    move v5, v0

    if-ge v5, v10, :cond_2

    mul-int v15, v5, v14

    add-int/lit8 v0, v10, -0x1

    if-ne v5, v0, :cond_1

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    add-int v0, v15, v14

    goto :goto_1

    :goto_2
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;

    move-object v0, v4

    move-object v1, v7

    move v2, v15

    move-object v13, v4

    move/from16 v4, p2

    move/from16 v17, v5

    move-object v5, v9

    move-object v12, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V

    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v17

    add-int/lit8 v0, v17, 0x1

    move-object v6, v12

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    move-object v12, v6

    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v10

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_4

    mul-int v2, v1, v0

    add-int/lit8 v3, v10, -0x1

    if-ne v1, v3, :cond_3

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_4

    :cond_3
    add-int v3, v2, v0

    :goto_4
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$14;

    invoke-direct {v4, v7, v2, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$14;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_6

    mul-int v1, v8, v0

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget-wide v4, p1, v3

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    mul-double/2addr v4, v12

    aput-wide v4, v9, v1

    aget-wide v4, p1, v3

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v2

    mul-double/2addr v4, v12

    aput-wide v4, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v8, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    const/4 v0, 0x0

    :goto_6
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_7

    mul-int v1, v8, v0

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v9, v1

    neg-double v3, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v5, v5, v2

    mul-double/2addr v3, v5

    aget-wide v5, v9, v2

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    aget-wide v5, v9, v1

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v12, v1

    mul-double/2addr v5, v12

    aget-wide v12, v9, v2

    iget-object v8, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v14, v8, v2

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    aput-wide v5, v9, v1

    aput-wide v3, v9, v2

    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x2

    goto :goto_6

    :cond_7
    :goto_7
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int v2, v1, v0

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move v1, v2

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_8

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    aget-wide v0, v9, v1

    mul-double/2addr v2, v0

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    sub-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v1, v1, v2

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v9, v3

    mul-double/2addr v1, v3

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget-wide v3, v3, v4

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v6, v5

    aget-wide v5, v9, v6

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/16 v16, 0x1

    :goto_8
    move/from16 v0, v16

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_a

    mul-int v8, v2, v0

    add-int/lit8 v1, v8, 0x1

    add-int v2, p2, v8

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v8

    aget-wide v5, v9, v8

    mul-double/2addr v3, v5

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    sub-double/2addr v3, v5

    aput-wide v3, p1, v2

    add-int v2, p2, v1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v3, v1

    aget-wide v5, v9, v8

    mul-double/2addr v3, v5

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v8

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    add-int/lit8 v16, v0, 0x1

    goto :goto_8

    :cond_8
    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    aget-wide v0, v9, v1

    mul-double/2addr v2, v0

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    sub-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v2, v2, v3

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v4, v1

    aget-wide v4, v9, v4

    mul-double/2addr v2, v4

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v5, v1

    aget-wide v4, v4, v5

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    :goto_9
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_9

    mul-int v8, v2, v0

    add-int/lit8 v1, v8, 0x1

    add-int v3, p2, v8

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v8

    aget-wide v12, v9, v8

    mul-double/2addr v4, v12

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    aget-wide v14, v9, v1

    mul-double/2addr v12, v14

    sub-double/2addr v4, v12

    aput-wide v4, p1, v3

    add-int v3, p2, v1

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v4, v1

    aget-wide v12, v9, v8

    mul-double/2addr v4, v12

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v8

    aget-wide v14, v9, v1

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    aput-wide v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v0, p2, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v3, v1

    aget-wide v2, v2, v3

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v4, v1

    aget-wide v4, v9, v4

    mul-double/2addr v2, v4

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v4, v1, v4

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v12, v9, v1

    mul-double/2addr v4, v12

    sub-double/2addr v2, v4

    aput-wide v2, p1, v0

    :cond_a
    return-void
.end method

.method private bluesteini()V
    .locals 16

    move-object/from16 v7, p0

    const/4 v0, 0x0

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double v8, v3, v1

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v1, v5

    move v10, v0

    move v0, v5

    :goto_0
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v6, 0x2

    if-ge v0, v1, :cond_1

    mul-int v1, v6, v0

    sub-int/2addr v1, v5

    add-int/2addr v10, v1

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v1, v6

    if-lt v10, v1, :cond_0

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v1, v6

    sub-int/2addr v10, v1

    :cond_0
    int-to-double v11, v10

    mul-double/2addr v11, v8

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    mul-int v13, v6, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    aput-wide v14, v1, v13

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    mul-int/2addr v6, v0

    add-int/2addr v6, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    aput-wide v13, v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    int-to-double v0, v0

    div-double v11, v2, v0

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v1, v1, v4

    mul-double/2addr v1, v11

    aput-wide v1, v0, v4

    iget-object v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v1, v1, v5

    mul-double/2addr v1, v11

    aput-wide v1, v0, v5

    move v0, v6

    :goto_1
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v1, v6

    if-ge v0, v1, :cond_2

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v2, v0

    mul-double/2addr v2, v11

    aput-wide v2, v1, v0

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    add-int/lit8 v2, v0, 0x1

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v4, v0, 0x1

    aget-wide v3, v3, v4

    mul-double/2addr v3, v11

    aput-wide v3, v1, v2

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/2addr v2, v6

    sub-int/2addr v2, v0

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v3, v3, v0

    aput-wide v3, v1, v2

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/2addr v2, v6

    sub-int/2addr v2, v0

    add-int/2addr v2, v5

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    add-int/lit8 v4, v0, 0x1

    aget-wide v3, v3, v4

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int v1, v6, v0

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    return-void
.end method

.method private cftb040([DI)V
    .locals 19

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x4

    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x4

    aget-wide v6, p1, v6

    sub-double/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x5

    aget-wide v8, p1, v8

    sub-double/2addr v6, v8

    add-int/lit8 v8, p2, 0x2

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x6

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    add-int/lit8 v10, p2, 0x3

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x7

    aget-wide v12, p1, v12

    add-double/2addr v10, v12

    add-int/lit8 v12, p2, 0x2

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x6

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    add-int/lit8 v14, p2, 0x3

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x7

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    add-double v16, v0, v8

    aput-wide v16, p1, p2

    add-int/lit8 v16, p2, 0x1

    add-double v17, v2, v10

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x2

    add-double v17, v4, v14

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x3

    sub-double v17, v6, v12

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x4

    sub-double v17, v0, v8

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x5

    sub-double v17, v2, v10

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x6

    sub-double v17, v4, v14

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x7

    add-double v17, v6, v12

    aput-wide v17, p1, v16

    return-void
.end method

.method private cftb1st(I[DI[DI)V
    .locals 94

    shr-int/lit8 v3, p1, 0x3

    const/4 v4, 0x2

    mul-int v5, v4, v3

    move v6, v5

    add-int v7, v6, v5

    add-int v8, v7, v5

    add-int v9, p3, v6

    add-int v10, p3, v7

    add-int v11, p3, v8

    aget-wide v12, p2, p3

    aget-wide v14, p2, v10

    add-double/2addr v12, v14

    add-int/lit8 v14, p3, 0x1

    move/from16 v17, v5

    aget-wide v4, p2, v14

    neg-double v4, v4

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p2, v14

    sub-double/2addr v4, v14

    aget-wide v14, p2, p3

    aget-wide v18, p2, v10

    sub-double v14, v14, v18

    add-int/lit8 v18, p3, 0x1

    move/from16 v20, v6

    move/from16 v21, v7

    aget-wide v6, p2, v18

    neg-double v6, v6

    add-int/lit8 v18, v10, 0x1

    aget-wide v18, p2, v18

    add-double v6, v6, v18

    aget-wide v18, p2, v9

    aget-wide v22, p2, v11

    add-double v18, v18, v22

    add-int/lit8 v22, v9, 0x1

    aget-wide v22, p2, v22

    add-int/lit8 v24, v11, 0x1

    aget-wide v24, p2, v24

    add-double v22, v22, v24

    aget-wide v24, p2, v9

    aget-wide v26, p2, v11

    sub-double v24, v24, v26

    add-int/lit8 v26, v9, 0x1

    aget-wide v26, p2, v26

    add-int/lit8 v28, v11, 0x1

    aget-wide v28, p2, v28

    sub-double v26, v26, v28

    add-double v28, v12, v18

    aput-wide v28, p2, p3

    add-int/lit8 v28, p3, 0x1

    sub-double v29, v4, v22

    aput-wide v29, p2, v28

    sub-double v28, v12, v18

    aput-wide v28, p2, v9

    add-int/lit8 v28, v9, 0x1

    add-double v29, v4, v22

    aput-wide v29, p2, v28

    add-double v28, v14, v26

    aput-wide v28, p2, v10

    add-int/lit8 v28, v10, 0x1

    add-double v29, v6, v24

    aput-wide v29, p2, v28

    sub-double v28, v14, v26

    aput-wide v28, p2, v11

    add-int/lit8 v28, v11, 0x1

    sub-double v29, v6, v24

    aput-wide v29, p2, v28

    add-int/lit8 v28, p5, 0x1

    move-wide/from16 v31, v4

    aget-wide v4, p4, v28

    add-int/lit8 v28, p5, 0x2

    aget-wide v28, p4, v28

    add-int/lit8 v30, p5, 0x3

    aget-wide v33, p4, v30

    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    const-wide/16 v37, 0x0

    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    const-wide/16 v41, 0x0

    const/16 v30, 0x0

    const/16 v16, 0x2

    :goto_0
    move/from16 v43, v16

    add-int/lit8 v2, v3, -0x2

    move-wide/from16 v44, v6

    move/from16 v6, v43

    if-ge v6, v2, :cond_0

    add-int/lit8 v30, v30, 0x4

    add-int v2, p5, v30

    aget-wide v46, p4, v2

    add-double v46, v35, v46

    mul-double v46, v46, v28

    add-int/lit8 v7, v2, 0x1

    aget-wide v48, p4, v7

    add-double v48, v37, v48

    mul-double v48, v48, v28

    add-int/lit8 v7, v2, 0x2

    aget-wide v50, p4, v7

    add-double v50, v39, v50

    mul-double v50, v50, v33

    add-int/lit8 v7, v2, 0x3

    aget-wide v52, p4, v7

    add-double v52, v41, v52

    mul-double v52, v52, v33

    aget-wide v35, p4, v2

    add-int/lit8 v7, v2, 0x1

    aget-wide v37, p4, v7

    add-int/lit8 v7, v2, 0x2

    aget-wide v39, p4, v7

    add-int/lit8 v7, v2, 0x3

    aget-wide v41, p4, v7

    add-int v43, v6, v17

    add-int v7, v43, v17

    add-int v8, v7, v17

    add-int v9, p3, v43

    add-int v10, p3, v7

    add-int v11, p3, v8

    add-int v16, p3, v6

    aget-wide v20, p2, v16

    aget-wide v54, p2, v10

    add-double v20, v20, v54

    add-int/lit8 v12, v16, 0x1

    aget-wide v12, p2, v12

    neg-double v12, v12

    add-int/lit8 v54, v10, 0x1

    aget-wide v54, p2, v54

    sub-double v12, v12, v54

    aget-wide v31, p2, v16

    add-int v54, p3, v7

    aget-wide v54, p2, v54

    sub-double v31, v31, v54

    add-int/lit8 v14, v16, 0x1

    aget-wide v0, p2, v14

    neg-double v0, v0

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p2, v14

    add-double/2addr v0, v14

    add-int/lit8 v14, v16, 0x2

    aget-wide v14, p2, v14

    add-int/lit8 v44, v10, 0x2

    aget-wide v44, p2, v44

    add-double v14, v14, v44

    add-int/lit8 v44, v16, 0x3

    move/from16 v56, v7

    move/from16 v57, v8

    aget-wide v7, p2, v44

    neg-double v7, v7

    add-int/lit8 v44, v10, 0x3

    aget-wide v44, p2, v44

    sub-double v7, v7, v44

    add-int/lit8 v44, v16, 0x2

    aget-wide v44, p2, v44

    add-int/lit8 v54, v10, 0x2

    aget-wide v54, p2, v54

    sub-double v44, v44, v54

    add-int/lit8 v54, v16, 0x3

    move/from16 v59, v2

    move/from16 v58, v3

    aget-wide v2, p2, v54

    neg-double v2, v2

    add-int/lit8 v54, v10, 0x3

    aget-wide v54, p2, v54

    add-double v2, v2, v54

    aget-wide v54, p2, v9

    aget-wide v60, p2, v11

    add-double v54, v54, v60

    add-int/lit8 v18, v9, 0x1

    aget-wide v18, p2, v18

    add-int/lit8 v60, v11, 0x1

    aget-wide v60, p2, v60

    add-double v18, v18, v60

    aget-wide v22, p2, v9

    aget-wide v60, p2, v11

    sub-double v22, v22, v60

    add-int/lit8 v24, v9, 0x1

    aget-wide v24, p2, v24

    add-int/lit8 v60, v11, 0x1

    aget-wide v60, p2, v60

    sub-double v24, v24, v60

    add-int/lit8 v26, v9, 0x2

    aget-wide v26, p2, v26

    add-int/lit8 v60, v11, 0x2

    aget-wide v60, p2, v60

    add-double v26, v26, v60

    add-int/lit8 v60, v9, 0x3

    aget-wide v60, p2, v60

    add-int/lit8 v62, v11, 0x3

    aget-wide v62, p2, v62

    add-double v60, v60, v62

    add-int/lit8 v62, v9, 0x2

    aget-wide v62, p2, v62

    add-int/lit8 v64, v11, 0x2

    aget-wide v64, p2, v64

    sub-double v62, v62, v64

    add-int/lit8 v64, v9, 0x3

    aget-wide v64, p2, v64

    add-int/lit8 v66, v11, 0x3

    aget-wide v66, p2, v66

    sub-double v64, v64, v66

    add-double v66, v20, v54

    aput-wide v66, p2, v16

    add-int/lit8 v66, v16, 0x1

    sub-double v67, v12, v18

    aput-wide v67, p2, v66

    add-int/lit8 v66, v16, 0x2

    add-double v67, v14, v26

    aput-wide v67, p2, v66

    add-int/lit8 v66, v16, 0x3

    sub-double v67, v7, v60

    aput-wide v67, p2, v66

    sub-double v66, v20, v54

    aput-wide v66, p2, v9

    add-int/lit8 v66, v9, 0x1

    add-double v67, v12, v18

    aput-wide v67, p2, v66

    add-int/lit8 v66, v9, 0x2

    sub-double v67, v14, v26

    aput-wide v67, p2, v66

    add-int/lit8 v66, v9, 0x3

    add-double v67, v7, v60

    aput-wide v67, p2, v66

    add-double v20, v31, v24

    add-double v12, v0, v22

    mul-double v66, v46, v20

    mul-double v68, v48, v12

    sub-double v66, v66, v68

    aput-wide v66, p2, v10

    add-int/lit8 v66, v10, 0x1

    mul-double v67, v46, v12

    mul-double v69, v48, v20

    add-double v67, v67, v69

    aput-wide v67, p2, v66

    add-double v20, v44, v64

    add-double v12, v2, v62

    add-int/lit8 v66, v10, 0x2

    mul-double v67, v35, v20

    mul-double v69, v37, v12

    sub-double v67, v67, v69

    aput-wide v67, p2, v66

    add-int/lit8 v66, v10, 0x3

    mul-double v67, v35, v12

    mul-double v69, v37, v20

    add-double v67, v67, v69

    aput-wide v67, p2, v66

    sub-double v20, v31, v24

    sub-double v12, v0, v22

    mul-double v66, v50, v20

    mul-double v68, v52, v12

    add-double v66, v66, v68

    aput-wide v66, p2, v11

    add-int/lit8 v66, v11, 0x1

    mul-double v67, v50, v12

    mul-double v69, v52, v20

    sub-double v67, v67, v69

    aput-wide v67, p2, v66

    sub-double v20, v44, v64

    sub-double v12, v2, v62

    add-int/lit8 v66, v11, 0x2

    mul-double v67, v39, v20

    mul-double v69, v41, v12

    add-double v67, v67, v69

    aput-wide v67, p2, v66

    add-int/lit8 v66, v11, 0x3

    mul-double v67, v39, v12

    mul-double v69, v41, v20

    sub-double v67, v67, v69

    aput-wide v67, p2, v66

    sub-int v66, v17, v6

    add-int v43, v66, v17

    add-int v56, v43, v17

    add-int v57, v56, v17

    add-int v67, p3, v66

    add-int v9, p3, v43

    add-int v10, p3, v56

    add-int v11, p3, v57

    aget-wide v68, p2, v67

    aget-wide v70, p2, v10

    add-double v68, v68, v70

    add-int/lit8 v20, v67, 0x1

    move-wide/from16 v72, v0

    aget-wide v0, p2, v20

    neg-double v0, v0

    add-int/lit8 v20, v10, 0x1

    aget-wide v20, p2, v20

    sub-double v0, v0, v20

    aget-wide v12, p2, v67

    aget-wide v20, p2, v10

    sub-double v12, v12, v20

    add-int/lit8 v20, v67, 0x1

    move-wide/from16 v74, v2

    aget-wide v2, p2, v20

    neg-double v2, v2

    add-int/lit8 v20, v10, 0x1

    aget-wide v20, p2, v20

    add-double v2, v2, v20

    add-int/lit8 v20, v67, -0x2

    aget-wide v20, p2, v20

    add-int/lit8 v31, v10, -0x2

    aget-wide v31, p2, v31

    add-double v20, v20, v31

    add-int/lit8 v14, v67, -0x1

    move-wide/from16 v76, v7

    aget-wide v7, p2, v14

    neg-double v7, v7

    add-int/lit8 v14, v10, -0x1

    aget-wide v14, p2, v14

    sub-double/2addr v7, v14

    add-int/lit8 v14, v67, -0x2

    aget-wide v14, p2, v14

    add-int/lit8 v31, v10, -0x2

    aget-wide v31, p2, v31

    sub-double v14, v14, v31

    add-int/lit8 v31, v67, -0x1

    move-wide/from16 v78, v4

    aget-wide v4, p2, v31

    neg-double v4, v4

    add-int/lit8 v31, v10, -0x1

    aget-wide v31, p2, v31

    add-double v4, v4, v31

    aget-wide v31, p2, v9

    aget-wide v44, p2, v11

    add-double v31, v31, v44

    add-int/lit8 v44, v9, 0x1

    aget-wide v44, p2, v44

    add-int/lit8 v54, v11, 0x1

    aget-wide v54, p2, v54

    add-double v18, v44, v54

    aget-wide v44, p2, v9

    aget-wide v54, p2, v11

    sub-double v22, v44, v54

    add-int/lit8 v44, v9, 0x1

    aget-wide v44, p2, v44

    add-int/lit8 v54, v11, 0x1

    aget-wide v54, p2, v54

    sub-double v24, v44, v54

    add-int/lit8 v44, v9, -0x2

    aget-wide v44, p2, v44

    add-int/lit8 v54, v11, -0x2

    aget-wide v54, p2, v54

    add-double v44, v44, v54

    add-int/lit8 v26, v9, -0x1

    aget-wide v26, p2, v26

    add-int/lit8 v54, v11, -0x1

    aget-wide v54, p2, v54

    add-double v26, v26, v54

    add-int/lit8 v54, v9, -0x2

    aget-wide v54, p2, v54

    add-int/lit8 v60, v11, -0x2

    aget-wide v60, p2, v60

    sub-double v54, v54, v60

    add-int/lit8 v60, v9, -0x1

    aget-wide v60, p2, v60

    add-int/lit8 v62, v11, -0x1

    aget-wide v62, p2, v62

    sub-double v60, v60, v62

    add-double v62, v68, v31

    aput-wide v62, p2, v67

    add-int/lit8 v62, v67, 0x1

    sub-double v63, v0, v18

    aput-wide v63, p2, v62

    add-int/lit8 v62, v67, -0x2

    add-double v63, v20, v44

    aput-wide v63, p2, v62

    add-int/lit8 v62, v67, -0x1

    sub-double v63, v7, v26

    aput-wide v63, p2, v62

    sub-double v62, v68, v31

    aput-wide v62, p2, v9

    add-int/lit8 v62, v9, 0x1

    add-double v63, v0, v18

    aput-wide v63, p2, v62

    add-int/lit8 v62, v9, -0x2

    sub-double v63, v20, v44

    aput-wide v63, p2, v62

    add-int/lit8 v62, v9, -0x1

    add-double v63, v7, v26

    aput-wide v63, p2, v62

    add-double v62, v12, v24

    add-double v0, v2, v22

    mul-double v64, v48, v62

    mul-double v68, v46, v0

    sub-double v64, v64, v68

    aput-wide v64, p2, v10

    add-int/lit8 v64, v10, 0x1

    mul-double v68, v48, v0

    mul-double v70, v46, v62

    add-double v68, v68, v70

    aput-wide v68, p2, v64

    add-double v62, v14, v60

    add-double v0, v4, v54

    add-int/lit8 v64, v10, -0x2

    mul-double v68, v37, v62

    mul-double v70, v35, v0

    sub-double v68, v68, v70

    aput-wide v68, p2, v64

    add-int/lit8 v64, v10, -0x1

    mul-double v68, v37, v0

    mul-double v70, v35, v62

    add-double v68, v68, v70

    aput-wide v68, p2, v64

    sub-double v62, v12, v24

    sub-double v0, v2, v22

    mul-double v64, v52, v62

    mul-double v68, v50, v0

    add-double v64, v64, v68

    aput-wide v64, p2, v11

    add-int/lit8 v64, v11, 0x1

    mul-double v68, v52, v0

    mul-double v70, v50, v62

    sub-double v68, v68, v70

    aput-wide v68, p2, v64

    sub-double v62, v14, v60

    sub-double v0, v4, v54

    add-int/lit8 v64, v11, -0x2

    mul-double v68, v41, v62

    mul-double v70, v39, v0

    add-double v68, v68, v70

    aput-wide v68, p2, v64

    add-int/lit8 v64, v11, -0x1

    mul-double v68, v41, v0

    mul-double v70, v39, v62

    sub-double v68, v68, v70

    aput-wide v68, p2, v64

    add-int/lit8 v6, v6, 0x4

    move/from16 v16, v6

    move-wide v14, v12

    move-wide/from16 v26, v24

    move/from16 v20, v43

    move/from16 v21, v56

    move/from16 v8, v57

    move-wide/from16 v12, v62

    move-wide/from16 v4, v78

    move-wide v6, v2

    move-wide/from16 v24, v22

    move/from16 v3, v58

    move-wide/from16 v22, v18

    move-wide/from16 v18, v31

    move-wide/from16 v31, v0

    goto/16 :goto_0

    :cond_0
    move/from16 v58, v3

    move-wide/from16 v78, v4

    add-double v4, v35, v78

    mul-double v4, v4, v28

    add-double v0, v37, v78

    mul-double v0, v0, v28

    sub-double v2, v39, v78

    mul-double v2, v2, v33

    sub-double v6, v41, v78

    mul-double v6, v6, v33

    move/from16 v16, v58

    add-int v20, v16, v17

    add-int v21, v20, v17

    add-int v8, v21, v17

    add-int v43, p3, v16

    add-int v9, p3, v20

    add-int v10, p3, v21

    add-int v11, p3, v8

    add-int/lit8 v46, v43, -0x2

    aget-wide v46, p2, v46

    add-int/lit8 v48, v10, -0x2

    aget-wide v48, p2, v48

    add-double v46, v46, v48

    add-int/lit8 v12, v43, -0x1

    aget-wide v12, p2, v12

    neg-double v12, v12

    add-int/lit8 v48, v10, -0x1

    aget-wide v48, p2, v48

    sub-double v12, v12, v48

    add-int/lit8 v31, v43, -0x2

    aget-wide v31, p2, v31

    add-int/lit8 v48, v10, -0x2

    aget-wide v48, p2, v48

    sub-double v31, v31, v48

    add-int/lit8 v14, v43, -0x1

    move-wide/from16 v80, v6

    aget-wide v6, p2, v14

    neg-double v6, v6

    add-int/lit8 v14, v10, -0x1

    aget-wide v14, p2, v14

    add-double/2addr v6, v14

    add-int/lit8 v14, v9, -0x2

    aget-wide v14, p2, v14

    add-int/lit8 v44, v11, -0x2

    aget-wide v44, p2, v44

    add-double v14, v14, v44

    add-int/lit8 v18, v9, -0x1

    aget-wide v18, p2, v18

    add-int/lit8 v44, v11, -0x1

    aget-wide v44, p2, v44

    add-double v18, v18, v44

    add-int/lit8 v22, v9, -0x2

    aget-wide v22, p2, v22

    add-int/lit8 v44, v11, -0x2

    aget-wide v44, p2, v44

    sub-double v22, v22, v44

    add-int/lit8 v24, v9, -0x1

    aget-wide v24, p2, v24

    add-int/lit8 v44, v11, -0x1

    aget-wide v44, p2, v44

    sub-double v24, v24, v44

    add-int/lit8 v26, v43, -0x2

    add-double v44, v46, v14

    aput-wide v44, p2, v26

    add-int/lit8 v26, v43, -0x1

    sub-double v44, v12, v18

    aput-wide v44, p2, v26

    add-int/lit8 v26, v9, -0x2

    sub-double v44, v46, v14

    aput-wide v44, p2, v26

    add-int/lit8 v26, v9, -0x1

    add-double v44, v12, v18

    aput-wide v44, p2, v26

    add-double v26, v31, v24

    add-double v12, v6, v22

    add-int/lit8 v44, v10, -0x2

    mul-double v45, v4, v26

    mul-double v47, v0, v12

    sub-double v45, v45, v47

    aput-wide v45, p2, v44

    add-int/lit8 v44, v10, -0x1

    mul-double v45, v4, v12

    mul-double v47, v0, v26

    add-double v45, v45, v47

    aput-wide v45, p2, v44

    sub-double v26, v31, v24

    sub-double v12, v6, v22

    add-int/lit8 v44, v11, -0x2

    mul-double v45, v2, v26

    mul-double v47, v80, v12

    add-double v45, v45, v47

    aput-wide v45, p2, v44

    add-int/lit8 v44, v11, -0x1

    mul-double v45, v2, v12

    mul-double v47, v80, v26

    sub-double v45, v45, v47

    aput-wide v45, p2, v44

    aget-wide v44, p2, v43

    aget-wide v46, p2, v10

    add-double v44, v44, v46

    add-int/lit8 v26, v43, 0x1

    move-wide/from16 v82, v6

    aget-wide v6, p2, v26

    neg-double v6, v6

    add-int/lit8 v26, v10, 0x1

    aget-wide v26, p2, v26

    sub-double v6, v6, v26

    aget-wide v12, p2, v43

    aget-wide v26, p2, v10

    sub-double v12, v12, v26

    add-int/lit8 v26, v43, 0x1

    move-wide/from16 v84, v2

    aget-wide v2, p2, v26

    neg-double v2, v2

    add-int/lit8 v26, v10, 0x1

    aget-wide v26, p2, v26

    add-double v2, v2, v26

    aget-wide v26, p2, v9

    aget-wide v31, p2, v11

    add-double v26, v26, v31

    add-int/lit8 v14, v9, 0x1

    aget-wide v14, p2, v14

    add-int/lit8 v31, v11, 0x1

    aget-wide v31, p2, v31

    add-double v14, v14, v31

    aget-wide v18, p2, v9

    aget-wide v31, p2, v11

    sub-double v18, v18, v31

    add-int/lit8 v22, v9, 0x1

    aget-wide v22, p2, v22

    add-int/lit8 v31, v11, 0x1

    aget-wide v31, p2, v31

    sub-double v22, v22, v31

    add-double v24, v44, v26

    aput-wide v24, p2, v43

    add-int/lit8 v24, v43, 0x1

    sub-double v31, v6, v14

    aput-wide v31, p2, v24

    sub-double v24, v44, v26

    aput-wide v24, p2, v9

    add-int/lit8 v24, v9, 0x1

    add-double v31, v6, v14

    aput-wide v31, p2, v24

    add-double v24, v12, v22

    add-double v6, v2, v18

    sub-double v31, v24, v6

    mul-double v31, v31, v78

    aput-wide v31, p2, v10

    add-int/lit8 v31, v10, 0x1

    add-double v44, v6, v24

    mul-double v44, v44, v78

    aput-wide v44, p2, v31

    sub-double v24, v12, v22

    sub-double v6, v2, v18

    move-wide/from16 v86, v2

    move-wide/from16 v88, v12

    move-wide/from16 v2, v78

    neg-double v12, v2

    add-double v31, v24, v6

    mul-double v12, v12, v31

    aput-wide v12, p2, v11

    add-int/lit8 v12, v11, 0x1

    move-wide/from16 v90, v4

    neg-double v4, v2

    sub-double v31, v6, v24

    mul-double v4, v4, v31

    aput-wide v4, p2, v12

    add-int/lit8 v4, v43, 0x2

    aget-wide v4, p2, v4

    add-int/lit8 v12, v10, 0x2

    aget-wide v12, p2, v12

    add-double/2addr v4, v12

    add-int/lit8 v12, v43, 0x3

    aget-wide v12, p2, v12

    neg-double v12, v12

    add-int/lit8 v24, v10, 0x3

    aget-wide v24, p2, v24

    sub-double v12, v12, v24

    add-int/lit8 v6, v43, 0x2

    aget-wide v6, p2, v6

    add-int/lit8 v24, v10, 0x2

    aget-wide v24, p2, v24

    sub-double v6, v6, v24

    add-int/lit8 v24, v43, 0x3

    move-wide/from16 v92, v2

    aget-wide v2, p2, v24

    neg-double v2, v2

    add-int/lit8 v24, v10, 0x3

    aget-wide v24, p2, v24

    add-double v2, v2, v24

    add-int/lit8 v24, v9, 0x2

    aget-wide v24, p2, v24

    add-int/lit8 v31, v11, 0x2

    aget-wide v31, p2, v31

    add-double v24, v24, v31

    add-int/lit8 v26, v9, 0x3

    aget-wide v26, p2, v26

    add-int/lit8 v31, v11, 0x3

    aget-wide v31, p2, v31

    add-double v26, v26, v31

    add-int/lit8 v14, v9, 0x2

    aget-wide v14, p2, v14

    add-int/lit8 v31, v11, 0x2

    aget-wide v31, p2, v31

    sub-double v14, v14, v31

    add-int/lit8 v18, v9, 0x3

    aget-wide v18, p2, v18

    add-int/lit8 v31, v11, 0x3

    aget-wide v31, p2, v31

    sub-double v18, v18, v31

    add-int/lit8 v22, v43, 0x2

    add-double v31, v4, v24

    aput-wide v31, p2, v22

    add-int/lit8 v22, v43, 0x3

    sub-double v31, v12, v26

    aput-wide v31, p2, v22

    add-int/lit8 v22, v9, 0x2

    sub-double v31, v4, v24

    aput-wide v31, p2, v22

    add-int/lit8 v22, v9, 0x3

    add-double v31, v12, v26

    aput-wide v31, p2, v22

    add-double v4, v6, v18

    add-double v12, v2, v14

    add-int/lit8 v22, v10, 0x2

    mul-double v31, v0, v4

    mul-double v44, v90, v12

    sub-double v31, v31, v44

    aput-wide v31, p2, v22

    add-int/lit8 v22, v10, 0x3

    mul-double v31, v0, v12

    mul-double v44, v90, v4

    add-double v31, v31, v44

    aput-wide v31, p2, v22

    sub-double v4, v6, v18

    sub-double v12, v2, v14

    add-int/lit8 v22, v11, 0x2

    mul-double v31, v80, v4

    mul-double v44, v84, v12

    add-double v31, v31, v44

    aput-wide v31, p2, v22

    add-int/lit8 v22, v11, 0x3

    mul-double v31, v80, v12

    mul-double v44, v84, v4

    sub-double v31, v31, v44

    aput-wide v31, p2, v22

    return-void
.end method

.method private cftbsub(I[DI[II[D)V
    .locals 8

    const/16 v0, 0x8

    if-le p1, v0, :cond_5

    const/16 v0, 0x20

    if-le p1, v0, :cond_3

    shr-int/lit8 v0, p1, 0x2

    sub-int v6, p5, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftb1st(I[DI[DI)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-le p1, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    if-le p1, v0, :cond_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4(I[DII[D)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    if-le p1, v0, :cond_2

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfx41(I[DII[D)V

    :goto_0
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv2conj(I[I[DI)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv216neg([DI)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv208neg([DI)V

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_6

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftb040([DI)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxb020([DI)V

    :cond_7
    :goto_1
    return-void
.end method

.method private cftf040([DI)V
    .locals 19

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x4

    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x4

    aget-wide v6, p1, v6

    sub-double/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x5

    aget-wide v8, p1, v8

    sub-double/2addr v6, v8

    add-int/lit8 v8, p2, 0x2

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x6

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    add-int/lit8 v10, p2, 0x3

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x7

    aget-wide v12, p1, v12

    add-double/2addr v10, v12

    add-int/lit8 v12, p2, 0x2

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x6

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    add-int/lit8 v14, p2, 0x3

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x7

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    add-double v16, v0, v8

    aput-wide v16, p1, p2

    add-int/lit8 v16, p2, 0x1

    add-double v17, v2, v10

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x2

    sub-double v17, v4, v14

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x3

    add-double v17, v6, v12

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x4

    sub-double v17, v0, v8

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x5

    sub-double v17, v2, v10

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x6

    add-double v17, v4, v14

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x7

    sub-double v17, v6, v12

    aput-wide v17, p1, v16

    return-void
.end method

.method private cftf081([DI[DI)V
    .locals 53

    add-int/lit8 v0, p4, 0x1

    aget-wide v1, p3, v0

    aget-wide v3, p1, p2

    add-int/lit8 v0, p2, 0x8

    aget-wide v5, p1, v0

    add-double/2addr v3, v5

    add-int/lit8 v0, p2, 0x1

    aget-wide v5, p1, v0

    add-int/lit8 v0, p2, 0x9

    aget-wide v7, p1, v0

    add-double/2addr v5, v7

    aget-wide v7, p1, p2

    add-int/lit8 v0, p2, 0x8

    aget-wide v9, p1, v0

    sub-double/2addr v7, v9

    add-int/lit8 v0, p2, 0x1

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x9

    aget-wide v11, p1, v0

    sub-double/2addr v9, v11

    add-int/lit8 v0, p2, 0x4

    aget-wide v11, p1, v0

    add-int/lit8 v0, p2, 0xc

    aget-wide v13, p1, v0

    add-double/2addr v11, v13

    add-int/lit8 v0, p2, 0x5

    aget-wide v13, p1, v0

    add-int/lit8 v0, p2, 0xd

    aget-wide v15, p1, v0

    add-double/2addr v13, v15

    add-int/lit8 v0, p2, 0x4

    aget-wide v15, p1, v0

    add-int/lit8 v0, p2, 0xc

    aget-wide v17, p1, v0

    sub-double v15, v15, v17

    add-int/lit8 v0, p2, 0x5

    aget-wide v17, p1, v0

    add-int/lit8 v0, p2, 0xd

    aget-wide v19, p1, v0

    sub-double v17, v17, v19

    add-double v19, v3, v11

    add-double v21, v5, v13

    sub-double v23, v3, v11

    sub-double v25, v5, v13

    sub-double v27, v7, v17

    add-double v29, v9, v15

    add-double v31, v7, v17

    sub-double v33, v9, v15

    add-int/lit8 v0, p2, 0x2

    aget-wide v35, p1, v0

    add-int/lit8 v0, p2, 0xa

    aget-wide v37, p1, v0

    add-double v35, v35, v37

    add-int/lit8 v0, p2, 0x3

    aget-wide v3, p1, v0

    add-int/lit8 v0, p2, 0xb

    aget-wide v37, p1, v0

    add-double v3, v3, v37

    add-int/lit8 v0, p2, 0x2

    aget-wide v5, p1, v0

    add-int/lit8 v0, p2, 0xa

    aget-wide v37, p1, v0

    sub-double v5, v5, v37

    add-int/lit8 v0, p2, 0x3

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0xb

    aget-wide v37, p1, v0

    sub-double v7, v7, v37

    add-int/lit8 v0, p2, 0x6

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0xe

    aget-wide v37, p1, v0

    add-double v9, v9, v37

    add-int/lit8 v0, p2, 0x7

    aget-wide v11, p1, v0

    add-int/lit8 v0, p2, 0xf

    aget-wide v37, p1, v0

    add-double v11, v11, v37

    add-int/lit8 v0, p2, 0x6

    aget-wide v13, p1, v0

    add-int/lit8 v0, p2, 0xe

    aget-wide v37, p1, v0

    sub-double v13, v13, v37

    add-int/lit8 v0, p2, 0x7

    aget-wide v15, p1, v0

    add-int/lit8 v0, p2, 0xf

    aget-wide v37, p1, v0

    sub-double v15, v15, v37

    add-double v17, v35, v9

    add-double v37, v3, v11

    sub-double v39, v35, v9

    sub-double v41, v3, v11

    sub-double v35, v5, v15

    add-double v3, v7, v13

    add-double v9, v5, v15

    sub-double v11, v7, v13

    sub-double v43, v35, v3

    mul-double v43, v43, v1

    add-double v45, v35, v3

    mul-double v45, v45, v1

    sub-double v47, v9, v11

    mul-double v47, v47, v1

    add-double v49, v9, v11

    mul-double v49, v49, v1

    add-int/lit8 v0, p2, 0x8

    add-double v51, v27, v43

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0x9

    add-double v51, v29, v45

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0xa

    sub-double v51, v27, v43

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0xb

    sub-double v51, v29, v45

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0xc

    sub-double v51, v31, v49

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0xd

    add-double v51, v33, v47

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0xe

    add-double v51, v31, v49

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0xf

    sub-double v51, v33, v47

    aput-wide v51, p1, v0

    add-double v51, v19, v17

    aput-wide v51, p1, p2

    add-int/lit8 v0, p2, 0x1

    add-double v51, v21, v37

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0x2

    sub-double v51, v19, v17

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0x3

    sub-double v51, v21, v37

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0x4

    sub-double v51, v23, v41

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0x5

    add-double v51, v25, v39

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0x6

    add-double v51, v23, v41

    aput-wide v51, p1, v0

    add-int/lit8 v0, p2, 0x7

    sub-double v51, v25, v39

    aput-wide v51, p1, v0

    return-void
.end method

.method private cftf082([DI[DI)V
    .locals 49

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x2

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    aget-wide v6, p1, p2

    add-int/lit8 v8, p2, 0x9

    aget-wide v8, p1, v8

    sub-double/2addr v6, v8

    add-int/lit8 v8, p2, 0x1

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x8

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    aget-wide v10, p1, p2

    add-int/lit8 v12, p2, 0x9

    aget-wide v12, p1, v12

    add-double/2addr v10, v12

    add-int/lit8 v12, p2, 0x1

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x8

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    add-int/lit8 v14, p2, 0x4

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xd

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    add-int/lit8 v16, p2, 0x5

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0xc

    aget-wide v18, p1, v18

    add-double v16, v16, v18

    sub-double v18, v14, v16

    mul-double v18, v18, v0

    add-double v20, v16, v14

    mul-double v20, v20, v0

    add-int/lit8 v22, p2, 0x4

    aget-wide v22, p1, v22

    add-int/lit8 v24, p2, 0xd

    aget-wide v24, p1, v24

    add-double v22, v22, v24

    add-int/lit8 v14, p2, 0x5

    aget-wide v14, p1, v14

    add-int/lit8 v24, p2, 0xc

    aget-wide v24, p1, v24

    sub-double v14, v14, v24

    sub-double v16, v22, v14

    mul-double v16, v16, v0

    add-double v24, v14, v22

    mul-double v24, v24, v0

    add-int/lit8 v26, p2, 0x2

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0xb

    aget-wide v28, p1, v28

    sub-double v26, v26, v28

    add-int/lit8 v22, p2, 0x3

    aget-wide v22, p1, v22

    add-int/lit8 v28, p2, 0xa

    aget-wide v28, p1, v28

    add-double v22, v22, v28

    mul-double v14, v2, v26

    mul-double v28, v4, v22

    sub-double v14, v14, v28

    mul-double v28, v2, v22

    mul-double v30, v4, v26

    add-double v28, v28, v30

    add-int/lit8 v30, p2, 0x2

    aget-wide v30, p1, v30

    add-int/lit8 v32, p2, 0xb

    aget-wide v32, p1, v32

    add-double v30, v30, v32

    add-int/lit8 v26, p2, 0x3

    aget-wide v26, p1, v26

    add-int/lit8 v32, p2, 0xa

    aget-wide v32, p1, v32

    sub-double v26, v26, v32

    mul-double v22, v4, v30

    mul-double v32, v2, v26

    sub-double v22, v22, v32

    mul-double v32, v4, v26

    mul-double v34, v2, v30

    add-double v32, v32, v34

    add-int/lit8 v34, p2, 0x6

    aget-wide v34, p1, v34

    add-int/lit8 v36, p2, 0xf

    aget-wide v36, p1, v36

    sub-double v34, v34, v36

    add-int/lit8 v30, p2, 0x7

    aget-wide v30, p1, v30

    add-int/lit8 v36, p2, 0xe

    aget-wide v36, p1, v36

    add-double v30, v30, v36

    mul-double v26, v4, v34

    mul-double v36, v2, v30

    sub-double v26, v26, v36

    mul-double v36, v4, v30

    mul-double v38, v2, v34

    add-double v36, v36, v38

    add-int/lit8 v38, p2, 0x6

    aget-wide v38, p1, v38

    add-int/lit8 v40, p2, 0xf

    aget-wide v40, p1, v40

    add-double v38, v38, v40

    add-int/lit8 v34, p2, 0x7

    aget-wide v34, p1, v34

    add-int/lit8 v40, p2, 0xe

    aget-wide v40, p1, v40

    sub-double v34, v34, v40

    mul-double v30, v2, v38

    mul-double v40, v4, v34

    sub-double v30, v30, v40

    mul-double v40, v2, v34

    mul-double v42, v4, v38

    add-double v40, v40, v42

    add-double v38, v6, v18

    add-double v34, v8, v20

    add-double v42, v14, v26

    add-double v44, v28, v36

    add-double v46, v38, v42

    aput-wide v46, p1, p2

    add-int/lit8 v46, p2, 0x1

    add-double v47, v34, v44

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0x2

    sub-double v47, v38, v42

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0x3

    sub-double v47, v34, v44

    aput-wide v47, p1, v46

    sub-double v38, v6, v18

    sub-double v34, v8, v20

    sub-double v42, v14, v26

    sub-double v44, v28, v36

    add-int/lit8 v46, p2, 0x4

    sub-double v47, v38, v44

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0x5

    add-double v47, v34, v42

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0x6

    add-double v47, v38, v44

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0x7

    sub-double v47, v34, v42

    aput-wide v47, p1, v46

    sub-double v38, v10, v24

    add-double v34, v12, v16

    sub-double v42, v22, v30

    sub-double v44, v32, v40

    add-int/lit8 v46, p2, 0x8

    add-double v47, v38, v42

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0x9

    add-double v47, v34, v44

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0xa

    sub-double v47, v38, v42

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0xb

    sub-double v47, v34, v44

    aput-wide v47, p1, v46

    add-double v38, v10, v24

    sub-double v34, v12, v16

    add-double v42, v22, v30

    add-double v44, v32, v40

    add-int/lit8 v46, p2, 0xc

    sub-double v47, v38, v44

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0xd

    add-double v47, v34, v42

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0xe

    add-double v47, v38, v44

    aput-wide v47, p1, v46

    add-int/lit8 v46, p2, 0xf

    sub-double v47, v34, v42

    aput-wide v47, p1, v46

    return-void
.end method

.method private cftf161([DI[DI)V
    .locals 90

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x2

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    aget-wide v6, p1, p2

    add-int/lit8 v8, p2, 0x10

    aget-wide v8, p1, v8

    add-double/2addr v6, v8

    add-int/lit8 v8, p2, 0x1

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x11

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    aget-wide v10, p1, p2

    add-int/lit8 v12, p2, 0x10

    aget-wide v12, p1, v12

    sub-double/2addr v10, v12

    add-int/lit8 v12, p2, 0x1

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x11

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    add-int/lit8 v14, p2, 0x8

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x18

    aget-wide v16, p1, v16

    add-double v14, v14, v16

    add-int/lit8 v16, p2, 0x9

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x19

    aget-wide v18, p1, v18

    add-double v16, v16, v18

    add-int/lit8 v18, p2, 0x8

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0x18

    aget-wide v20, p1, v20

    sub-double v18, v18, v20

    add-int/lit8 v20, p2, 0x9

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0x19

    aget-wide v22, p1, v22

    sub-double v20, v20, v22

    add-double v22, v6, v14

    add-double v24, v8, v16

    sub-double v26, v6, v14

    sub-double v28, v8, v16

    sub-double v30, v10, v20

    add-double v32, v12, v18

    add-double v34, v10, v20

    sub-double v36, v12, v18

    add-int/lit8 v38, p2, 0x2

    aget-wide v38, p1, v38

    add-int/lit8 v40, p2, 0x12

    aget-wide v40, p1, v40

    add-double v38, v38, v40

    add-int/lit8 v6, p2, 0x3

    aget-wide v6, p1, v6

    add-int/lit8 v40, p2, 0x13

    aget-wide v40, p1, v40

    add-double v6, v6, v40

    add-int/lit8 v8, p2, 0x2

    aget-wide v8, p1, v8

    add-int/lit8 v40, p2, 0x12

    aget-wide v40, p1, v40

    sub-double v8, v8, v40

    add-int/lit8 v10, p2, 0x3

    aget-wide v10, p1, v10

    add-int/lit8 v40, p2, 0x13

    aget-wide v40, p1, v40

    sub-double v10, v10, v40

    add-int/lit8 v12, p2, 0xa

    aget-wide v12, p1, v12

    add-int/lit8 v40, p2, 0x1a

    aget-wide v40, p1, v40

    add-double v12, v12, v40

    add-int/lit8 v14, p2, 0xb

    aget-wide v14, p1, v14

    add-int/lit8 v40, p2, 0x1b

    aget-wide v40, p1, v40

    add-double v14, v14, v40

    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    add-int/lit8 v40, p2, 0x1a

    aget-wide v40, p1, v40

    sub-double v16, v16, v40

    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    add-int/lit8 v40, p2, 0x1b

    aget-wide v40, p1, v40

    sub-double v18, v18, v40

    add-double v20, v38, v12

    add-double v40, v6, v14

    sub-double v42, v38, v12

    sub-double v44, v6, v14

    sub-double v38, v8, v18

    add-double v6, v10, v16

    mul-double v46, v2, v38

    mul-double v48, v4, v6

    sub-double v46, v46, v48

    mul-double v48, v2, v6

    mul-double v50, v4, v38

    add-double v48, v48, v50

    add-double v38, v8, v18

    sub-double v6, v10, v16

    mul-double v50, v4, v38

    mul-double v52, v2, v6

    sub-double v50, v50, v52

    mul-double v52, v4, v6

    mul-double v54, v2, v38

    add-double v52, v52, v54

    add-int/lit8 v54, p2, 0x4

    aget-wide v54, p1, v54

    add-int/lit8 v56, p2, 0x14

    aget-wide v56, p1, v56

    add-double v54, v54, v56

    add-int/lit8 v38, p2, 0x5

    aget-wide v38, p1, v38

    add-int/lit8 v56, p2, 0x15

    aget-wide v56, p1, v56

    add-double v38, v38, v56

    add-int/lit8 v6, p2, 0x4

    aget-wide v6, p1, v6

    add-int/lit8 v56, p2, 0x14

    aget-wide v56, p1, v56

    sub-double v6, v6, v56

    add-int/lit8 v8, p2, 0x5

    aget-wide v8, p1, v8

    add-int/lit8 v56, p2, 0x15

    aget-wide v56, p1, v56

    sub-double v8, v8, v56

    add-int/lit8 v10, p2, 0xc

    aget-wide v10, p1, v10

    add-int/lit8 v56, p2, 0x1c

    aget-wide v56, p1, v56

    add-double v10, v10, v56

    add-int/lit8 v12, p2, 0xd

    aget-wide v12, p1, v12

    add-int/lit8 v56, p2, 0x1d

    aget-wide v56, p1, v56

    add-double v12, v12, v56

    add-int/lit8 v14, p2, 0xc

    aget-wide v14, p1, v14

    add-int/lit8 v56, p2, 0x1c

    aget-wide v56, p1, v56

    sub-double v14, v14, v56

    add-int/lit8 v16, p2, 0xd

    aget-wide v16, p1, v16

    add-int/lit8 v56, p2, 0x1d

    aget-wide v56, p1, v56

    sub-double v16, v16, v56

    add-double v18, v54, v10

    add-double v56, v38, v12

    sub-double v58, v54, v10

    sub-double v60, v38, v12

    sub-double v54, v6, v16

    add-double v38, v8, v14

    sub-double v62, v54, v38

    mul-double v62, v62, v0

    add-double v64, v38, v54

    mul-double v64, v64, v0

    add-double v54, v6, v16

    sub-double v38, v8, v14

    add-double v66, v54, v38

    mul-double v66, v66, v0

    sub-double v68, v38, v54

    mul-double v68, v68, v0

    add-int/lit8 v70, p2, 0x6

    aget-wide v70, p1, v70

    add-int/lit8 v72, p2, 0x16

    aget-wide v72, p1, v72

    add-double v70, v70, v72

    add-int/lit8 v54, p2, 0x7

    aget-wide v54, p1, v54

    add-int/lit8 v72, p2, 0x17

    aget-wide v72, p1, v72

    add-double v54, v54, v72

    add-int/lit8 v38, p2, 0x6

    aget-wide v38, p1, v38

    add-int/lit8 v72, p2, 0x16

    aget-wide v72, p1, v72

    sub-double v38, v38, v72

    add-int/lit8 v6, p2, 0x7

    aget-wide v6, p1, v6

    add-int/lit8 v72, p2, 0x17

    aget-wide v72, p1, v72

    sub-double v6, v6, v72

    add-int/lit8 v8, p2, 0xe

    aget-wide v8, p1, v8

    add-int/lit8 v72, p2, 0x1e

    aget-wide v72, p1, v72

    add-double v8, v8, v72

    add-int/lit8 v10, p2, 0xf

    aget-wide v10, p1, v10

    add-int/lit8 v72, p2, 0x1f

    aget-wide v72, p1, v72

    add-double v10, v10, v72

    add-int/lit8 v12, p2, 0xe

    aget-wide v12, p1, v12

    add-int/lit8 v72, p2, 0x1e

    aget-wide v72, p1, v72

    sub-double v12, v12, v72

    add-int/lit8 v14, p2, 0xf

    aget-wide v14, p1, v14

    add-int/lit8 v72, p2, 0x1f

    aget-wide v72, p1, v72

    sub-double v14, v14, v72

    add-double v16, v70, v8

    add-double v72, v54, v10

    sub-double v74, v70, v8

    sub-double v76, v54, v10

    sub-double v70, v38, v14

    add-double v54, v6, v12

    mul-double v78, v4, v70

    mul-double v80, v2, v54

    sub-double v78, v78, v80

    mul-double v80, v4, v54

    mul-double v82, v2, v70

    add-double v80, v80, v82

    add-double v70, v38, v14

    sub-double v54, v6, v12

    mul-double v82, v2, v70

    mul-double v84, v4, v54

    sub-double v82, v82, v84

    mul-double v84, v2, v54

    mul-double v86, v4, v70

    add-double v84, v84, v86

    sub-double v70, v34, v66

    sub-double v54, v36, v68

    add-double v38, v34, v66

    add-double v6, v36, v68

    sub-double v8, v50, v82

    sub-double v10, v52, v84

    add-double v12, v50, v82

    add-double v14, v52, v84

    add-int/lit8 v86, p2, 0x18

    add-double v87, v70, v8

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x19

    add-double v87, v54, v10

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x1a

    sub-double v87, v70, v8

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x1b

    sub-double v87, v54, v10

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x1c

    sub-double v87, v38, v14

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x1d

    add-double v87, v6, v12

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x1e

    add-double v87, v38, v14

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x1f

    sub-double v87, v6, v12

    aput-wide v87, p1, v86

    add-double v70, v30, v62

    add-double v54, v32, v64

    sub-double v38, v30, v62

    sub-double v6, v32, v64

    add-double v8, v46, v78

    add-double v10, v48, v80

    sub-double v12, v46, v78

    sub-double v14, v48, v80

    add-int/lit8 v86, p2, 0x10

    add-double v87, v70, v8

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x11

    add-double v87, v54, v10

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x12

    sub-double v87, v70, v8

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x13

    sub-double v87, v54, v10

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x14

    sub-double v87, v38, v14

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x15

    add-double v87, v6, v12

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x16

    add-double v87, v38, v14

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x17

    sub-double v87, v6, v12

    aput-wide v87, p1, v86

    sub-double v70, v42, v76

    add-double v54, v44, v74

    sub-double v86, v70, v54

    mul-double v86, v86, v0

    add-double v8, v54, v70

    mul-double/2addr v8, v0

    add-double v10, v42, v76

    sub-double v54, v44, v74

    sub-double v70, v10, v54

    mul-double v70, v70, v0

    add-double v12, v54, v10

    mul-double/2addr v12, v0

    sub-double v10, v26, v60

    add-double v14, v28, v58

    add-double v38, v26, v60

    sub-double v6, v28, v58

    add-int/lit8 v54, p2, 0x8

    add-double v88, v10, v86

    aput-wide v88, p1, v54

    add-int/lit8 v54, p2, 0x9

    add-double v88, v14, v8

    aput-wide v88, p1, v54

    add-int/lit8 v54, p2, 0xa

    sub-double v88, v10, v86

    aput-wide v88, p1, v54

    add-int/lit8 v54, p2, 0xb

    sub-double v88, v14, v8

    aput-wide v88, p1, v54

    add-int/lit8 v54, p2, 0xc

    sub-double v88, v38, v12

    aput-wide v88, p1, v54

    add-int/lit8 v54, p2, 0xd

    add-double v88, v6, v70

    aput-wide v88, p1, v54

    add-int/lit8 v54, p2, 0xe

    add-double v88, v38, v12

    aput-wide v88, p1, v54

    add-int/lit8 v54, p2, 0xf

    sub-double v88, v6, v70

    aput-wide v88, p1, v54

    add-double v10, v22, v18

    add-double v14, v24, v56

    sub-double v38, v22, v18

    sub-double v6, v24, v56

    add-double v54, v20, v16

    add-double v8, v40, v72

    sub-double v70, v20, v16

    sub-double v12, v40, v72

    add-double v86, v10, v54

    aput-wide v86, p1, p2

    add-int/lit8 v86, p2, 0x1

    add-double v87, v14, v8

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x2

    sub-double v87, v10, v54

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x3

    sub-double v87, v14, v8

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x4

    sub-double v87, v38, v12

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x5

    add-double v87, v6, v70

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x6

    add-double v87, v38, v12

    aput-wide v87, p1, v86

    add-int/lit8 v86, p2, 0x7

    sub-double v87, v6, v70

    aput-wide v87, p1, v86

    return-void
.end method

.method private cftf162([DI[DI)V
    .locals 94

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x4

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x5

    aget-wide v4, p3, v4

    add-int/lit8 v6, p4, 0x6

    aget-wide v6, p3, v6

    add-int/lit8 v8, p4, 0x7

    aget-wide v8, p3, v8

    neg-double v8, v8

    add-int/lit8 v10, p4, 0x8

    aget-wide v10, p3, v10

    add-int/lit8 v12, p4, 0x9

    aget-wide v12, p3, v12

    aget-wide v14, p1, p2

    add-int/lit8 v16, p2, 0x11

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    add-int/lit8 v16, p2, 0x1

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x10

    aget-wide v18, p1, v18

    add-double v16, v16, v18

    add-int/lit8 v18, p2, 0x8

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0x19

    aget-wide v20, p1, v20

    sub-double v18, v18, v20

    add-int/lit8 v20, p2, 0x9

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0x18

    aget-wide v22, p1, v22

    add-double v20, v20, v22

    sub-double v22, v18, v20

    mul-double v22, v22, v0

    add-double v24, v20, v18

    mul-double v24, v24, v0

    add-double v26, v14, v22

    add-double v28, v16, v24

    sub-double v30, v14, v22

    sub-double v32, v16, v24

    aget-wide v34, p1, p2

    add-int/lit8 v36, p2, 0x11

    aget-wide v36, p1, v36

    add-double v34, v34, v36

    add-int/lit8 v14, p2, 0x1

    aget-wide v14, p1, v14

    add-int/lit8 v36, p2, 0x10

    aget-wide v36, p1, v36

    sub-double v14, v14, v36

    add-int/lit8 v16, p2, 0x8

    aget-wide v16, p1, v16

    add-int/lit8 v36, p2, 0x19

    aget-wide v36, p1, v36

    add-double v16, v16, v36

    add-int/lit8 v18, p2, 0x9

    aget-wide v18, p1, v18

    add-int/lit8 v36, p2, 0x18

    aget-wide v36, p1, v36

    sub-double v18, v18, v36

    sub-double v20, v16, v18

    mul-double v20, v20, v0

    add-double v22, v18, v16

    mul-double v22, v22, v0

    sub-double v24, v34, v22

    add-double v36, v14, v20

    add-double v38, v34, v22

    sub-double v40, v14, v20

    add-int/lit8 v42, p2, 0x2

    aget-wide v42, p1, v42

    add-int/lit8 v44, p2, 0x13

    aget-wide v44, p1, v44

    sub-double v42, v42, v44

    add-int/lit8 v16, p2, 0x3

    aget-wide v16, p1, v16

    add-int/lit8 v44, p2, 0x12

    aget-wide v44, p1, v44

    add-double v16, v16, v44

    mul-double v18, v2, v42

    mul-double v44, v4, v16

    sub-double v18, v18, v44

    mul-double v34, v2, v16

    mul-double v44, v4, v42

    add-double v34, v34, v44

    add-int/lit8 v14, p2, 0xa

    aget-wide v14, p1, v14

    add-int/lit8 v44, p2, 0x1b

    aget-wide v44, p1, v44

    sub-double v14, v14, v44

    add-int/lit8 v42, p2, 0xb

    aget-wide v42, p1, v42

    add-int/lit8 v44, p2, 0x1a

    aget-wide v44, p1, v44

    add-double v42, v42, v44

    mul-double v16, v8, v14

    mul-double v44, v6, v42

    sub-double v16, v16, v44

    mul-double v20, v8, v42

    mul-double v44, v6, v14

    add-double v20, v20, v44

    add-double v22, v18, v16

    add-double v44, v34, v20

    sub-double v46, v18, v16

    sub-double v48, v34, v20

    add-int/lit8 v50, p2, 0x2

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0x13

    aget-wide v52, p1, v52

    add-double v50, v50, v52

    add-int/lit8 v14, p2, 0x3

    aget-wide v14, p1, v14

    add-int/lit8 v52, p2, 0x12

    aget-wide v52, p1, v52

    sub-double v14, v14, v52

    mul-double v42, v6, v50

    mul-double v52, v8, v14

    sub-double v42, v42, v52

    mul-double v18, v6, v14

    mul-double v52, v8, v50

    add-double v18, v18, v52

    add-int/lit8 v34, p2, 0xa

    aget-wide v34, p1, v34

    add-int/lit8 v52, p2, 0x1b

    aget-wide v52, p1, v52

    add-double v34, v34, v52

    add-int/lit8 v50, p2, 0xb

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0x1a

    aget-wide v52, p1, v52

    sub-double v50, v50, v52

    mul-double v14, v2, v34

    mul-double v52, v4, v50

    add-double v14, v14, v52

    mul-double v16, v2, v50

    mul-double v52, v4, v34

    sub-double v16, v16, v52

    sub-double v20, v42, v14

    sub-double v52, v18, v16

    add-double v54, v42, v14

    add-double v56, v18, v16

    add-int/lit8 v58, p2, 0x4

    aget-wide v58, p1, v58

    add-int/lit8 v60, p2, 0x15

    aget-wide v60, p1, v60

    sub-double v58, v58, v60

    add-int/lit8 v34, p2, 0x5

    aget-wide v34, p1, v34

    add-int/lit8 v60, p2, 0x14

    aget-wide v60, p1, v60

    add-double v34, v34, v60

    mul-double v50, v10, v58

    mul-double v60, v12, v34

    sub-double v50, v50, v60

    mul-double v42, v10, v34

    mul-double v60, v12, v58

    add-double v42, v42, v60

    add-int/lit8 v18, p2, 0xc

    aget-wide v18, p1, v18

    add-int/lit8 v60, p2, 0x1d

    aget-wide v60, p1, v60

    sub-double v18, v18, v60

    add-int/lit8 v58, p2, 0xd

    aget-wide v58, p1, v58

    add-int/lit8 v60, p2, 0x1c

    aget-wide v60, p1, v60

    add-double v58, v58, v60

    mul-double v34, v12, v18

    mul-double v60, v10, v58

    sub-double v34, v34, v60

    mul-double v14, v12, v58

    mul-double v60, v10, v18

    add-double v14, v14, v60

    add-double v16, v50, v34

    add-double v60, v42, v14

    sub-double v62, v50, v34

    sub-double v64, v42, v14

    add-int/lit8 v66, p2, 0x4

    aget-wide v66, p1, v66

    add-int/lit8 v68, p2, 0x15

    aget-wide v68, p1, v68

    add-double v66, v66, v68

    add-int/lit8 v18, p2, 0x5

    aget-wide v18, p1, v18

    add-int/lit8 v68, p2, 0x14

    aget-wide v68, p1, v68

    sub-double v18, v18, v68

    mul-double v58, v12, v66

    mul-double v68, v10, v18

    sub-double v58, v58, v68

    mul-double v50, v12, v18

    mul-double v68, v10, v66

    add-double v50, v50, v68

    add-int/lit8 v42, p2, 0xc

    aget-wide v42, p1, v42

    add-int/lit8 v68, p2, 0x1d

    aget-wide v68, p1, v68

    add-double v42, v42, v68

    add-int/lit8 v66, p2, 0xd

    aget-wide v66, p1, v66

    add-int/lit8 v68, p2, 0x1c

    aget-wide v68, p1, v68

    sub-double v66, v66, v68

    mul-double v18, v10, v42

    mul-double v68, v12, v66

    sub-double v18, v18, v68

    mul-double v34, v10, v66

    mul-double v68, v12, v42

    add-double v34, v34, v68

    sub-double v14, v58, v18

    sub-double v68, v50, v34

    add-double v70, v58, v18

    add-double v72, v50, v34

    add-int/lit8 v74, p2, 0x6

    aget-wide v74, p1, v74

    add-int/lit8 v76, p2, 0x17

    aget-wide v76, p1, v76

    sub-double v74, v74, v76

    add-int/lit8 v42, p2, 0x7

    aget-wide v42, p1, v42

    add-int/lit8 v76, p2, 0x16

    aget-wide v76, p1, v76

    add-double v42, v42, v76

    mul-double v66, v6, v74

    mul-double v76, v8, v42

    sub-double v66, v66, v76

    mul-double v58, v6, v42

    mul-double v76, v8, v74

    add-double v58, v58, v76

    add-int/lit8 v50, p2, 0xe

    aget-wide v50, p1, v50

    add-int/lit8 v76, p2, 0x1f

    aget-wide v76, p1, v76

    sub-double v50, v50, v76

    add-int/lit8 v74, p2, 0xf

    aget-wide v74, p1, v74

    add-int/lit8 v76, p2, 0x1e

    aget-wide v76, p1, v76

    add-double v74, v74, v76

    mul-double v42, v4, v50

    mul-double v76, v2, v74

    sub-double v42, v42, v76

    mul-double v18, v4, v74

    mul-double v76, v2, v50

    add-double v18, v18, v76

    add-double v34, v66, v42

    add-double v76, v58, v18

    sub-double v78, v66, v42

    sub-double v80, v58, v18

    add-int/lit8 v82, p2, 0x6

    aget-wide v82, p1, v82

    add-int/lit8 v84, p2, 0x17

    aget-wide v84, p1, v84

    add-double v82, v82, v84

    add-int/lit8 v50, p2, 0x7

    aget-wide v50, p1, v50

    add-int/lit8 v84, p2, 0x16

    aget-wide v84, p1, v84

    sub-double v50, v50, v84

    mul-double v74, v4, v82

    mul-double v84, v2, v50

    add-double v74, v74, v84

    mul-double v66, v4, v50

    mul-double v84, v2, v82

    sub-double v66, v66, v84

    add-int/lit8 v58, p2, 0xe

    aget-wide v58, p1, v58

    add-int/lit8 v84, p2, 0x1f

    aget-wide v84, p1, v84

    add-double v58, v58, v84

    add-int/lit8 v82, p2, 0xf

    aget-wide v82, p1, v82

    add-int/lit8 v84, p2, 0x1e

    aget-wide v84, p1, v84

    sub-double v82, v82, v84

    mul-double v50, v8, v58

    mul-double v84, v6, v82

    sub-double v50, v50, v84

    mul-double v42, v8, v82

    mul-double v84, v6, v58

    add-double v42, v42, v84

    add-double v18, v74, v50

    add-double v84, v66, v42

    sub-double v86, v74, v50

    sub-double v88, v66, v42

    add-double v74, v26, v16

    add-double v66, v28, v60

    add-double v50, v22, v34

    add-double v42, v44, v76

    add-double v90, v74, v50

    aput-wide v90, p1, p2

    add-int/lit8 v90, p2, 0x1

    add-double v91, v66, v42

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x2

    sub-double v91, v74, v50

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x3

    sub-double v91, v66, v42

    aput-wide v91, p1, v90

    sub-double v74, v26, v16

    sub-double v66, v28, v60

    sub-double v50, v22, v34

    sub-double v42, v44, v76

    add-int/lit8 v90, p2, 0x4

    sub-double v91, v74, v42

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x5

    add-double v91, v66, v50

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x6

    add-double v91, v74, v42

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x7

    sub-double v91, v66, v50

    aput-wide v91, p1, v90

    sub-double v74, v30, v64

    add-double v66, v32, v62

    sub-double v58, v46, v80

    add-double v82, v48, v78

    sub-double v90, v58, v82

    mul-double v90, v90, v0

    add-double v50, v82, v58

    mul-double v50, v50, v0

    add-int/lit8 v42, p2, 0x8

    add-double v92, v74, v90

    aput-wide v92, p1, v42

    add-int/lit8 v42, p2, 0x9

    add-double v92, v66, v50

    aput-wide v92, p1, v42

    add-int/lit8 v42, p2, 0xa

    sub-double v92, v74, v90

    aput-wide v92, p1, v42

    add-int/lit8 v42, p2, 0xb

    sub-double v92, v66, v50

    aput-wide v92, p1, v42

    add-double v42, v30, v64

    sub-double v66, v32, v62

    add-double v58, v46, v80

    sub-double v74, v48, v78

    sub-double v82, v58, v74

    mul-double v82, v82, v0

    add-double v90, v74, v58

    mul-double v90, v90, v0

    add-int/lit8 v50, p2, 0xc

    sub-double v92, v42, v90

    aput-wide v92, p1, v50

    add-int/lit8 v50, p2, 0xd

    add-double v92, v66, v82

    aput-wide v92, p1, v50

    add-int/lit8 v50, p2, 0xe

    add-double v92, v42, v90

    aput-wide v92, p1, v50

    add-int/lit8 v50, p2, 0xf

    sub-double v92, v66, v82

    aput-wide v92, p1, v50

    add-double v42, v24, v14

    add-double v50, v36, v68

    sub-double v66, v20, v18

    sub-double v82, v52, v84

    add-int/lit8 v90, p2, 0x10

    add-double v91, v42, v66

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x11

    add-double v91, v50, v82

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x12

    sub-double v91, v42, v66

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x13

    sub-double v91, v50, v82

    aput-wide v91, p1, v90

    sub-double v42, v24, v14

    sub-double v50, v36, v68

    add-double v66, v20, v18

    add-double v82, v52, v84

    add-int/lit8 v90, p2, 0x14

    sub-double v91, v42, v82

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x15

    add-double v91, v50, v66

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x16

    add-double v91, v42, v82

    aput-wide v91, p1, v90

    add-int/lit8 v90, p2, 0x17

    sub-double v91, v50, v66

    aput-wide v91, p1, v90

    sub-double v42, v38, v72

    add-double v50, v40, v70

    add-double v58, v54, v88

    sub-double v74, v56, v86

    sub-double v90, v58, v74

    mul-double v90, v90, v0

    add-double v66, v74, v58

    mul-double v66, v66, v0

    add-int/lit8 v82, p2, 0x18

    add-double v92, v42, v90

    aput-wide v92, p1, v82

    add-int/lit8 v82, p2, 0x19

    add-double v92, v50, v66

    aput-wide v92, p1, v82

    add-int/lit8 v82, p2, 0x1a

    sub-double v92, v42, v90

    aput-wide v92, p1, v82

    add-int/lit8 v82, p2, 0x1b

    sub-double v92, v50, v66

    aput-wide v92, p1, v82

    add-double v42, v38, v72

    sub-double v50, v40, v70

    sub-double v58, v54, v88

    add-double v74, v56, v86

    sub-double v82, v58, v74

    mul-double v82, v82, v0

    add-double v90, v74, v58

    mul-double v90, v90, v0

    add-int/lit8 v66, p2, 0x1c

    sub-double v92, v42, v90

    aput-wide v92, p1, v66

    add-int/lit8 v66, p2, 0x1d

    add-double v92, v50, v82

    aput-wide v92, p1, v66

    add-int/lit8 v66, p2, 0x1e

    add-double v92, v42, v90

    aput-wide v92, p1, v66

    add-int/lit8 v66, p2, 0x1f

    sub-double v92, v50, v82

    aput-wide v92, p1, v66

    return-void
.end method

.method private cftf1st(I[DI[DI)V
    .locals 78

    shr-int/lit8 v4, p1, 0x3

    const/4 v5, 0x2

    mul-int v6, v5, v4

    move v7, v6

    add-int v8, v7, v6

    add-int v9, v8, v6

    add-int v10, p3, v7

    add-int v11, p3, v8

    add-int v12, p3, v9

    aget-wide v13, p2, p3

    aget-wide v15, p2, v11

    add-double/2addr v13, v15

    add-int/lit8 v15, p3, 0x1

    aget-wide v15, p2, v15

    add-int/lit8 v17, v11, 0x1

    aget-wide v17, p2, v17

    add-double v15, v15, v17

    aget-wide v17, p2, p3

    aget-wide v19, p2, v11

    sub-double v17, v17, v19

    add-int/lit8 v19, p3, 0x1

    aget-wide v19, p2, v19

    add-int/lit8 v21, v11, 0x1

    aget-wide v21, p2, v21

    sub-double v19, v19, v21

    aget-wide v21, p2, v10

    aget-wide v23, p2, v12

    add-double v21, v21, v23

    add-int/lit8 v23, v10, 0x1

    aget-wide v23, p2, v23

    add-int/lit8 v25, v12, 0x1

    aget-wide v25, p2, v25

    add-double v23, v23, v25

    aget-wide v25, p2, v10

    aget-wide v27, p2, v12

    sub-double v25, v25, v27

    add-int/lit8 v27, v10, 0x1

    aget-wide v27, p2, v27

    add-int/lit8 v29, v12, 0x1

    aget-wide v29, p2, v29

    sub-double v27, v27, v29

    add-double v29, v13, v21

    aput-wide v29, p2, p3

    add-int/lit8 v29, p3, 0x1

    add-double v30, v15, v23

    aput-wide v30, p2, v29

    sub-double v29, v13, v21

    aput-wide v29, p2, v10

    add-int/lit8 v29, v10, 0x1

    sub-double v30, v15, v23

    aput-wide v30, p2, v29

    sub-double v29, v17, v27

    aput-wide v29, p2, v11

    add-int/lit8 v29, v11, 0x1

    add-double v30, v19, v25

    aput-wide v30, p2, v29

    add-double v29, v17, v27

    aput-wide v29, p2, v12

    add-int/lit8 v29, v12, 0x1

    sub-double v30, v19, v25

    aput-wide v30, p2, v29

    add-int/lit8 v29, p5, 0x1

    move/from16 v33, v6

    aget-wide v5, p4, v29

    add-int/lit8 v29, p5, 0x2

    aget-wide v29, p4, v29

    add-int/lit8 v31, p5, 0x3

    aget-wide v34, p4, v31

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    const-wide/16 v38, 0x0

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    const-wide/16 v42, 0x0

    const/16 v31, 0x0

    move-wide/from16 v44, v27

    move-wide/from16 v26, v25

    move-wide/from16 v24, v23

    move-wide/from16 v22, v21

    move-wide/from16 v20, v19

    move-wide/from16 v18, v17

    move-wide/from16 v16, v15

    move-wide v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    const/4 v7, 0x2

    :goto_0
    add-int/lit8 v3, v4, -0x2

    if-ge v7, v3, :cond_0

    add-int/lit8 v31, v31, 0x4

    add-int v3, p5, v31

    aget-wide v46, p4, v3

    add-double v46, v36, v46

    mul-double v46, v46, v29

    add-int/lit8 v28, v3, 0x1

    aget-wide v48, p4, v28

    add-double v48, v38, v48

    mul-double v48, v48, v29

    add-int/lit8 v28, v3, 0x2

    aget-wide v50, p4, v28

    add-double v50, v40, v50

    mul-double v50, v50, v34

    add-int/lit8 v28, v3, 0x3

    aget-wide v52, p4, v28

    add-double v52, v42, v52

    mul-double v52, v52, v34

    aget-wide v36, p4, v3

    add-int/lit8 v28, v3, 0x1

    aget-wide v38, p4, v28

    add-int/lit8 v28, v3, 0x2

    aget-wide v40, p4, v28

    add-int/lit8 v28, v3, 0x3

    aget-wide v42, p4, v28

    add-int v8, v7, v33

    add-int v9, v8, v33

    add-int v10, v9, v33

    add-int v11, p3, v8

    add-int v12, p3, v9

    add-int v13, p3, v10

    add-int v28, p3, v7

    aget-wide v54, p2, v28

    aget-wide v56, p2, v12

    add-double v54, v54, v56

    add-int/lit8 v14, v28, 0x1

    aget-wide v14, p2, v14

    add-int/lit8 v56, v12, 0x1

    aget-wide v56, p2, v56

    add-double v14, v14, v56

    aget-wide v16, p2, v28

    aget-wide v56, p2, v12

    sub-double v16, v16, v56

    add-int/lit8 v18, v28, 0x1

    aget-wide v18, p2, v18

    add-int/lit8 v56, v12, 0x1

    aget-wide v56, p2, v56

    sub-double v18, v18, v56

    add-int/lit8 v20, v28, 0x2

    aget-wide v20, p2, v20

    add-int/lit8 v56, v12, 0x2

    aget-wide v56, p2, v56

    add-double v20, v20, v56

    add-int/lit8 v56, v28, 0x3

    aget-wide v56, p2, v56

    add-int/lit8 v58, v12, 0x3

    aget-wide v58, p2, v58

    add-double v56, v56, v58

    add-int/lit8 v58, v28, 0x2

    aget-wide v58, p2, v58

    add-int/lit8 v60, v12, 0x2

    aget-wide v60, p2, v60

    sub-double v58, v58, v60

    add-int/lit8 v60, v28, 0x3

    aget-wide v60, p2, v60

    add-int/lit8 v62, v12, 0x3

    aget-wide v62, p2, v62

    sub-double v60, v60, v62

    aget-wide v62, p2, v11

    aget-wide v64, p2, v13

    add-double v62, v62, v64

    add-int/lit8 v22, v11, 0x1

    aget-wide v22, p2, v22

    add-int/lit8 v64, v13, 0x1

    aget-wide v64, p2, v64

    add-double v22, v22, v64

    aget-wide v24, p2, v11

    aget-wide v64, p2, v13

    sub-double v24, v24, v64

    add-int/lit8 v26, v11, 0x1

    aget-wide v26, p2, v26

    add-int/lit8 v64, v13, 0x1

    aget-wide v64, p2, v64

    sub-double v26, v26, v64

    add-int/lit8 v44, v11, 0x2

    aget-wide v44, p2, v44

    add-int/lit8 v64, v13, 0x2

    aget-wide v64, p2, v64

    add-double v44, v44, v64

    add-int/lit8 v64, v11, 0x3

    aget-wide v64, p2, v64

    add-int/lit8 v66, v13, 0x3

    aget-wide v66, p2, v66

    add-double v64, v64, v66

    add-int/lit8 v66, v11, 0x2

    aget-wide v66, p2, v66

    add-int/lit8 v68, v13, 0x2

    aget-wide v68, p2, v68

    sub-double v66, v66, v68

    add-int/lit8 v68, v11, 0x3

    aget-wide v68, p2, v68

    add-int/lit8 v70, v13, 0x3

    aget-wide v70, p2, v70

    sub-double v68, v68, v70

    add-double v70, v54, v62

    aput-wide v70, p2, v28

    add-int/lit8 v70, v28, 0x1

    add-double v71, v14, v22

    aput-wide v71, p2, v70

    add-int/lit8 v70, v28, 0x2

    add-double v71, v20, v44

    aput-wide v71, p2, v70

    add-int/lit8 v70, v28, 0x3

    add-double v71, v56, v64

    aput-wide v71, p2, v70

    sub-double v70, v54, v62

    aput-wide v70, p2, v11

    add-int/lit8 v70, v11, 0x1

    sub-double v71, v14, v22

    aput-wide v71, p2, v70

    add-int/lit8 v70, v11, 0x2

    sub-double v71, v20, v44

    aput-wide v71, p2, v70

    add-int/lit8 v70, v11, 0x3

    sub-double v71, v56, v64

    aput-wide v71, p2, v70

    sub-double v54, v16, v26

    add-double v14, v18, v24

    mul-double v70, v46, v54

    mul-double v72, v48, v14

    sub-double v70, v70, v72

    aput-wide v70, p2, v12

    add-int/lit8 v70, v12, 0x1

    mul-double v71, v46, v14

    mul-double v73, v48, v54

    add-double v71, v71, v73

    aput-wide v71, p2, v70

    sub-double v54, v58, v68

    add-double v14, v60, v66

    add-int/lit8 v70, v12, 0x2

    mul-double v71, v36, v54

    mul-double v73, v38, v14

    sub-double v71, v71, v73

    aput-wide v71, p2, v70

    add-int/lit8 v70, v12, 0x3

    mul-double v71, v36, v14

    mul-double v73, v38, v54

    add-double v71, v71, v73

    aput-wide v71, p2, v70

    add-double v54, v16, v26

    sub-double v14, v18, v24

    mul-double v70, v50, v54

    mul-double v72, v52, v14

    add-double v70, v70, v72

    aput-wide v70, p2, v13

    add-int/lit8 v70, v13, 0x1

    mul-double v71, v50, v14

    mul-double v73, v52, v54

    sub-double v71, v71, v73

    aput-wide v71, p2, v70

    add-double v54, v58, v68

    sub-double v14, v60, v66

    add-int/lit8 v70, v13, 0x2

    mul-double v71, v40, v54

    mul-double v73, v42, v14

    add-double v71, v71, v73

    aput-wide v71, p2, v70

    add-int/lit8 v70, v13, 0x3

    mul-double v71, v40, v14

    mul-double v73, v42, v54

    sub-double v71, v71, v73

    aput-wide v71, p2, v70

    sub-int v70, v33, v7

    add-int v8, v70, v33

    add-int v9, v8, v33

    add-int v10, v9, v33

    add-int v71, p3, v70

    add-int v11, p3, v8

    add-int v12, p3, v9

    add-int v13, p3, v10

    aget-wide v72, p2, v71

    aget-wide v74, p2, v12

    add-double v72, v72, v74

    add-int/lit8 v54, v71, 0x1

    aget-wide v54, p2, v54

    add-int/lit8 v74, v12, 0x1

    aget-wide v74, p2, v74

    add-double v54, v54, v74

    aget-wide v14, p2, v71

    aget-wide v74, p2, v12

    sub-double v14, v14, v74

    add-int/lit8 v16, v71, 0x1

    aget-wide v16, p2, v16

    add-int/lit8 v74, v12, 0x1

    aget-wide v74, p2, v74

    sub-double v16, v16, v74

    add-int/lit8 v18, v71, -0x2

    aget-wide v18, p2, v18

    add-int/lit8 v74, v12, -0x2

    aget-wide v74, p2, v74

    add-double v18, v18, v74

    add-int/lit8 v20, v71, -0x1

    aget-wide v20, p2, v20

    add-int/lit8 v74, v12, -0x1

    aget-wide v74, p2, v74

    add-double v20, v20, v74

    add-int/lit8 v56, v71, -0x2

    aget-wide v56, p2, v56

    add-int/lit8 v74, v12, -0x2

    aget-wide v74, p2, v74

    sub-double v56, v56, v74

    add-int/lit8 v58, v71, -0x1

    aget-wide v58, p2, v58

    add-int/lit8 v74, v12, -0x1

    aget-wide v74, p2, v74

    sub-double v58, v58, v74

    aget-wide v60, p2, v11

    aget-wide v74, p2, v13

    add-double v60, v60, v74

    add-int/lit8 v62, v11, 0x1

    aget-wide v62, p2, v62

    add-int/lit8 v74, v13, 0x1

    aget-wide v74, p2, v74

    add-double v22, v62, v74

    aget-wide v62, p2, v11

    aget-wide v74, p2, v13

    sub-double v24, v62, v74

    add-int/lit8 v62, v11, 0x1

    aget-wide v62, p2, v62

    add-int/lit8 v74, v13, 0x1

    aget-wide v74, p2, v74

    sub-double v26, v62, v74

    add-int/lit8 v62, v11, -0x2

    aget-wide v62, p2, v62

    add-int/lit8 v74, v13, -0x2

    aget-wide v74, p2, v74

    add-double v62, v62, v74

    add-int/lit8 v44, v11, -0x1

    aget-wide v44, p2, v44

    add-int/lit8 v74, v13, -0x1

    aget-wide v74, p2, v74

    add-double v44, v44, v74

    add-int/lit8 v64, v11, -0x2

    aget-wide v64, p2, v64

    add-int/lit8 v74, v13, -0x2

    aget-wide v74, p2, v74

    sub-double v64, v64, v74

    add-int/lit8 v66, v11, -0x1

    aget-wide v66, p2, v66

    add-int/lit8 v74, v13, -0x1

    aget-wide v74, p2, v74

    sub-double v66, v66, v74

    add-double v68, v72, v60

    aput-wide v68, p2, v71

    add-int/lit8 v68, v71, 0x1

    add-double v74, v54, v22

    aput-wide v74, p2, v68

    add-int/lit8 v68, v71, -0x2

    add-double v74, v18, v62

    aput-wide v74, p2, v68

    add-int/lit8 v68, v71, -0x1

    add-double v74, v20, v44

    aput-wide v74, p2, v68

    sub-double v68, v72, v60

    aput-wide v68, p2, v11

    add-int/lit8 v68, v11, 0x1

    sub-double v74, v54, v22

    aput-wide v74, p2, v68

    add-int/lit8 v68, v11, -0x2

    sub-double v74, v18, v62

    aput-wide v74, p2, v68

    add-int/lit8 v68, v11, -0x1

    sub-double v74, v20, v44

    aput-wide v74, p2, v68

    sub-double v68, v14, v26

    add-double v54, v16, v24

    mul-double v72, v48, v68

    mul-double v74, v46, v54

    sub-double v72, v72, v74

    aput-wide v72, p2, v12

    add-int/lit8 v72, v12, 0x1

    mul-double v73, v48, v54

    mul-double v75, v46, v68

    add-double v73, v73, v75

    aput-wide v73, p2, v72

    sub-double v68, v56, v66

    add-double v54, v58, v64

    add-int/lit8 v72, v12, -0x2

    mul-double v73, v38, v68

    mul-double v75, v36, v54

    sub-double v73, v73, v75

    aput-wide v73, p2, v72

    add-int/lit8 v72, v12, -0x1

    mul-double v73, v38, v54

    mul-double v75, v36, v68

    add-double v73, v73, v75

    aput-wide v73, p2, v72

    add-double v68, v14, v26

    sub-double v54, v16, v24

    mul-double v72, v52, v68

    mul-double v74, v50, v54

    add-double v72, v72, v74

    aput-wide v72, p2, v13

    add-int/lit8 v72, v13, 0x1

    mul-double v73, v52, v54

    mul-double v75, v50, v68

    sub-double v73, v73, v75

    aput-wide v73, p2, v72

    add-double v68, v56, v66

    sub-double v54, v58, v64

    add-int v72, p3, v10

    const/16 v32, 0x2

    add-int/lit8 v72, v72, -0x2

    mul-double v73, v42, v68

    mul-double v75, v40, v54

    add-double v73, v73, v75

    aput-wide v73, p2, v72

    add-int v72, p3, v10

    add-int/lit8 v72, v72, -0x1

    mul-double v73, v42, v54

    mul-double v75, v40, v68

    sub-double v73, v73, v75

    aput-wide v73, p2, v72

    add-int/lit8 v7, v7, 0x4

    move-wide/from16 v18, v14

    move-wide/from16 v20, v16

    move-wide/from16 v44, v26

    move-wide/from16 v16, v54

    move-wide/from16 v14, v68

    move-wide/from16 v26, v24

    move-wide/from16 v24, v22

    move-wide/from16 v22, v60

    goto/16 :goto_0

    :cond_0
    add-double v46, v36, v5

    mul-double v46, v46, v29

    add-double v48, v38, v5

    mul-double v48, v48, v29

    sub-double v50, v40, v5

    mul-double v50, v50, v34

    sub-double v52, v42, v5

    mul-double v52, v52, v34

    move v3, v4

    add-int v7, v3, v33

    add-int v8, v7, v33

    add-int v9, v8, v33

    add-int v10, p3, v3

    add-int v11, p3, v7

    add-int v12, p3, v8

    add-int v13, p3, v9

    add-int/lit8 v28, v10, -0x2

    aget-wide v54, p2, v28

    add-int/lit8 v28, v12, -0x2

    aget-wide v56, p2, v28

    add-double v54, v54, v56

    add-int/lit8 v14, v10, -0x1

    aget-wide v14, p2, v14

    add-int/lit8 v28, v12, -0x1

    aget-wide v56, p2, v28

    add-double v14, v14, v56

    add-int/lit8 v16, v10, -0x2

    aget-wide v16, p2, v16

    add-int/lit8 v28, v12, -0x2

    aget-wide v56, p2, v28

    sub-double v16, v16, v56

    add-int/lit8 v18, v10, -0x1

    aget-wide v18, p2, v18

    add-int/lit8 v28, v12, -0x1

    aget-wide v56, p2, v28

    sub-double v18, v18, v56

    add-int/lit8 v20, v11, -0x2

    aget-wide v20, p2, v20

    add-int/lit8 v28, v13, -0x2

    aget-wide v56, p2, v28

    add-double v20, v20, v56

    add-int/lit8 v22, v11, -0x1

    aget-wide v22, p2, v22

    add-int/lit8 v28, v13, -0x1

    aget-wide v56, p2, v28

    add-double v22, v22, v56

    add-int/lit8 v24, v11, -0x2

    aget-wide v24, p2, v24

    add-int/lit8 v28, v13, -0x2

    aget-wide v56, p2, v28

    sub-double v24, v24, v56

    add-int/lit8 v26, v11, -0x1

    aget-wide v26, p2, v26

    add-int/lit8 v28, v13, -0x1

    aget-wide v56, p2, v28

    sub-double v26, v26, v56

    add-int/lit8 v28, v10, -0x2

    add-double v44, v54, v20

    aput-wide v44, p2, v28

    add-int/lit8 v28, v10, -0x1

    add-double v44, v14, v22

    aput-wide v44, p2, v28

    add-int/lit8 v28, v11, -0x2

    sub-double v44, v54, v20

    aput-wide v44, p2, v28

    add-int/lit8 v28, v11, -0x1

    sub-double v44, v14, v22

    aput-wide v44, p2, v28

    sub-double v44, v16, v26

    add-double v14, v18, v24

    add-int/lit8 v28, v12, -0x2

    mul-double v54, v46, v44

    mul-double v56, v48, v14

    sub-double v54, v54, v56

    aput-wide v54, p2, v28

    add-int/lit8 v28, v12, -0x1

    mul-double v54, v46, v14

    mul-double v56, v48, v44

    add-double v54, v54, v56

    aput-wide v54, p2, v28

    add-double v44, v16, v26

    sub-double v14, v18, v24

    add-int/lit8 v28, v13, -0x2

    mul-double v54, v50, v44

    mul-double v56, v52, v14

    add-double v54, v54, v56

    aput-wide v54, p2, v28

    add-int/lit8 v28, v13, -0x1

    mul-double v54, v50, v14

    mul-double v56, v52, v44

    sub-double v54, v54, v56

    aput-wide v54, p2, v28

    aget-wide v54, p2, v10

    aget-wide v56, p2, v12

    add-double v54, v54, v56

    add-int/lit8 v28, v10, 0x1

    aget-wide v44, p2, v28

    add-int/lit8 v28, v12, 0x1

    aget-wide v56, p2, v28

    add-double v44, v44, v56

    aget-wide v14, p2, v10

    aget-wide v56, p2, v12

    sub-double v14, v14, v56

    add-int/lit8 v16, v10, 0x1

    aget-wide v16, p2, v16

    add-int/lit8 v28, v12, 0x1

    aget-wide v56, p2, v28

    sub-double v16, v16, v56

    aget-wide v18, p2, v11

    aget-wide v56, p2, v13

    add-double v18, v18, v56

    add-int/lit8 v20, v11, 0x1

    aget-wide v20, p2, v20

    add-int/lit8 v28, v13, 0x1

    aget-wide v56, p2, v28

    add-double v20, v20, v56

    aget-wide v22, p2, v11

    aget-wide v56, p2, v13

    sub-double v22, v22, v56

    add-int/lit8 v24, v11, 0x1

    aget-wide v24, p2, v24

    add-int/lit8 v28, v13, 0x1

    aget-wide v56, p2, v28

    sub-double v24, v24, v56

    add-double v26, v54, v18

    aput-wide v26, p2, v10

    add-int/lit8 v26, v10, 0x1

    add-double v27, v44, v20

    aput-wide v27, p2, v26

    sub-double v26, v54, v18

    aput-wide v26, p2, v11

    add-int/lit8 v26, v11, 0x1

    sub-double v27, v44, v20

    aput-wide v27, p2, v26

    sub-double v26, v14, v24

    add-double v44, v16, v22

    sub-double v54, v26, v44

    mul-double v54, v54, v5

    aput-wide v54, p2, v12

    add-int/lit8 v28, v12, 0x1

    add-double v54, v44, v26

    mul-double v54, v54, v5

    aput-wide v54, p2, v28

    add-double v26, v14, v24

    sub-double v44, v16, v22

    neg-double v0, v5

    add-double v54, v26, v44

    mul-double v0, v0, v54

    aput-wide v0, p2, v13

    add-int/lit8 v0, v13, 0x1

    neg-double v1, v5

    sub-double v54, v44, v26

    mul-double v1, v1, v54

    aput-wide v1, p2, v0

    add-int/lit8 v0, v10, 0x2

    aget-wide v0, p2, v0

    add-int/lit8 v2, v12, 0x2

    aget-wide v54, p2, v2

    add-double v0, v0, v54

    add-int/lit8 v2, v10, 0x3

    aget-wide v26, p2, v2

    add-int/lit8 v2, v12, 0x3

    aget-wide v54, p2, v2

    add-double v26, v26, v54

    add-int/lit8 v2, v10, 0x2

    aget-wide v44, p2, v2

    add-int/lit8 v2, v12, 0x2

    aget-wide v54, p2, v2

    sub-double v44, v44, v54

    add-int/lit8 v2, v10, 0x3

    aget-wide v14, p2, v2

    add-int/lit8 v2, v12, 0x3

    aget-wide v54, p2, v2

    sub-double v14, v14, v54

    add-int/lit8 v2, v11, 0x2

    aget-wide v16, p2, v2

    add-int/lit8 v2, v13, 0x2

    aget-wide v54, p2, v2

    add-double v16, v16, v54

    add-int/lit8 v2, v11, 0x3

    aget-wide v18, p2, v2

    add-int/lit8 v2, v13, 0x3

    aget-wide v54, p2, v2

    add-double v18, v18, v54

    add-int/lit8 v2, v11, 0x2

    aget-wide v20, p2, v2

    add-int/lit8 v2, v13, 0x2

    aget-wide v54, p2, v2

    sub-double v20, v20, v54

    add-int/lit8 v2, v11, 0x3

    aget-wide v22, p2, v2

    add-int/lit8 v2, v13, 0x3

    aget-wide v54, p2, v2

    sub-double v22, v22, v54

    add-int/lit8 v2, v10, 0x2

    add-double v24, v0, v16

    aput-wide v24, p2, v2

    add-int/lit8 v2, v10, 0x3

    add-double v24, v26, v18

    aput-wide v24, p2, v2

    add-int/lit8 v2, v11, 0x2

    sub-double v24, v0, v16

    aput-wide v24, p2, v2

    add-int/lit8 v2, v11, 0x3

    sub-double v24, v26, v18

    aput-wide v24, p2, v2

    sub-double v0, v44, v22

    add-double v24, v14, v20

    add-int/lit8 v2, v12, 0x2

    mul-double v26, v48, v0

    mul-double v54, v46, v24

    sub-double v26, v26, v54

    aput-wide v26, p2, v2

    add-int/lit8 v2, v12, 0x3

    mul-double v26, v48, v24

    mul-double v54, v46, v0

    add-double v26, v26, v54

    aput-wide v26, p2, v2

    add-double v0, v44, v22

    sub-double v24, v14, v20

    add-int/lit8 v2, v13, 0x2

    mul-double v26, v52, v0

    mul-double v54, v50, v24

    add-double v26, v26, v54

    aput-wide v26, p2, v2

    add-int/lit8 v2, v13, 0x3

    mul-double v26, v52, v24

    mul-double v54, v50, v0

    sub-double v26, v26, v54

    aput-wide v26, p2, v2

    return-void
.end method

.method private cftfsub(I[DI[II[D)V
    .locals 8

    const/16 v0, 0x8

    if-le p1, v0, :cond_5

    const/16 v0, 0x20

    if-le p1, v0, :cond_3

    shr-int/lit8 v0, p1, 0x2

    sub-int v6, p5, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf1st(I[DI[DI)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-le p1, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    if-le p1, v0, :cond_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4(I[DII[D)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    if-le p1, v0, :cond_2

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfx41(I[DII[D)V

    :goto_0
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv2(I[I[DI)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv216([DI)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv208([DI)V

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_6

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf040([DI)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxb020([DI)V

    :cond_7
    :goto_1
    return-void
.end method

.method private cftfx41(I[DII[D)V
    .locals 2

    const/16 v0, 0x80

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x20

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit8 v0, p3, 0x40

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p3, 0x60

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p3, 0x10

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p3, 0x30

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    :goto_0
    return-void
.end method

.method private cftleaf(II[DII[D)V
    .locals 8

    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    const/16 v2, 0x80

    add-int/lit8 v6, p5, -0x40

    move-object v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    const/16 v3, 0x80

    add-int/lit16 v5, p4, 0x80

    add-int/lit8 v7, p5, -0x80

    move-object v2, p0

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v5, p4, 0x100

    add-int/lit8 v7, p5, -0x40

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0x100

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0x120

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, p4, 0x140

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0x160

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    if-eqz p2, :cond_0

    const/16 v3, 0x80

    add-int/lit16 v5, p4, 0x180

    add-int/lit8 v7, p5, -0x40

    move-object v2, p0

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x80

    add-int/lit16 v5, p4, 0x180

    add-int/lit8 v7, p5, -0x80

    move-object v2, p0

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    :goto_0
    add-int/lit16 v0, p4, 0x180

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0x1a0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, p4, 0x1c0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    goto/16 :goto_2

    :cond_1
    const/16 v3, 0x40

    add-int/lit8 v7, p5, -0x20

    move-object v2, p0

    move-object v4, p3

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x10

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x30

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v5, p4, 0x40

    add-int/lit8 v7, p5, -0x40

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x50

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x70

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit16 v5, p4, 0x80

    add-int/lit8 v7, p5, -0x20

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, p4, 0x90

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, p4, 0xb0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    if-eqz p2, :cond_2

    const/16 v3, 0x40

    add-int/lit16 v5, p4, 0xc0

    add-int/lit8 v7, p5, -0x20

    move-object v2, p0

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x40

    add-int/lit16 v5, p4, 0xc0

    add-int/lit8 v7, p5, -0x40

    move-object v2, p0

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    :goto_1
    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, p4, 0xd0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    :goto_2
    return-void
.end method

.method private cftmdl1(I[DI[DI)V
    .locals 52

    shr-int/lit8 v4, p1, 0x3

    const/4 v5, 0x2

    mul-int v6, v5, v4

    move v7, v6

    add-int v8, v7, v6

    add-int v9, v8, v6

    add-int v10, p3, v7

    add-int v11, p3, v8

    add-int v12, p3, v9

    aget-wide v13, p2, p3

    aget-wide v15, p2, v11

    add-double/2addr v13, v15

    add-int/lit8 v15, p3, 0x1

    aget-wide v15, p2, v15

    add-int/lit8 v17, v11, 0x1

    aget-wide v17, p2, v17

    add-double v15, v15, v17

    aget-wide v17, p2, p3

    aget-wide v19, p2, v11

    sub-double v17, v17, v19

    add-int/lit8 v19, p3, 0x1

    aget-wide v19, p2, v19

    add-int/lit8 v21, v11, 0x1

    aget-wide v21, p2, v21

    sub-double v19, v19, v21

    aget-wide v21, p2, v10

    aget-wide v23, p2, v12

    add-double v21, v21, v23

    add-int/lit8 v23, v10, 0x1

    aget-wide v23, p2, v23

    add-int/lit8 v25, v12, 0x1

    aget-wide v25, p2, v25

    add-double v23, v23, v25

    aget-wide v25, p2, v10

    aget-wide v27, p2, v12

    sub-double v25, v25, v27

    add-int/lit8 v27, v10, 0x1

    aget-wide v27, p2, v27

    add-int/lit8 v29, v12, 0x1

    aget-wide v29, p2, v29

    sub-double v27, v27, v29

    add-double v29, v13, v21

    aput-wide v29, p2, p3

    add-int/lit8 v29, p3, 0x1

    add-double v30, v15, v23

    aput-wide v30, p2, v29

    sub-double v29, v13, v21

    aput-wide v29, p2, v10

    add-int/lit8 v29, v10, 0x1

    sub-double v30, v15, v23

    aput-wide v30, p2, v29

    sub-double v29, v17, v27

    aput-wide v29, p2, v11

    add-int/lit8 v29, v11, 0x1

    add-double v30, v19, v25

    aput-wide v30, p2, v29

    add-double v29, v17, v27

    aput-wide v29, p2, v12

    add-int/lit8 v29, v12, 0x1

    sub-double v30, v19, v25

    aput-wide v30, p2, v29

    add-int/lit8 v29, p5, 0x1

    move/from16 v33, v6

    aget-wide v5, p4, v29

    const/16 v29, 0x0

    const/16 v32, 0x2

    :goto_0
    move/from16 v34, v32

    move/from16 v3, v34

    if-ge v3, v4, :cond_0

    add-int/lit8 v29, v29, 0x4

    add-int v30, p5, v29

    aget-wide v31, p4, v30

    add-int/lit8 v34, v30, 0x1

    aget-wide v35, p4, v34

    add-int/lit8 v34, v30, 0x2

    aget-wide v37, p4, v34

    add-int/lit8 v34, v30, 0x3

    aget-wide v39, p4, v34

    add-int v34, v3, v33

    add-int v7, v34, v33

    add-int v8, v7, v33

    add-int v9, p3, v34

    add-int v10, p3, v7

    add-int v11, p3, v8

    add-int v12, p3, v3

    aget-wide v41, p2, v12

    aget-wide v43, p2, v10

    add-double v41, v41, v43

    add-int/lit8 v13, v12, 0x1

    aget-wide v13, p2, v13

    add-int/lit8 v43, v10, 0x1

    aget-wide v43, p2, v43

    add-double v13, v13, v43

    aget-wide v15, p2, v12

    aget-wide v43, p2, v10

    sub-double v15, v15, v43

    add-int/lit8 v17, v12, 0x1

    aget-wide v17, p2, v17

    add-int/lit8 v43, v10, 0x1

    aget-wide v43, p2, v43

    sub-double v17, v17, v43

    aget-wide v19, p2, v9

    aget-wide v43, p2, v11

    add-double v19, v19, v43

    add-int/lit8 v21, v9, 0x1

    aget-wide v21, p2, v21

    add-int/lit8 v43, v11, 0x1

    aget-wide v43, p2, v43

    add-double v21, v21, v43

    aget-wide v23, p2, v9

    aget-wide v43, p2, v11

    sub-double v23, v23, v43

    add-int/lit8 v25, v9, 0x1

    aget-wide v25, p2, v25

    add-int/lit8 v43, v11, 0x1

    aget-wide v43, p2, v43

    sub-double v25, v25, v43

    add-double v27, v41, v19

    aput-wide v27, p2, v12

    add-int/lit8 v27, v12, 0x1

    add-double v43, v13, v21

    aput-wide v43, p2, v27

    sub-double v27, v41, v19

    aput-wide v27, p2, v9

    add-int/lit8 v27, v9, 0x1

    sub-double v43, v13, v21

    aput-wide v43, p2, v27

    sub-double v27, v15, v25

    add-double v13, v17, v23

    mul-double v41, v31, v27

    mul-double v43, v35, v13

    sub-double v41, v41, v43

    aput-wide v41, p2, v10

    add-int/lit8 v41, v10, 0x1

    mul-double v42, v31, v13

    mul-double v44, v35, v27

    add-double v42, v42, v44

    aput-wide v42, p2, v41

    add-double v27, v15, v25

    sub-double v13, v17, v23

    mul-double v41, v37, v27

    mul-double v43, v39, v13

    add-double v41, v41, v43

    aput-wide v41, p2, v11

    add-int/lit8 v41, v11, 0x1

    mul-double v42, v37, v13

    mul-double v44, v39, v27

    sub-double v42, v42, v44

    aput-wide v42, p2, v41

    sub-int v41, v33, v3

    add-int v34, v41, v33

    add-int v7, v34, v33

    add-int v8, v7, v33

    add-int v42, p3, v41

    add-int v9, p3, v34

    add-int v10, p3, v7

    add-int v11, p3, v8

    aget-wide v43, p2, v42

    aget-wide v45, p2, v10

    add-double v43, v43, v45

    add-int/lit8 v27, v42, 0x1

    aget-wide v27, p2, v27

    add-int/lit8 v45, v10, 0x1

    aget-wide v45, p2, v45

    add-double v27, v27, v45

    aget-wide v13, p2, v42

    aget-wide v45, p2, v10

    sub-double v13, v13, v45

    add-int/lit8 v15, v42, 0x1

    aget-wide v15, p2, v15

    add-int/lit8 v45, v10, 0x1

    aget-wide v45, p2, v45

    sub-double v15, v15, v45

    aget-wide v17, p2, v9

    aget-wide v45, p2, v11

    add-double v17, v17, v45

    add-int/lit8 v19, v9, 0x1

    aget-wide v19, p2, v19

    add-int/lit8 v45, v11, 0x1

    aget-wide v45, p2, v45

    add-double v19, v19, v45

    aget-wide v21, p2, v9

    aget-wide v45, p2, v11

    sub-double v21, v21, v45

    add-int/lit8 v23, v9, 0x1

    aget-wide v23, p2, v23

    add-int/lit8 v45, v11, 0x1

    aget-wide v45, p2, v45

    sub-double v23, v23, v45

    add-double v25, v43, v17

    aput-wide v25, p2, v42

    add-int/lit8 v25, v42, 0x1

    add-double v45, v27, v19

    aput-wide v45, p2, v25

    sub-double v25, v43, v17

    aput-wide v25, p2, v9

    add-int/lit8 v25, v9, 0x1

    sub-double v45, v27, v19

    aput-wide v45, p2, v25

    sub-double v25, v13, v23

    add-double v27, v15, v21

    mul-double v43, v35, v25

    mul-double v45, v31, v27

    sub-double v43, v43, v45

    aput-wide v43, p2, v10

    add-int/lit8 v43, v10, 0x1

    mul-double v44, v35, v27

    mul-double v46, v31, v25

    add-double v44, v44, v46

    aput-wide v44, p2, v43

    add-double v25, v13, v23

    sub-double v27, v15, v21

    mul-double v43, v39, v25

    mul-double v45, v37, v27

    add-double v43, v43, v45

    aput-wide v43, p2, v11

    add-int/lit8 v43, v11, 0x1

    mul-double v44, v39, v27

    mul-double v46, v37, v25

    sub-double v44, v44, v46

    aput-wide v44, p2, v43

    add-int/lit8 v3, v3, 0x2

    move/from16 v32, v3

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move/from16 v7, v34

    move-wide/from16 v48, v15

    move-wide/from16 v15, v27

    move-wide/from16 v27, v23

    move-wide/from16 v23, v19

    move-wide/from16 v19, v48

    move-wide/from16 v50, v13

    move-wide/from16 v13, v25

    move-wide/from16 v25, v21

    move-wide/from16 v21, v17

    move-wide/from16 v17, v50

    goto/16 :goto_0

    :cond_0
    move v3, v4

    add-int v7, v3, v33

    add-int v8, v7, v33

    add-int v9, v8, v33

    add-int v30, p3, v3

    add-int v10, p3, v7

    add-int v11, p3, v8

    add-int v12, p3, v9

    aget-wide v31, p2, v30

    aget-wide v35, p2, v11

    add-double v31, v31, v35

    add-int/lit8 v13, v30, 0x1

    aget-wide v13, p2, v13

    add-int/lit8 v34, v11, 0x1

    aget-wide v35, p2, v34

    add-double v13, v13, v35

    aget-wide v15, p2, v30

    aget-wide v35, p2, v11

    sub-double v15, v15, v35

    add-int/lit8 v17, v30, 0x1

    aget-wide v17, p2, v17

    add-int/lit8 v34, v11, 0x1

    aget-wide v35, p2, v34

    sub-double v17, v17, v35

    aget-wide v19, p2, v10

    aget-wide v35, p2, v12

    add-double v19, v19, v35

    add-int/lit8 v21, v10, 0x1

    aget-wide v21, p2, v21

    add-int/lit8 v34, v12, 0x1

    aget-wide v35, p2, v34

    add-double v21, v21, v35

    aget-wide v23, p2, v10

    aget-wide v35, p2, v12

    sub-double v23, v23, v35

    add-int/lit8 v25, v10, 0x1

    aget-wide v25, p2, v25

    add-int/lit8 v34, v12, 0x1

    aget-wide v35, p2, v34

    sub-double v25, v25, v35

    add-double v27, v31, v19

    aput-wide v27, p2, v30

    add-int/lit8 v27, v30, 0x1

    add-double v35, v13, v21

    aput-wide v35, p2, v27

    sub-double v27, v31, v19

    aput-wide v27, p2, v10

    add-int/lit8 v27, v10, 0x1

    sub-double v35, v13, v21

    aput-wide v35, p2, v27

    sub-double v27, v15, v25

    add-double v13, v17, v23

    sub-double v31, v27, v13

    mul-double v31, v31, v5

    aput-wide v31, p2, v11

    add-int/lit8 v31, v11, 0x1

    add-double v35, v13, v27

    mul-double v35, v35, v5

    aput-wide v35, p2, v31

    add-double v27, v15, v25

    sub-double v13, v17, v23

    neg-double v0, v5

    add-double v31, v27, v13

    mul-double v0, v0, v31

    aput-wide v0, p2, v12

    add-int/lit8 v0, v12, 0x1

    neg-double v1, v5

    sub-double v31, v13, v27

    mul-double v1, v1, v31

    aput-wide v1, p2, v0

    return-void
.end method

.method private cftmdl2(I[DI[DI)V
    .locals 62

    shr-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    mul-int v2, v1, v0

    add-int/lit8 v3, p5, 0x1

    aget-wide v3, p4, v3

    move v5, v2

    add-int v6, v5, v2

    add-int v7, v6, v2

    add-int v8, p3, v5

    add-int v9, p3, v6

    add-int v10, p3, v7

    aget-wide v11, p2, p3

    add-int/lit8 v13, v9, 0x1

    aget-wide v13, p2, v13

    sub-double/2addr v11, v13

    add-int/lit8 v13, p3, 0x1

    aget-wide v13, p2, v13

    aget-wide v15, p2, v9

    add-double/2addr v13, v15

    aget-wide v15, p2, p3

    add-int/lit8 v17, v9, 0x1

    aget-wide v17, p2, v17

    add-double v15, v15, v17

    add-int/lit8 v17, p3, 0x1

    aget-wide v17, p2, v17

    aget-wide v19, p2, v9

    sub-double v17, v17, v19

    aget-wide v19, p2, v8

    add-int/lit8 v21, v10, 0x1

    aget-wide v21, p2, v21

    sub-double v19, v19, v21

    add-int/lit8 v21, v8, 0x1

    aget-wide v21, p2, v21

    aget-wide v23, p2, v10

    add-double v21, v21, v23

    aget-wide v23, p2, v8

    add-int/lit8 v25, v10, 0x1

    aget-wide v25, p2, v25

    add-double v23, v23, v25

    add-int/lit8 v25, v8, 0x1

    aget-wide v25, p2, v25

    aget-wide v27, p2, v10

    sub-double v25, v25, v27

    sub-double v27, v19, v21

    mul-double v27, v27, v3

    add-double v29, v21, v19

    mul-double v29, v29, v3

    add-double v31, v11, v27

    aput-wide v31, p2, p3

    add-int/lit8 v31, p3, 0x1

    add-double v32, v13, v29

    aput-wide v32, p2, v31

    sub-double v31, v11, v27

    aput-wide v31, p2, v8

    add-int/lit8 v31, v8, 0x1

    sub-double v32, v13, v29

    aput-wide v32, p2, v31

    sub-double v31, v23, v25

    mul-double v31, v31, v3

    add-double v27, v25, v23

    mul-double v27, v27, v3

    sub-double v29, v15, v27

    aput-wide v29, p2, v9

    add-int/lit8 v29, v9, 0x1

    add-double v33, v17, v31

    aput-wide v33, p2, v29

    add-double v29, v15, v27

    aput-wide v29, p2, v10

    add-int/lit8 v29, v10, 0x1

    sub-double v33, v17, v31

    aput-wide v33, p2, v29

    const/16 v29, 0x0

    mul-int v30, v1, v2

    nop

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v29, v29, 0x4

    add-int v33, p5, v29

    aget-wide v34, p4, v33

    add-int/lit8 v36, v33, 0x1

    aget-wide v36, p4, v36

    add-int/lit8 v38, v33, 0x2

    aget-wide v38, p4, v38

    add-int/lit8 v40, v33, 0x3

    aget-wide v40, p4, v40

    add-int/lit8 v30, v30, -0x4

    add-int v42, p5, v30

    aget-wide v43, p4, v42

    add-int/lit8 v45, v42, 0x1

    aget-wide v45, p4, v45

    add-int/lit8 v47, v42, 0x2

    aget-wide v47, p4, v47

    add-int/lit8 v49, v42, 0x3

    aget-wide v49, p4, v49

    add-int v5, v1, v2

    add-int v6, v5, v2

    add-int v7, v6, v2

    add-int v8, p3, v5

    add-int v9, p3, v6

    add-int v10, p3, v7

    add-int v51, p3, v1

    aget-wide v52, p2, v51

    add-int/lit8 v54, v9, 0x1

    aget-wide v54, p2, v54

    sub-double v52, v52, v54

    add-int/lit8 v11, v51, 0x1

    aget-wide v11, p2, v11

    aget-wide v54, p2, v9

    add-double v11, v11, v54

    aget-wide v13, p2, v51

    add-int/lit8 v54, v9, 0x1

    aget-wide v54, p2, v54

    add-double v13, v13, v54

    add-int/lit8 v15, v51, 0x1

    aget-wide v15, p2, v15

    aget-wide v54, p2, v9

    sub-double v15, v15, v54

    aget-wide v17, p2, v8

    add-int/lit8 v54, v10, 0x1

    aget-wide v54, p2, v54

    sub-double v17, v17, v54

    add-int/lit8 v19, v8, 0x1

    aget-wide v19, p2, v19

    aget-wide v54, p2, v10

    add-double v19, v19, v54

    aget-wide v21, p2, v8

    add-int/lit8 v54, v10, 0x1

    aget-wide v54, p2, v54

    add-double v21, v21, v54

    add-int/lit8 v23, v8, 0x1

    aget-wide v23, p2, v23

    aget-wide v54, p2, v10

    sub-double v23, v23, v54

    mul-double v25, v34, v52

    mul-double v54, v36, v11

    sub-double v25, v25, v54

    mul-double v31, v34, v11

    mul-double v54, v36, v52

    add-double v31, v31, v54

    mul-double v27, v45, v17

    mul-double v54, v43, v19

    sub-double v27, v27, v54

    mul-double v54, v45, v19

    mul-double v56, v43, v17

    add-double v54, v54, v56

    add-double v56, v25, v27

    aput-wide v56, p2, v51

    add-int/lit8 v56, v51, 0x1

    add-double v57, v31, v54

    aput-wide v57, p2, v56

    sub-double v56, v25, v27

    aput-wide v56, p2, v8

    add-int/lit8 v56, v8, 0x1

    sub-double v57, v31, v54

    aput-wide v57, p2, v56

    mul-double v56, v38, v13

    mul-double v58, v40, v15

    add-double v56, v56, v58

    mul-double v25, v38, v15

    mul-double v58, v40, v13

    sub-double v25, v25, v58

    mul-double v31, v49, v21

    mul-double v58, v47, v23

    add-double v31, v31, v58

    mul-double v27, v49, v23

    mul-double v58, v47, v21

    sub-double v27, v27, v58

    add-double v54, v56, v31

    aput-wide v54, p2, v9

    add-int/lit8 v54, v9, 0x1

    add-double v58, v25, v27

    aput-wide v58, p2, v54

    sub-double v54, v56, v31

    aput-wide v54, p2, v10

    add-int/lit8 v54, v10, 0x1

    sub-double v58, v25, v27

    aput-wide v58, p2, v54

    sub-int v54, v2, v1

    add-int v5, v54, v2

    add-int v6, v5, v2

    add-int v7, v6, v2

    add-int v55, p3, v54

    add-int v8, p3, v5

    add-int v9, p3, v6

    add-int v10, p3, v7

    aget-wide v58, p2, v55

    add-int/lit8 v60, v9, 0x1

    aget-wide v60, p2, v60

    sub-double v52, v58, v60

    add-int/lit8 v58, v55, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v9

    add-double v11, v58, v60

    aget-wide v58, p2, v55

    add-int/lit8 v60, v9, 0x1

    aget-wide v60, p2, v60

    add-double v13, v58, v60

    add-int/lit8 v58, v55, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v9

    sub-double v15, v58, v60

    aget-wide v58, p2, v8

    add-int/lit8 v60, v10, 0x1

    aget-wide v60, p2, v60

    sub-double v17, v58, v60

    add-int/lit8 v58, v8, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v10

    add-double v19, v58, v60

    aget-wide v58, p2, v8

    add-int/lit8 v60, v10, 0x1

    aget-wide v60, p2, v60

    add-double v21, v58, v60

    add-int/lit8 v58, v8, 0x1

    aget-wide v58, p2, v58

    aget-wide v60, p2, v10

    sub-double v23, v58, v60

    mul-double v58, v43, v52

    mul-double v60, v45, v11

    sub-double v58, v58, v60

    mul-double v56, v43, v11

    mul-double v60, v45, v52

    add-double v56, v56, v60

    mul-double v25, v36, v17

    mul-double v60, v34, v19

    sub-double v25, v25, v60

    mul-double v31, v36, v19

    mul-double v60, v34, v17

    add-double v31, v31, v60

    add-double v27, v58, v25

    aput-wide v27, p2, v55

    add-int/lit8 v27, v55, 0x1

    add-double v60, v56, v31

    aput-wide v60, p2, v27

    sub-double v27, v58, v25

    aput-wide v27, p2, v8

    add-int/lit8 v27, v8, 0x1

    sub-double v60, v56, v31

    aput-wide v60, p2, v27

    mul-double v27, v47, v13

    mul-double v60, v49, v15

    add-double v27, v27, v60

    mul-double v58, v47, v15

    mul-double v60, v49, v13

    sub-double v56, v58, v60

    mul-double v58, v40, v21

    mul-double v60, v38, v23

    add-double v58, v58, v60

    mul-double v25, v40, v23

    mul-double v60, v38, v21

    sub-double v25, v25, v60

    add-double v31, v27, v58

    aput-wide v31, p2, v9

    add-int/lit8 v31, v9, 0x1

    add-double v60, v56, v25

    aput-wide v60, p2, v31

    sub-double v31, v27, v58

    aput-wide v31, p2, v10

    add-int/lit8 v31, v10, 0x1

    sub-double v60, v56, v25

    aput-wide v60, p2, v31

    add-int/lit8 v1, v1, 0x2

    move-wide/from16 v25, v23

    move-wide/from16 v31, v27

    move-wide/from16 v27, v56

    move-wide/from16 v23, v21

    move-wide/from16 v21, v19

    move-wide/from16 v19, v17

    move-wide/from16 v17, v15

    move-wide v15, v13

    move-wide v13, v11

    move-wide/from16 v11, v52

    goto/16 :goto_0

    :cond_0
    add-int v1, p5, v2

    aget-wide v33, p4, v1

    add-int v1, p5, v2

    add-int/lit8 v1, v1, 0x1

    aget-wide v35, p4, v1

    move v1, v0

    add-int v5, v1, v2

    add-int v6, v5, v2

    add-int v7, v6, v2

    add-int v37, p3, v1

    add-int v8, p3, v5

    add-int v9, p3, v6

    add-int v10, p3, v7

    aget-wide v38, p2, v37

    add-int/lit8 v40, v9, 0x1

    aget-wide v40, p2, v40

    sub-double v38, v38, v40

    add-int/lit8 v11, v37, 0x1

    aget-wide v11, p2, v11

    aget-wide v40, p2, v9

    add-double v11, v11, v40

    aget-wide v13, p2, v37

    add-int/lit8 v40, v9, 0x1

    aget-wide v40, p2, v40

    add-double v13, v13, v40

    add-int/lit8 v15, v37, 0x1

    aget-wide v15, p2, v15

    aget-wide v40, p2, v9

    sub-double v15, v15, v40

    aget-wide v17, p2, v8

    add-int/lit8 v40, v10, 0x1

    aget-wide v40, p2, v40

    sub-double v17, v17, v40

    add-int/lit8 v19, v8, 0x1

    aget-wide v19, p2, v19

    aget-wide v40, p2, v10

    add-double v19, v19, v40

    aget-wide v21, p2, v8

    add-int/lit8 v40, v10, 0x1

    aget-wide v40, p2, v40

    add-double v21, v21, v40

    add-int/lit8 v23, v8, 0x1

    aget-wide v23, p2, v23

    aget-wide v40, p2, v10

    sub-double v23, v23, v40

    mul-double v25, v33, v38

    mul-double v40, v35, v11

    sub-double v25, v25, v40

    mul-double v31, v33, v11

    mul-double v40, v35, v38

    add-double v31, v31, v40

    mul-double v27, v35, v17

    mul-double v40, v33, v19

    sub-double v27, v27, v40

    mul-double v40, v35, v19

    mul-double v42, v33, v17

    add-double v40, v40, v42

    add-double v42, v25, v27

    aput-wide v42, p2, v37

    add-int/lit8 v42, v37, 0x1

    add-double v43, v31, v40

    aput-wide v43, p2, v42

    sub-double v42, v25, v27

    aput-wide v42, p2, v8

    add-int/lit8 v42, v8, 0x1

    sub-double v43, v31, v40

    aput-wide v43, p2, v42

    mul-double v42, v35, v13

    mul-double v44, v33, v15

    sub-double v42, v42, v44

    mul-double v25, v35, v15

    mul-double v44, v33, v13

    add-double v25, v25, v44

    mul-double v31, v33, v21

    mul-double v44, v35, v23

    sub-double v31, v31, v44

    mul-double v27, v33, v23

    mul-double v44, v35, v21

    add-double v27, v27, v44

    sub-double v40, v42, v31

    aput-wide v40, p2, v9

    add-int/lit8 v40, v9, 0x1

    sub-double v44, v25, v27

    aput-wide v44, p2, v40

    add-double v40, v42, v31

    aput-wide v40, p2, v10

    add-int/lit8 v40, v10, 0x1

    add-double v44, v25, v27

    aput-wide v44, p2, v40

    return-void
.end method

.method private cftrec4(I[DII[D)V
    .locals 20

    move/from16 v0, p1

    add-int v1, p3, p1

    move v7, v0

    :goto_0
    move v15, v1

    const/16 v0, 0x200

    if-le v7, v0, :cond_0

    shr-int/lit8 v0, v7, 0x2

    sub-int v4, v15, v0

    shr-int/lit8 v1, v0, 0x1

    sub-int v6, p4, v1

    move-object/from16 v1, p0

    move v2, v0

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    move v7, v0

    move v1, v15

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    sub-int v12, v15, v7

    move-object/from16 v8, p0

    move v9, v7

    move-object/from16 v11, p2

    move/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    const/4 v0, 0x0

    sub-int v16, p3, v7

    sub-int v1, p1, v7

    :goto_1
    move/from16 v17, v1

    if-lez v17, :cond_1

    add-int/lit8 v18, v0, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v19, v7

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfttree(III[DII[D)I

    move-result v0

    add-int v12, v16, v17

    move-object/from16 v8, p0

    move/from16 v9, v19

    move v10, v0

    move-object/from16 v11, p2

    move/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    sub-int v1, v17, v19

    move/from16 v0, v18

    move/from16 v7, v19

    goto :goto_1

    :cond_1
    move/from16 v19, v7

    return-void
.end method

.method private cftrec4_th(I[DII[D)V
    .locals 19

    move/from16 v12, p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    shr-int/lit8 v3, v12, 0x1

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v4

    if-le v12, v4, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x1

    shr-int/lit8 v3, v3, 0x1

    :cond_0
    move v13, v1

    move v15, v2

    move v14, v3

    new-array v11, v13, [Ljava/util/concurrent/Future;

    move v3, v14

    const/4 v1, 0x0

    move/from16 v16, v0

    :goto_0
    move v10, v1

    if-ge v10, v13, :cond_2

    mul-int v0, v10, v14

    add-int v17, p3, v0

    if-eq v10, v15, :cond_1

    add-int/lit8 v8, v16, 0x1

    new-instance v9, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, v17

    move v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V

    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v16

    move/from16 v16, v8

    move v2, v10

    move-object v0, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v16, 0x1

    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;

    move-object v4, v1

    move-object/from16 v5, p0

    move/from16 v6, v17

    move v7, v3

    move v8, v12

    move-object/from16 v9, p2

    move v2, v10

    move-object/from16 v10, p5

    move/from16 v18, v0

    move-object v0, v11

    move/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v0, v16

    move/from16 v16, v18

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move-object v11, v0

    goto :goto_0

    :cond_2
    move v2, v10

    move-object v0, v11

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private cfttree(III[DII[D)I
    .locals 14

    sub-int v6, p5, p1

    and-int/lit8 v0, p3, 0x3

    if-eqz v0, :cond_1

    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_0

    add-int v3, v6, p2

    shr-int/lit8 v0, p1, 0x1

    sub-int v5, p6, v0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    goto :goto_3

    :cond_0
    add-int v3, v6, p2

    sub-int v5, p6, p1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    goto :goto_3

    :cond_1
    move v0, p1

    move v1, v0

    move/from16 v0, p3

    :goto_0
    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_2

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 v7, v0, 0x1

    add-int v2, p5, p2

    const/16 v3, 0x80

    if-eqz v7, :cond_3

    :goto_1
    if-le v1, v3, :cond_4

    sub-int v11, v2, v1

    shr-int/lit8 v4, v1, 0x1

    sub-int v13, p6, v4

    move-object v8, p0

    move v9, v1

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    invoke-direct/range {v8 .. v13}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    shr-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    :goto_2
    if-le v1, v3, :cond_4

    sub-int v11, v2, v1

    sub-int v13, p6, v1

    move-object v8, p0

    move v9, v1

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    invoke-direct/range {v8 .. v13}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    shr-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_4
    :goto_3
    return v7
.end method

.method private cftx020([DI)V
    .locals 9

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    neg-double v2, v2

    add-int/lit8 v4, p2, 0x3

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v5, p1, v4

    add-int/lit8 v7, p2, 0x3

    aget-wide v7, p1, v7

    add-double/2addr v5, v7

    aput-wide v5, p1, v4

    add-int/lit8 v4, p2, 0x2

    aput-wide v0, p1, v4

    add-int/lit8 v4, p2, 0x3

    aput-wide v2, p1, v4

    return-void
.end method

.method private cftxb020([DI)V
    .locals 9

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget-wide v4, p1, v4

    sub-double/2addr v2, v4

    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v5, p1, v4

    add-int/lit8 v7, p2, 0x3

    aget-wide v7, p1, v7

    add-double/2addr v5, v7

    aput-wide v5, p1, v4

    add-int/lit8 v4, p2, 0x2

    aput-wide v0, p1, v4

    add-int/lit8 v4, p2, 0x3

    aput-wide v2, p1, v4

    return-void
.end method

.method private cftxc020([DI)V
    .locals 9

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v5, p1, v4

    add-int/lit8 v7, p2, 0x3

    aget-wide v7, p1, v7

    sub-double/2addr v5, v7

    aput-wide v5, p1, v4

    add-int/lit8 v4, p2, 0x2

    aput-wide v0, p1, v4

    add-int/lit8 v4, p2, 0x3

    aput-wide v2, p1, v4

    return-void
.end method

.method private static getReminder(I[I)I
    .locals 4

    move v0, p0

    if-lez p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    aget v2, p1, v1

    :goto_1
    rem-int v3, v0, v2

    if-nez v3, :cond_0

    div-int/2addr v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "n must be positive integer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private makect(I[DI)V
    .locals 11

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    if-le p1, v1, :cond_0

    shr-int/lit8 v0, p1, 0x1

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v4, v0

    div-double/2addr v2, v4

    int-to-double v4, v0

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aput-wide v4, p2, p3

    add-int v4, p3, v0

    aget-wide v5, p2, p3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    aput-wide v5, p2, v4

    nop

    :goto_0
    if-ge v1, v0, :cond_0

    int-to-double v4, v1

    mul-double/2addr v4, v2

    add-int v6, p3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    aput-wide v9, p2, v6

    add-int v6, p3, p1

    sub-int/2addr v6, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    aput-wide v9, p2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeipt(I)V
    .locals 10

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v2, 0x3

    const/16 v3, 0x10

    aput v3, v0, v2

    const/4 v0, 0x2

    move v2, v0

    move v0, p1

    :goto_0
    const/16 v3, 0x20

    if-le v0, v3, :cond_1

    shl-int/lit8 v3, v2, 0x1

    shl-int/lit8 v4, v3, 0x3

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v6, v6, v5

    shl-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    add-int v8, v2, v5

    aput v6, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    add-int v8, v3, v5

    add-int v9, v6, v4

    aput v9, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v2, v3

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makewt(I)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v4, 0x1

    aput v4, v2, v4

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    shr-int/lit8 v5, v1, 0x1

    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v8, v5

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v6

    int-to-double v10, v5

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    aput-wide v13, v12, v3

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    aput-wide v10, v12, v4

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x3

    const/4 v12, 0x4

    if-ne v5, v12, :cond_0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    aput-wide v18, v3, v2

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    aput-wide v18, v3, v4

    move/from16 v25, v5

    move-wide/from16 v26, v6

    goto :goto_1

    :cond_0
    if-le v5, v12, :cond_1

    invoke-direct/range {p0 .. p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makeipt(I)V

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    div-double v18, v15, v18

    aput-wide v18, v3, v2

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v12, v6, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    div-double v12, v15, v12

    aput-wide v12, v3, v4

    const/4 v3, 0x4

    :goto_0
    if-ge v3, v5, :cond_1

    int-to-double v12, v3

    mul-double/2addr v12, v6

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    move/from16 v24, v3

    mul-double v2, v18, v12

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    aput-wide v18, v4, v24

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v24, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    aput-wide v18, v4, v14

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v24, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    aput-wide v18, v4, v14

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v24, 0x3

    move/from16 v25, v5

    move-wide/from16 v26, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    aput-wide v5, v4, v14

    add-int/lit8 v4, v24, 0x4

    move v3, v4

    move/from16 v5, v25

    move-wide/from16 v6, v26

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move/from16 v25, v5

    move-wide/from16 v26, v6

    :goto_1
    move/from16 v2, v25

    const/16 v17, 0x0

    :goto_2
    move/from16 v3, v17

    const/4 v4, 0x2

    if-le v2, v4, :cond_4

    add-int v4, v3, v2

    shr-int/lit8 v2, v2, 0x1

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v5, v4

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v12, v4, 0x1

    aput-wide v10, v5, v12

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v12, v3, 0x4

    aget-wide v12, v5, v12

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v3, 0x5

    aget-wide v17, v5, v14

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v4, 0x2

    aput-wide v12, v5, v14

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v4, 0x3

    aput-wide v17, v5, v14

    :cond_2
    const/16 v19, 0x2

    goto :goto_4

    :cond_3
    const/4 v5, 0x4

    if-le v2, v5, :cond_2

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v13, v3, 0x4

    aget-wide v12, v12, v13

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v17, v3, 0x6

    aget-wide v17, v14, v17

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v19, v4, 0x2

    div-double v20, v15, v12

    aput-wide v20, v14, v19

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v19, v4, 0x3

    div-double v20, v15, v17

    aput-wide v20, v14, v19

    move-wide v13, v12

    move v12, v5

    :goto_3
    if-ge v12, v2, :cond_2

    const/16 v19, 0x2

    mul-int v20, v19, v12

    add-int v20, v3, v20

    add-int v21, v4, v12

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    aget-wide v13, v5, v20

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v22, v20, 0x1

    aget-wide v22, v5, v22

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v24, v20, 0x2

    aget-wide v17, v5, v24

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v24, v20, 0x3

    aget-wide v24, v5, v24

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    aput-wide v13, v5, v21

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v28, v21, 0x1

    aput-wide v22, v5, v28

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v28, v21, 0x2

    aput-wide v17, v5, v28

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v28, v21, 0x3

    aput-wide v24, v5, v28

    add-int/lit8 v12, v12, 0x4

    const/4 v5, 0x4

    goto :goto_3

    :goto_4
    move/from16 v17, v4

    goto/16 :goto_2

    :cond_4
    return-void
.end method

.method private rftbsub(I[DII[DI)V
    .locals 22

    shr-int/lit8 v0, p1, 0x1

    const/4 v1, 0x2

    mul-int v2, v1, p4

    div-int/2addr v2, v0

    const/4 v3, 0x0

    nop

    :goto_0
    if-ge v1, v0, :cond_0

    sub-int v4, p1, v1

    add-int/2addr v3, v2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, p6, p4

    sub-int/2addr v7, v3

    aget-wide v7, p5, v7

    sub-double/2addr v5, v7

    add-int v7, p6, v3

    aget-wide v7, p5, v7

    add-int v9, p3, v1

    add-int v10, p3, v4

    aget-wide v11, p2, v9

    aget-wide v13, p2, v10

    sub-double/2addr v11, v13

    add-int/lit8 v13, v9, 0x1

    aget-wide v13, p2, v13

    add-int/lit8 v15, v10, 0x1

    aget-wide v15, p2, v15

    add-double/2addr v13, v15

    mul-double v15, v5, v11

    mul-double v17, v7, v13

    sub-double v15, v15, v17

    mul-double v17, v5, v13

    mul-double v19, v7, v11

    add-double v17, v17, v19

    aget-wide v19, p2, v9

    sub-double v19, v19, v15

    aput-wide v19, p2, v9

    add-int/lit8 v19, v9, 0x1

    aget-wide v20, p2, v19

    sub-double v20, v20, v17

    aput-wide v20, p2, v19

    aget-wide v19, p2, v10

    add-double v19, v19, v15

    aput-wide v19, p2, v10

    add-int/lit8 v19, v10, 0x1

    aget-wide v20, p2, v19

    sub-double v20, v20, v17

    aput-wide v20, p2, v19

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rftfsub(I[DII[DI)V
    .locals 22

    shr-int/lit8 v0, p1, 0x1

    const/4 v1, 0x2

    mul-int v2, v1, p4

    div-int/2addr v2, v0

    const/4 v3, 0x0

    nop

    :goto_0
    if-ge v1, v0, :cond_0

    sub-int v4, p1, v1

    add-int/2addr v3, v2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, p6, p4

    sub-int/2addr v7, v3

    aget-wide v7, p5, v7

    sub-double/2addr v5, v7

    add-int v7, p6, v3

    aget-wide v7, p5, v7

    add-int v9, p3, v1

    add-int v10, p3, v4

    aget-wide v11, p2, v9

    aget-wide v13, p2, v10

    sub-double/2addr v11, v13

    add-int/lit8 v13, v9, 0x1

    aget-wide v13, p2, v13

    add-int/lit8 v15, v10, 0x1

    aget-wide v15, p2, v15

    add-double/2addr v13, v15

    mul-double v15, v5, v11

    mul-double v17, v7, v13

    sub-double v15, v15, v17

    mul-double v17, v5, v13

    mul-double v19, v7, v11

    add-double v17, v17, v19

    aget-wide v19, p2, v9

    sub-double v19, v19, v15

    aput-wide v19, p2, v9

    add-int/lit8 v19, v9, 0x1

    add-int/lit8 v20, v9, 0x1

    aget-wide v20, p2, v20

    sub-double v20, v17, v20

    aput-wide v20, p2, v19

    aget-wide v19, p2, v10

    add-double v19, v19, v15

    aput-wide v19, p2, v10

    add-int/lit8 v19, v10, 0x1

    add-int/lit8 v20, v10, 0x1

    aget-wide v20, p2, v20

    sub-double v20, v17, v20

    aput-wide v20, p2, v19

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    add-int v1, p3, v0

    add-int/lit8 v1, v1, 0x1

    add-int v4, p3, v0

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, p2, v4

    neg-double v4, v4

    aput-wide v4, p2, v1

    return-void
.end method

.method private scale(D[DIZ)V
    .locals 17

    move-object/from16 v7, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v9, v0, p1

    if-eqz p5, :cond_0

    const/4 v0, 0x2

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_0
    move v11, v0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    const/4 v0, 0x1

    if-le v5, v0, :cond_3

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-lt v11, v0, :cond_3

    div-int v12, v11, v5

    new-array v6, v5, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    :goto_1
    move v4, v0

    if-ge v4, v5, :cond_2

    mul-int v0, v4, v12

    add-int v13, p4, v0

    add-int/lit8 v0, v5, -0x1

    if-ne v4, v0, :cond_1

    add-int v0, p4, v11

    :goto_2
    move v3, v0

    goto :goto_3

    :cond_1
    add-int v0, v13, v12

    goto :goto_2

    :goto_3
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;

    move-object v0, v2

    move-object v1, v7

    move-object v7, v2

    move v2, v13

    move v14, v4

    move-object/from16 v4, p3

    move v15, v5

    move-object v8, v6

    move-wide v5, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DD)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v8, v14

    add-int/lit8 v0, v14, 0x1

    move-object v6, v8

    move v5, v15

    move-object/from16 v7, p0

    goto :goto_1

    :cond_2
    move v15, v5

    move-object v8, v6

    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_5

    :cond_3
    move v15, v5

    move/from16 v0, p4

    :goto_4
    add-int v1, p4, v11

    if-ge v0, v1, :cond_4

    aget-wide v1, p3, v0

    mul-double/2addr v1, v9

    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    return-void
.end method


# virtual methods
.method cfftf([DII)V
    .locals 30

    move-object/from16 v12, p0

    const/4 v13, 0x1

    new-array v14, v13, [I

    iget v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x2

    mul-int v15, v1, v0

    new-array v11, v15, [D

    move/from16 v16, v15

    iget v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x4

    mul-int v17, v2, v0

    const/4 v10, 0x0

    aput v10, v14, v10

    iget-object v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v2, v13, v17

    aget-wide v2, v0, v2

    double-to-int v9, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    move/from16 v3, v16

    move/from16 v19, v0

    move/from16 v18, v2

    move/from16 v20, v3

    :goto_0
    move v8, v1

    add-int/lit8 v0, v9, 0x1

    if-gt v8, v0, :cond_6

    iget-object v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v1, v8, v17

    aget-wide v0, v0, v1

    double-to-int v7, v0

    mul-int v21, v7, v18

    iget v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v22, v0, v21

    add-int v23, v22, v22

    mul-int v24, v23, v18

    packed-switch v7, :pswitch_data_0

    move/from16 v25, v7

    move/from16 v26, v8

    if-nez v19, :cond_4

    const/16 v27, 0x0

    move-object v0, v12

    move-object v1, v14

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v18

    move/from16 v5, v24

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object v8, v11

    move/from16 v28, v9

    move/from16 v9, v27

    move v13, v10

    move/from16 v10, v20

    move-object/from16 v29, v11

    move/from16 v11, p3

    invoke-virtual/range {v0 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

    goto/16 :goto_6

    :pswitch_0
    if-nez v19, :cond_0

    const/4 v6, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v11

    move/from16 v25, v7

    move/from16 v7, v20

    move/from16 v26, v8

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

    goto :goto_1

    :cond_0
    move/from16 v25, v7

    move/from16 v26, v8

    const/4 v4, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object v3, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

    :goto_1
    rsub-int/lit8 v0, v19, 0x1

    goto/16 :goto_5

    :pswitch_1
    move/from16 v25, v7

    move/from16 v26, v8

    if-nez v19, :cond_1

    const/4 v6, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v11

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object v3, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

    :goto_2
    rsub-int/lit8 v0, v19, 0x1

    goto/16 :goto_5

    :pswitch_2
    move/from16 v25, v7

    move/from16 v26, v8

    if-nez v19, :cond_2

    const/4 v6, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v11

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object v3, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

    :goto_3
    rsub-int/lit8 v0, v19, 0x1

    goto :goto_5

    :pswitch_3
    move/from16 v25, v7

    move/from16 v26, v8

    if-nez v19, :cond_3

    const/4 v6, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v11

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v18

    move-object v3, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

    :goto_4
    rsub-int/lit8 v0, v19, 0x1

    nop

    :goto_5
    move/from16 v19, v0

    move/from16 v28, v9

    move-object/from16 v29, v11

    move v0, v13

    move v13, v10

    goto :goto_7

    :cond_4
    move/from16 v28, v9

    move v13, v10

    move-object/from16 v29, v11

    const/4 v7, 0x0

    move-object v0, v12

    move-object v1, v14

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v18

    move/from16 v5, v24

    move-object/from16 v6, v29

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, v20

    move/from16 v11, p3

    invoke-virtual/range {v0 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

    :goto_6
    aget v0, v14, v13

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    rsub-int/lit8 v1, v19, 0x1

    move/from16 v19, v1

    goto :goto_7

    :cond_5
    const/4 v0, 0x1

    :goto_7
    move/from16 v18, v21

    add-int/lit8 v7, v25, -0x1

    mul-int v7, v7, v23

    add-int v20, v20, v7

    add-int/lit8 v1, v26, 0x1

    move v10, v13

    move/from16 v9, v28

    move-object/from16 v11, v29

    move v13, v0

    goto/16 :goto_0

    :cond_6
    move/from16 v28, v9

    move v13, v10

    move-object/from16 v29, v11

    if-nez v19, :cond_7

    return-void

    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v29

    invoke-static {v2, v13, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method cffti()V
    .locals 39

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    const/4 v6, 0x0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    add-int/2addr v9, v2

    if-gt v9, v5, :cond_1

    sget-object v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v11, v9, -0x1

    aget v6, v10, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x2

    :goto_1
    div-int v10, v7, v6

    mul-int v11, v6, v10

    sub-int v11, v7, v11

    if-eqz v11, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v13, v8, 0x1

    add-int/2addr v13, v4

    int-to-double v14, v6

    aput-wide v14, v12, v13

    move v7, v10

    if-ne v6, v3, :cond_4

    if-eq v8, v2, :cond_4

    move v12, v3

    :goto_2
    if-gt v12, v8, :cond_3

    sub-int v13, v8, v12

    add-int/2addr v13, v3

    add-int v14, v13, v4

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v16, v14, 0x1

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v17, v5, v14

    aput-wide v17, v15, v16

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x4

    goto :goto_2

    :cond_3
    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v13, v3, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    aput-wide v14, v5, v13

    :cond_4
    if-ne v7, v2, :cond_9

    nop

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v12, v12

    aput-wide v12, v5, v4

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v12, v2, v4

    int-to-double v13, v8

    aput-wide v13, v5, v12

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v14, v5

    div-double/2addr v12, v14

    const/4 v5, 0x1

    const/4 v14, 0x1

    nop

    :goto_3
    if-gt v2, v8, :cond_8

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v16, v2, 0x1

    add-int v16, v16, v4

    move/from16 v20, v4

    aget-wide v3, v15, v16

    double-to-int v3, v3

    const/4 v4, 0x0

    mul-int v15, v14, v3

    move/from16 v21, v4

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v4, v15

    add-int v16, v4, v4

    move/from16 v22, v4

    const/16 v17, 0x2

    add-int/lit8 v4, v16, 0x2

    move/from16 v23, v5

    add-int/lit8 v5, v3, -0x1

    const/4 v9, 0x1

    :goto_4
    if-gt v9, v5, :cond_7

    move/from16 v16, v23

    move/from16 v24, v5

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v18, v23, -0x1

    add-int v18, v18, v1

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    aput-wide v25, v5, v18

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v18, v23, v1

    const-wide/16 v27, 0x0

    aput-wide v27, v5, v18

    add-int v5, v21, v14

    const-wide/16 v18, 0x0

    move/from16 v29, v6

    move/from16 v30, v7

    int-to-double v6, v5

    mul-double/2addr v6, v12

    move-wide/from16 v27, v18

    const/16 v18, 0x4

    :goto_5
    move/from16 v31, v18

    move/from16 v32, v5

    move/from16 v5, v31

    if-gt v5, v4, :cond_5

    add-int/lit8 v23, v23, 0x2

    add-double v27, v27, v25

    move/from16 v33, v10

    move/from16 v34, v11

    mul-double v10, v27, v6

    add-int v18, v23, v1

    move/from16 v35, v4

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v19, v18, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    aput-wide v36, v4, v19

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    aput-wide v36, v4, v18

    add-int/lit8 v18, v5, 0x2

    move/from16 v5, v32

    move/from16 v10, v33

    move/from16 v11, v34

    move/from16 v4, v35

    goto :goto_5

    :cond_5
    move/from16 v35, v4

    move/from16 v33, v10

    move/from16 v34, v11

    const/4 v4, 0x5

    if-le v3, v4, :cond_6

    add-int v4, v16, v1

    add-int v10, v23, v1

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v18, v4, -0x1

    move/from16 v38, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v19, v10, -0x1

    aget-wide v25, v1, v19

    aput-wide v25, v11, v18

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v18, v11, v10

    aput-wide v18, v1, v4

    goto :goto_6

    :cond_6
    move/from16 v38, v1

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v24

    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v21, v32

    move/from16 v10, v33

    move/from16 v11, v34

    move/from16 v4, v35

    move/from16 v1, v38

    goto/16 :goto_4

    :cond_7
    move/from16 v38, v1

    move/from16 v35, v4

    move/from16 v24, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v33, v10

    move/from16 v34, v11

    move v14, v15

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v17

    move/from16 v4, v20

    move/from16 v5, v23

    goto/16 :goto_3

    :cond_8
    move/from16 v38, v1

    move/from16 v20, v4

    move/from16 v23, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v33, v10

    move/from16 v34, v11

    return-void

    :cond_9
    move/from16 v29, v6

    move/from16 v30, v7

    const/4 v5, 0x4

    goto/16 :goto_1
.end method

.method cffti(II)V
    .locals 39

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x2

    mul-int v4, v3, v1

    const/4 v5, 0x4

    mul-int v6, v5, v1

    const/4 v7, 0x0

    move v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    add-int/2addr v10, v2

    if-gt v10, v5, :cond_1

    sget-object v11, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v12, v10, -0x1

    aget v7, v11, v12

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x2

    :goto_1
    div-int v11, v8, v7

    mul-int v12, v7, v11

    sub-int v12, v8, v12

    if-eqz v12, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v14, p2, v9

    add-int/2addr v14, v2

    add-int/2addr v14, v6

    move v15, v6

    int-to-double v5, v7

    aput-wide v5, v13, v14

    move v8, v11

    if-ne v7, v3, :cond_4

    if-eq v9, v2, :cond_4

    move v5, v3

    :goto_2
    if-gt v5, v9, :cond_3

    sub-int v6, v9, v5

    add-int/2addr v6, v3

    add-int v13, v6, v15

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v16, p2, v13

    add-int/lit8 v16, v16, 0x1

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v18, p2, v13

    aget-wide v18, v3, v18

    aput-wide v18, v14, v16

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v6, p2, 0x2

    add-int/2addr v6, v15

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    aput-wide v13, v3, v6

    :cond_4
    if-ne v8, v2, :cond_9

    nop

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v5, p2, v15

    int-to-double v13, v1

    aput-wide v13, v3, v5

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v5, p2, 0x1

    add-int/2addr v5, v15

    int-to-double v13, v9

    aput-wide v13, v3, v5

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v13, v1

    div-double/2addr v5, v13

    const/4 v3, 0x1

    const/4 v13, 0x1

    move v14, v3

    move v3, v2

    :goto_3
    if-gt v3, v9, :cond_8

    move/from16 v20, v7

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v16, p2, v3

    add-int/lit8 v16, v16, 0x1

    add-int v16, v16, v15

    move/from16 v22, v3

    aget-wide v2, v7, v16

    double-to-int v2, v2

    const/4 v3, 0x0

    mul-int v7, v13, v2

    div-int v16, v1, v7

    add-int v18, v16, v16

    const/16 v17, 0x2

    add-int/lit8 v1, v18, 0x2

    move/from16 v23, v3

    add-int/lit8 v3, v2, -0x1

    const/4 v10, 0x1

    :goto_4
    if-gt v10, v3, :cond_7

    move/from16 v18, v14

    move/from16 v24, v3

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v19, p2, v14

    const/16 v21, 0x1

    add-int/lit8 v19, v19, -0x1

    add-int v19, v19, v4

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    aput-wide v25, v3, v19

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v19, p2, v14

    add-int v19, v19, v4

    const-wide/16 v27, 0x0

    aput-wide v27, v3, v19

    add-int v3, v23, v13

    const-wide/16 v27, 0x0

    move/from16 v30, v8

    move/from16 v29, v9

    int-to-double v8, v3

    mul-double/2addr v8, v5

    move/from16 v19, v14

    const/4 v14, 0x4

    :goto_5
    if-gt v14, v1, :cond_5

    add-int/lit8 v19, v19, 0x2

    add-double v27, v27, v25

    move-wide/from16 v31, v5

    mul-double v5, v27, v8

    add-int v23, v19, v4

    move/from16 v33, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v34, p2, v23

    const/16 v21, 0x1

    add-int/lit8 v34, v34, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    aput-wide v35, v1, v34

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v34, p2, v23

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    aput-wide v35, v1, v34

    add-int/lit8 v14, v14, 0x2

    move-wide/from16 v5, v31

    move/from16 v1, v33

    goto :goto_5

    :cond_5
    move/from16 v33, v1

    move-wide/from16 v31, v5

    const/4 v1, 0x5

    if-le v2, v1, :cond_6

    add-int v1, v18, v4

    add-int v5, v19, v4

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v23, p2, v1

    const/16 v21, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v37, v2

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v25, p2, v5

    add-int/lit8 v25, v25, -0x1

    aget-wide v25, v2, v25

    aput-wide v25, v6, v23

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v6, p2, v1

    move/from16 v38, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v23, p2, v5

    aget-wide v25, v1, v23

    aput-wide v25, v2, v6

    goto :goto_6

    :cond_6
    move/from16 v37, v2

    const/16 v21, 0x1

    :goto_6
    add-int/lit8 v10, v10, 0x1

    move/from16 v23, v3

    move/from16 v14, v19

    move/from16 v3, v24

    move/from16 v9, v29

    move/from16 v8, v30

    move-wide/from16 v5, v31

    move/from16 v1, v33

    move/from16 v2, v37

    goto/16 :goto_4

    :cond_7
    move/from16 v33, v1

    move/from16 v37, v2

    move/from16 v24, v3

    move-wide/from16 v31, v5

    move/from16 v30, v8

    move/from16 v29, v9

    const/16 v21, 0x1

    move v13, v7

    add-int/lit8 v3, v22, 0x1

    move/from16 v7, v20

    move/from16 v2, v21

    move/from16 v1, p1

    goto/16 :goto_3

    :cond_8
    move/from16 v22, v3

    move-wide/from16 v31, v5

    move/from16 v20, v7

    move/from16 v30, v8

    move/from16 v29, v9

    return-void

    :cond_9
    move/from16 v20, v7

    move/from16 v30, v8

    move/from16 v29, v9

    const/16 v17, 0x2

    move v6, v15

    move/from16 v3, v17

    const/4 v5, 0x4

    goto/16 :goto_1
.end method

.method public complexForward([D)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    return-void
.end method

.method public complexForward([DI)V
    .locals 9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int v3, v0, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public complexInverse([DIZ)V
    .locals 9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int v3, v0, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    nop

    :goto_0
    if-eqz p3, :cond_1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public complexInverse([DZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    return-void
.end method

.method passf2(II[DI[DIII)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p7

    mul-int v4, v1, v2

    const/4 v6, 0x2

    if-gt v1, v6, :cond_0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    mul-int v7, v5, v1

    mul-int v8, v6, v7

    add-int v8, p4, v8

    add-int v9, v8, v1

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    add-int v18, p6, v7

    add-int v19, v18, v4

    add-double v20, v10, v14

    aput-wide v20, p5, v18

    add-int/lit8 v20, v18, 0x1

    add-double v21, v12, v16

    aput-wide v21, p5, v20

    sub-double v20, v10, v14

    aput-wide v20, p5, v19

    add-int/lit8 v20, v19, 0x1

    sub-double v21, v12, v16

    aput-wide v21, p5, v20

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_2

    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v9, v1, -0x1

    if-ge v8, v9, :cond_1

    mul-int v9, v7, v1

    add-int v10, p4, v8

    mul-int v11, v6, v9

    add-int/2addr v10, v11

    add-int v11, v10, v1

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    add-int v20, v8, v3

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v21, v5, v20

    move/from16 v5, p8

    move/from16 v23, v7

    int-to-double v6, v5

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v24, v20, 0x1

    aget-wide v24, v1, v24

    mul-double v6, v6, v24

    sub-double v24, v12, v16

    sub-double v26, v14, v18

    add-int v1, p6, v8

    add-int/2addr v1, v9

    add-int v28, v1, v4

    add-double v29, v12, v16

    aput-wide v29, p5, v1

    add-int/lit8 v29, v1, 0x1

    add-double v30, v14, v18

    aput-wide v30, p5, v29

    mul-double v29, v21, v24

    mul-double v31, v6, v26

    sub-double v29, v29, v31

    aput-wide v29, p5, v28

    add-int/lit8 v29, v28, 0x1

    mul-double v30, v21, v26

    mul-double v32, v6, v24

    add-double v30, v30, v32

    aput-wide v30, p5, v29

    add-int/lit8 v8, v8, 0x2

    move/from16 v7, v23

    move/from16 v1, p1

    const/4 v6, 0x2

    goto :goto_2

    :cond_1
    move/from16 v5, p8

    move/from16 v23, v7

    add-int/lit8 v7, v23, 0x1

    move/from16 v1, p1

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    move/from16 v5, p8

    return-void
.end method

.method passf3(II[DI[DIII)V
    .locals 70

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p8

    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    const-wide v9, 0x3febb67ae8584cabL    # 0.8660254037844387

    move/from16 v11, p7

    add-int v12, v11, v1

    mul-int v13, v2, v1

    const-wide v15, 0x3febb67ae8584cabL    # 0.8660254037844387

    const-wide/high16 v17, -0x4020000000000000L    # -0.5

    const/4 v14, 0x2

    const/16 v20, 0x1

    if-ne v1, v14, :cond_1

    nop

    :goto_0
    move/from16 v21, v20

    move/from16 v14, v21

    if-gt v14, v2, :cond_0

    const/16 v19, 0x3

    mul-int v20, v19, v14

    const/16 v21, 0x2

    add-int/lit8 v20, v20, -0x2

    mul-int v20, v20, v1

    add-int v20, p4, v20

    add-int v21, v20, v1

    sub-int v23, v20, v1

    aget-wide v24, p3, v20

    add-int/lit8 v26, v20, 0x1

    aget-wide v26, p3, v26

    aget-wide v28, p3, v21

    add-int/lit8 v30, v21, 0x1

    aget-wide v30, p3, v30

    aget-wide v32, p3, v23

    add-int/lit8 v34, v23, 0x1

    aget-wide v34, p3, v34

    add-double v36, v24, v28

    mul-double v38, v17, v36

    add-double v38, v32, v38

    add-double v40, v26, v30

    mul-double v42, v17, v40

    add-double v42, v34, v42

    move-wide/from16 v44, v7

    int-to-double v7, v6

    mul-double/2addr v7, v15

    sub-double v46, v24, v28

    mul-double v7, v7, v46

    move-wide/from16 v48, v9

    int-to-double v9, v6

    mul-double/2addr v9, v15

    sub-double v46, v26, v30

    mul-double v9, v9, v46

    add-int/lit8 v46, v14, -0x1

    mul-int v46, v46, v1

    add-int v46, p6, v46

    add-int v47, v46, v13

    add-int v50, v47, v13

    aget-wide v51, p3, v23

    add-double v51, v51, v36

    aput-wide v51, p5, v46

    add-int/lit8 v51, v46, 0x1

    add-double v52, v34, v40

    aput-wide v52, p5, v51

    sub-double v51, v38, v9

    aput-wide v51, p5, v47

    add-int/lit8 v51, v47, 0x1

    add-double v52, v42, v7

    aput-wide v52, p5, v51

    add-double v51, v38, v9

    aput-wide v51, p5, v50

    add-int/lit8 v51, v50, 0x1

    sub-double v52, v42, v7

    aput-wide v52, p5, v51

    add-int/lit8 v20, v14, 0x1

    move-wide/from16 v7, v44

    move-wide/from16 v9, v48

    const/4 v14, 0x2

    goto :goto_0

    :cond_0
    move-wide/from16 v44, v7

    move-wide/from16 v48, v9

    move/from16 v61, v11

    goto/16 :goto_3

    :cond_1
    move-wide/from16 v44, v7

    move-wide/from16 v48, v9

    :goto_1
    move/from16 v7, v20

    if-gt v7, v2, :cond_3

    const/4 v8, 0x3

    mul-int v14, v8, v7

    const/4 v9, 0x2

    sub-int/2addr v14, v9

    mul-int/2addr v14, v1

    add-int v10, p4, v14

    add-int/lit8 v14, v7, -0x1

    mul-int/2addr v14, v1

    add-int v14, p6, v14

    const/16 v19, 0x0

    :goto_2
    move/from16 v54, v19

    add-int/lit8 v8, v1, -0x1

    move/from16 v9, v54

    if-ge v9, v8, :cond_2

    add-int v54, v9, v10

    add-int v8, v54, v1

    sub-int v19, v54, v1

    aget-wide v20, p3, v54

    add-int/lit8 v22, v54, 0x1

    aget-wide v22, p3, v22

    aget-wide v24, p3, v8

    add-int/lit8 v26, v8, 0x1

    aget-wide v26, p3, v26

    aget-wide v28, p3, v19

    add-int/lit8 v30, v19, 0x1

    aget-wide v30, p3, v30

    add-double v32, v20, v24

    mul-double v34, v17, v32

    add-double v34, v28, v34

    add-double v36, v22, v26

    mul-double v38, v17, v36

    add-double v38, v30, v38

    int-to-double v1, v6

    mul-double/2addr v1, v15

    sub-double v40, v20, v24

    mul-double v1, v1, v40

    int-to-double v3, v6

    mul-double/2addr v3, v15

    sub-double v40, v22, v26

    mul-double v3, v3, v40

    sub-double v40, v34, v3

    add-double v42, v34, v3

    add-double v46, v38, v1

    sub-double v50, v38, v1

    add-int v52, v9, v11

    add-int v53, v9, v12

    move-wide/from16 v55, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v1, v1, v52

    move-wide/from16 v57, v3

    int-to-double v3, v6

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v59, v52, 0x1

    aget-wide v59, v5, v59

    mul-double v3, v3, v59

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v59, v5, v53

    move/from16 v62, v10

    move/from16 v61, v11

    int-to-double v10, v6

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v63, v53, 0x1

    aget-wide v63, v5, v63

    mul-double v10, v10, v63

    add-int v5, v9, v14

    add-int v63, v5, v13

    add-int v64, v63, v13

    add-double v65, v28, v32

    aput-wide v65, p5, v5

    add-int/lit8 v65, v5, 0x1

    add-double v66, v30, v36

    aput-wide v66, p5, v65

    mul-double v65, v1, v40

    mul-double v67, v3, v46

    sub-double v65, v65, v67

    aput-wide v65, p5, v63

    add-int/lit8 v65, v63, 0x1

    mul-double v66, v1, v46

    mul-double v68, v3, v40

    add-double v66, v66, v68

    aput-wide v66, p5, v65

    mul-double v65, v59, v42

    mul-double v67, v10, v50

    sub-double v65, v65, v67

    aput-wide v65, p5, v64

    add-int/lit8 v65, v64, 0x1

    mul-double v66, v59, v50

    mul-double v68, v10, v42

    add-double v66, v66, v68

    aput-wide v66, p5, v65

    add-int/lit8 v19, v9, 0x2

    move/from16 v11, v61

    move/from16 v10, v62

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v8, 0x3

    const/4 v9, 0x2

    goto/16 :goto_2

    :cond_2
    move/from16 v61, v11

    add-int/lit8 v20, v7, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_1

    :cond_3
    move/from16 v61, v11

    :goto_3
    return-void
.end method

.method passf4(II[DI[DIII)V
    .locals 83

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p8

    move/from16 v6, p7

    add-int v7, v6, v1

    add-int v8, v7, v1

    mul-int v9, v2, v1

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne v1, v11, :cond_1

    const/4 v12, 0x0

    :goto_0
    move v11, v12

    if-ge v11, v2, :cond_0

    mul-int v12, v11, v1

    mul-int v13, v10, v12

    add-int v13, p4, v13

    add-int/lit8 v13, v13, 0x1

    add-int v14, v13, v1

    add-int v15, v14, v1

    add-int v16, v15, v1

    add-int/lit8 v17, v13, -0x1

    aget-wide v17, p3, v17

    aget-wide v19, p3, v13

    add-int/lit8 v21, v14, -0x1

    aget-wide v21, p3, v21

    aget-wide v23, p3, v14

    add-int/lit8 v25, v15, -0x1

    aget-wide v25, p3, v25

    aget-wide v27, p3, v15

    add-int/lit8 v29, v16, -0x1

    aget-wide v29, p3, v29

    aget-wide v31, p3, v16

    sub-double v33, v19, v27

    add-double v35, v19, v27

    sub-double v37, v31, v23

    add-double v39, v23, v31

    sub-double v41, v17, v25

    add-double v43, v17, v25

    sub-double v45, v21, v29

    add-double v47, v21, v29

    add-int v49, p6, v12

    add-int v50, v49, v9

    add-int v51, v50, v9

    add-int v52, v51, v9

    add-double v53, v43, v47

    aput-wide v53, p5, v49

    add-int/lit8 v53, v49, 0x1

    add-double v54, v35, v39

    aput-wide v54, p5, v53

    move/from16 v57, v11

    int-to-double v10, v5

    mul-double v10, v10, v37

    add-double v10, v41, v10

    aput-wide v10, p5, v50

    add-int/lit8 v10, v50, 0x1

    move/from16 v58, v12

    int-to-double v11, v5

    mul-double v11, v11, v45

    add-double v11, v33, v11

    aput-wide v11, p5, v10

    sub-double v10, v43, v47

    aput-wide v10, p5, v51

    add-int/lit8 v10, v51, 0x1

    sub-double v11, v35, v39

    aput-wide v11, p5, v10

    int-to-double v10, v5

    mul-double v10, v10, v37

    sub-double v10, v41, v10

    aput-wide v10, p5, v52

    add-int/lit8 v10, v52, 0x1

    int-to-double v11, v5

    mul-double v11, v11, v45

    sub-double v11, v33, v11

    aput-wide v11, p5, v10

    add-int/lit8 v12, v57, 0x1

    const/4 v10, 0x4

    goto :goto_0

    :cond_0
    move/from16 v66, v6

    move/from16 v67, v7

    goto/16 :goto_3

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_3

    mul-int v11, v10, v1

    add-int/lit8 v13, p4, 0x1

    const/4 v14, 0x4

    mul-int v15, v14, v11

    add-int/2addr v13, v15

    const/4 v15, 0x0

    :goto_2
    move/from16 v59, v15

    add-int/lit8 v12, v1, -0x1

    move/from16 v2, v59

    if-ge v2, v12, :cond_2

    add-int v59, v2, v13

    add-int v12, v59, v1

    add-int v15, v12, v1

    add-int v16, v15, v1

    add-int/lit8 v17, v59, -0x1

    aget-wide v17, p3, v17

    aget-wide v19, p3, v59

    add-int/lit8 v21, v12, -0x1

    aget-wide v21, p3, v21

    aget-wide v23, p3, v12

    add-int/lit8 v25, v15, -0x1

    aget-wide v25, p3, v25

    aget-wide v27, p3, v15

    add-int/lit8 v29, v16, -0x1

    aget-wide v29, p3, v29

    aget-wide v31, p3, v16

    sub-double v33, v19, v27

    add-double v35, v19, v27

    add-double v37, v23, v31

    sub-double v39, v31, v23

    sub-double v41, v17, v25

    add-double v43, v17, v25

    sub-double v45, v21, v29

    add-double v47, v21, v29

    sub-double v49, v43, v47

    sub-double v51, v35, v37

    int-to-double v3, v5

    mul-double v3, v3, v39

    add-double v3, v41, v3

    move/from16 v61, v12

    move/from16 v60, v13

    int-to-double v12, v5

    mul-double v12, v12, v39

    sub-double v12, v41, v12

    move-wide/from16 v62, v12

    int-to-double v12, v5

    mul-double v12, v12, v45

    add-double v12, v33, v12

    move-wide/from16 v64, v12

    int-to-double v12, v5

    mul-double v12, v12, v45

    sub-double v12, v33, v12

    add-int v53, v2, v6

    add-int v54, v2, v7

    add-int v55, v2, v8

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v56, v1, v53

    move/from16 v66, v6

    move/from16 v67, v7

    int-to-double v6, v5

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v58, v53, 0x1

    aget-wide v68, v1, v58

    mul-double v6, v6, v68

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v68, v1, v54

    move-wide/from16 v70, v12

    int-to-double v12, v5

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v58, v54, 0x1

    aget-wide v72, v1, v58

    mul-double v12, v12, v72

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v72, v1, v55

    move-wide/from16 v74, v12

    int-to-double v12, v5

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v58, v55, 0x1

    aget-wide v76, v1, v58

    mul-double v12, v12, v76

    add-int v1, p6, v2

    add-int/2addr v1, v11

    add-int v58, v1, v9

    add-int v76, v58, v9

    add-int v77, v76, v9

    add-double v78, v43, v47

    aput-wide v78, p5, v1

    add-int/lit8 v78, v1, 0x1

    add-double v79, v35, v37

    aput-wide v79, p5, v78

    mul-double v78, v56, v3

    mul-double v80, v6, v64

    sub-double v78, v78, v80

    aput-wide v78, p5, v58

    add-int/lit8 v78, v58, 0x1

    mul-double v79, v56, v64

    mul-double v81, v6, v3

    add-double v79, v79, v81

    aput-wide v79, p5, v78

    mul-double v78, v68, v49

    mul-double v80, v74, v51

    sub-double v78, v78, v80

    aput-wide v78, p5, v76

    add-int/lit8 v78, v76, 0x1

    mul-double v79, v68, v51

    mul-double v81, v74, v49

    add-double v79, v79, v81

    aput-wide v79, p5, v78

    mul-double v78, v72, v62

    mul-double v80, v12, v70

    sub-double v78, v78, v80

    aput-wide v78, p5, v77

    add-int/lit8 v78, v77, 0x1

    mul-double v79, v72, v70

    mul-double v81, v12, v62

    add-double v79, v79, v81

    aput-wide v79, p5, v78

    add-int/lit8 v15, v2, 0x2

    move/from16 v13, v60

    move/from16 v6, v66

    move/from16 v7, v67

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_2

    :cond_2
    move/from16 v66, v6

    move/from16 v67, v7

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_1

    :cond_3
    move/from16 v66, v6

    move/from16 v67, v7

    :goto_3
    return-void
.end method

.method passf5(II[DI[DIII)V
    .locals 131

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p8

    const-wide v7, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const-wide v9, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v11, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v13, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    move/from16 v15, p7

    add-int v16, v15, v1

    add-int v17, v16, v1

    add-int v18, v17, v1

    mul-int v19, v2, v1

    move-wide/from16 v20, v7

    const/4 v7, 0x2

    const-wide v22, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v24, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v26, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v28, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const/4 v8, 0x1

    if-ne v1, v7, :cond_1

    move v7, v8

    :goto_0
    if-gt v7, v2, :cond_0

    const/16 v30, 0x5

    mul-int v30, v30, v7

    add-int/lit8 v30, v30, -0x4

    mul-int v30, v30, v1

    add-int v30, p4, v30

    add-int/lit8 v30, v30, 0x1

    add-int v31, v30, v1

    sub-int v32, v30, v1

    add-int v33, v31, v1

    add-int v34, v33, v1

    add-int/lit8 v35, v30, -0x1

    aget-wide v35, p3, v35

    aget-wide v37, p3, v30

    add-int/lit8 v39, v31, -0x1

    aget-wide v39, p3, v39

    aget-wide v41, p3, v31

    add-int/lit8 v43, v32, -0x1

    aget-wide v43, p3, v43

    aget-wide v45, p3, v32

    add-int/lit8 v47, v33, -0x1

    aget-wide v47, p3, v47

    aget-wide v49, p3, v33

    add-int/lit8 v51, v34, -0x1

    aget-wide v51, p3, v51

    aget-wide v53, p3, v34

    sub-double v55, v37, v53

    add-double v57, v37, v53

    sub-double v59, v41, v49

    add-double v61, v41, v49

    sub-double v63, v35, v51

    add-double v65, v35, v51

    sub-double v67, v39, v47

    add-double v69, v39, v47

    mul-double v71, v28, v65

    add-double v71, v43, v71

    mul-double v73, v26, v69

    add-double v71, v71, v73

    mul-double v73, v28, v57

    add-double v73, v45, v73

    mul-double v75, v26, v61

    add-double v73, v73, v75

    mul-double v75, v26, v65

    add-double v75, v43, v75

    mul-double v77, v28, v69

    add-double v75, v75, v77

    mul-double v77, v26, v57

    add-double v77, v45, v77

    mul-double v79, v28, v61

    add-double v77, v77, v79

    move-wide/from16 v81, v9

    int-to-double v8, v6

    mul-double v79, v24, v63

    mul-double v84, v22, v67

    add-double v79, v79, v84

    mul-double v8, v8, v79

    move-wide/from16 v86, v11

    int-to-double v10, v6

    mul-double v79, v24, v55

    mul-double v84, v22, v59

    add-double v79, v79, v84

    mul-double v10, v10, v79

    move-wide/from16 v88, v13

    int-to-double v12, v6

    mul-double v79, v22, v63

    mul-double v84, v24, v67

    sub-double v79, v79, v84

    mul-double v12, v12, v79

    int-to-double v3, v6

    mul-double v79, v22, v55

    mul-double v84, v24, v59

    sub-double v79, v79, v84

    mul-double v3, v3, v79

    add-int/lit8 v14, v7, -0x1

    mul-int/2addr v14, v1

    add-int v14, p6, v14

    add-int v79, v14, v19

    add-int v80, v79, v19

    add-int v84, v80, v19

    add-int v85, v84, v19

    add-double v92, v43, v65

    add-double v92, v92, v69

    aput-wide v92, p5, v14

    add-int/lit8 v92, v14, 0x1

    add-double v93, v45, v57

    add-double v93, v93, v61

    aput-wide v93, p5, v92

    sub-double v92, v71, v10

    aput-wide v92, p5, v79

    add-int/lit8 v92, v79, 0x1

    add-double v93, v73, v8

    aput-wide v93, p5, v92

    sub-double v92, v75, v3

    aput-wide v92, p5, v80

    add-int/lit8 v92, v80, 0x1

    add-double v93, v77, v12

    aput-wide v93, p5, v92

    add-double v92, v75, v3

    aput-wide v92, p5, v84

    add-int/lit8 v92, v84, 0x1

    sub-double v93, v77, v12

    aput-wide v93, p5, v92

    add-double v92, v71, v10

    aput-wide v92, p5, v85

    add-int/lit8 v92, v85, 0x1

    sub-double v93, v73, v8

    aput-wide v93, p5, v92

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v9, v81

    move-wide/from16 v11, v86

    move-wide/from16 v13, v88

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v81, v9

    move-wide/from16 v86, v11

    move-wide/from16 v88, v13

    goto/16 :goto_3

    :cond_1
    move-wide/from16 v81, v9

    move-wide/from16 v86, v11

    move-wide/from16 v88, v13

    const/16 v83, 0x1

    :goto_1
    move/from16 v3, v83

    if-gt v3, v2, :cond_3

    add-int/lit8 v7, p4, 0x1

    mul-int/lit8 v8, v3, 0x5

    add-int/lit8 v8, v8, -0x4

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    add-int/lit8 v8, v3, -0x1

    mul-int/2addr v8, v1

    add-int v8, p6, v8

    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v10, v1, -0x1

    if-ge v9, v10, :cond_2

    add-int v10, v9, v7

    add-int v11, v10, v1

    sub-int v12, v10, v1

    add-int v13, v11, v1

    add-int v14, v13, v1

    add-int/lit8 v30, v10, -0x1

    aget-wide v32, p3, v30

    aget-wide v34, p3, v10

    add-int/lit8 v30, v11, -0x1

    aget-wide v36, p3, v30

    aget-wide v38, p3, v11

    add-int/lit8 v30, v12, -0x1

    aget-wide v40, p3, v30

    aget-wide v42, p3, v12

    add-int/lit8 v30, v13, -0x1

    aget-wide v44, p3, v30

    aget-wide v46, p3, v13

    add-int/lit8 v30, v14, -0x1

    aget-wide v48, p3, v30

    aget-wide v50, p3, v14

    sub-double v52, v34, v50

    add-double v54, v34, v50

    sub-double v56, v38, v46

    add-double v58, v38, v46

    sub-double v60, v32, v48

    add-double v62, v32, v48

    sub-double v64, v36, v44

    add-double v66, v36, v44

    mul-double v68, v28, v62

    add-double v68, v40, v68

    mul-double v70, v26, v66

    add-double v68, v68, v70

    mul-double v70, v28, v54

    add-double v70, v42, v70

    mul-double v72, v26, v58

    add-double v70, v70, v72

    mul-double v72, v26, v62

    add-double v72, v40, v72

    mul-double v74, v28, v66

    add-double v72, v72, v74

    mul-double v74, v26, v54

    add-double v74, v42, v74

    mul-double v76, v28, v58

    add-double v74, v74, v76

    int-to-double v1, v6

    mul-double v76, v24, v60

    mul-double v78, v22, v64

    add-double v76, v76, v78

    mul-double v1, v1, v76

    move/from16 v95, v10

    move/from16 v96, v11

    int-to-double v10, v6

    mul-double v76, v24, v52

    mul-double v78, v22, v56

    add-double v76, v76, v78

    mul-double v10, v10, v76

    move/from16 v97, v12

    move/from16 v98, v13

    int-to-double v12, v6

    mul-double v76, v22, v60

    mul-double v78, v24, v64

    sub-double v76, v76, v78

    mul-double v12, v12, v76

    move/from16 v99, v3

    int-to-double v3, v6

    mul-double v76, v22, v52

    mul-double v78, v24, v56

    sub-double v76, v76, v78

    mul-double v3, v3, v76

    sub-double v76, v72, v3

    add-double v78, v72, v3

    add-double v83, v74, v12

    sub-double v90, v74, v12

    add-double v92, v68, v10

    sub-double v100, v68, v10

    sub-double v102, v70, v1

    add-double v104, v70, v1

    add-int v30, v9, v15

    add-int v80, v9, v16

    add-int v85, v9, v17

    add-int v94, v9, v18

    move-wide/from16 v106, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v1, v1, v30

    move-wide/from16 v108, v3

    int-to-double v3, v6

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v110, v30, 0x1

    aget-wide v110, v5, v110

    mul-double v3, v3, v110

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v110, v5, v80

    move-wide/from16 v112, v10

    int-to-double v10, v6

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v114, v80, 0x1

    aget-wide v114, v5, v114

    mul-double v10, v10, v114

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v114, v5, v85

    move-wide/from16 v116, v12

    int-to-double v12, v6

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v118, v85, 0x1

    aget-wide v118, v5, v118

    mul-double v12, v12, v118

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v118, v5, v94

    move-wide/from16 v120, v12

    int-to-double v12, v6

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v122, v94, 0x1

    aget-wide v122, v5, v122

    mul-double v12, v12, v122

    add-int v5, v9, v8

    add-int v122, v5, v19

    add-int v123, v122, v19

    add-int v124, v123, v19

    add-int v125, v124, v19

    add-double v126, v40, v62

    add-double v126, v126, v66

    aput-wide v126, p5, v5

    add-int/lit8 v126, v5, 0x1

    add-double v127, v42, v54

    add-double v127, v127, v58

    aput-wide v127, p5, v126

    mul-double v126, v1, v100

    mul-double v128, v3, v104

    sub-double v126, v126, v128

    aput-wide v126, p5, v122

    add-int/lit8 v126, v122, 0x1

    mul-double v127, v1, v104

    mul-double v129, v3, v100

    add-double v127, v127, v129

    aput-wide v127, p5, v126

    mul-double v126, v110, v76

    mul-double v128, v10, v83

    sub-double v126, v126, v128

    aput-wide v126, p5, v123

    add-int/lit8 v126, v123, 0x1

    mul-double v127, v110, v83

    mul-double v129, v10, v76

    add-double v127, v127, v129

    aput-wide v127, p5, v126

    mul-double v126, v114, v78

    mul-double v128, v120, v90

    sub-double v126, v126, v128

    aput-wide v126, p5, v124

    add-int/lit8 v126, v124, 0x1

    mul-double v127, v114, v90

    mul-double v129, v120, v78

    add-double v127, v127, v129

    aput-wide v127, p5, v126

    mul-double v126, v118, v92

    mul-double v128, v12, v102

    sub-double v126, v126, v128

    aput-wide v126, p5, v125

    add-int/lit8 v126, v125, 0x1

    mul-double v127, v118, v102

    mul-double v129, v12, v92

    add-double v127, v127, v129

    aput-wide v127, p5, v126

    add-int/lit8 v9, v9, 0x2

    move/from16 v3, v99

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_2

    :cond_2
    move/from16 v99, v3

    add-int/lit8 v83, v99, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method passfg([IIIII[DI[DIII)V
    .locals 62

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p10

    div-int/lit8 v12, v2, 0x2

    add-int/lit8 v13, v3, 0x1

    const/4 v14, 0x2

    div-int/2addr v13, v14

    mul-int v15, v3, v2

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-lt v2, v4, :cond_5

    move/from16 v18, v17

    :goto_0
    move/from16 v19, v18

    move/from16 v14, v19

    if-ge v14, v13, :cond_2

    sub-int v18, v3, v14

    mul-int v19, v14, v2

    mul-int v21, v18, v2

    move/from16 v22, v16

    :goto_1
    move/from16 v23, v22

    move/from16 v24, v12

    move/from16 v12, v23

    if-ge v12, v4, :cond_1

    mul-int v23, v12, v2

    mul-int v22, v19, v4

    add-int v22, v23, v22

    mul-int v25, v21, v4

    add-int v25, v23, v25

    mul-int v26, v23, v3

    move/from16 v27, v16

    :goto_2
    move/from16 v28, v27

    move/from16 v1, v28

    if-ge v1, v2, :cond_0

    add-int v27, v9, v1

    add-int v28, v7, v1

    add-int v28, v28, v19

    add-int v28, v28, v26

    aget-wide v30, v6, v28

    add-int v28, v7, v1

    add-int v28, v28, v21

    add-int v28, v28, v26

    aget-wide v32, v6, v28

    add-int v28, v27, v22

    add-double v34, v30, v32

    aput-wide v34, v8, v28

    add-int v28, v27, v25

    sub-double v34, v30, v32

    aput-wide v34, v8, v28

    add-int/lit8 v27, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v22, v12, 0x1

    move/from16 v12, v24

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v14, 0x1

    move/from16 v18, v1

    move/from16 v12, v24

    const/4 v14, 0x2

    goto :goto_0

    :cond_2
    move/from16 v24, v12

    move/from16 v1, v16

    :goto_3
    if-ge v1, v4, :cond_4

    mul-int v12, v1, v2

    mul-int v14, v12, v3

    move/from16 v18, v16

    :goto_4
    move/from16 v36, v18

    move/from16 v37, v15

    move/from16 v15, v36

    if-ge v15, v2, :cond_3

    add-int v18, v9, v15

    add-int v18, v18, v12

    add-int v19, v7, v15

    add-int v19, v19, v14

    aget-wide v21, v6, v19

    aput-wide v21, v8, v18

    add-int/lit8 v18, v15, 0x1

    move/from16 v15, v37

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v37

    goto :goto_3

    :cond_4
    move/from16 v37, v15

    goto/16 :goto_a

    :cond_5
    move/from16 v24, v12

    move/from16 v37, v15

    move/from16 v1, v17

    :goto_5
    if-ge v1, v13, :cond_8

    sub-int v12, v3, v1

    mul-int v14, v1, v4

    mul-int/2addr v14, v2

    mul-int v15, v12, v4

    mul-int/2addr v15, v2

    mul-int v18, v1, v2

    mul-int v19, v12, v2

    move/from16 v21, v16

    :goto_6
    move/from16 v38, v21

    move/from16 v39, v12

    move/from16 v12, v38

    if-ge v12, v2, :cond_7

    move/from16 v21, v16

    :goto_7
    move/from16 v40, v21

    move/from16 v10, v40

    if-ge v10, v4, :cond_6

    mul-int v40, v10, v2

    mul-int v21, v40, v3

    add-int v22, v9, v12

    add-int v23, v7, v12

    add-int v25, v23, v18

    add-int v25, v25, v21

    aget-wide v25, v6, v25

    add-int v27, v23, v19

    add-int v27, v27, v21

    aget-wide v27, v6, v27

    add-int v30, v22, v40

    add-int v30, v30, v14

    add-double v31, v25, v27

    aput-wide v31, v8, v30

    add-int v30, v22, v40

    add-int v30, v30, v15

    sub-double v31, v25, v27

    aput-wide v31, v8, v30

    add-int/lit8 v21, v10, 0x1

    move/from16 v10, p11

    goto :goto_7

    :cond_6
    add-int/lit8 v21, v12, 0x1

    move/from16 v12, v39

    move/from16 v10, p11

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, p11

    goto :goto_5

    :cond_8
    move/from16 v1, v16

    :goto_8
    if-ge v1, v2, :cond_a

    move/from16 v10, v16

    :goto_9
    if-ge v10, v4, :cond_9

    mul-int v12, v10, v2

    add-int v14, v9, v1

    add-int/2addr v14, v12

    add-int v15, v7, v1

    mul-int v18, v12, v3

    add-int v15, v15, v18

    aget-wide v18, v6, v15

    aput-wide v18, v8, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_a
    :goto_a
    const/4 v1, 0x2

    rsub-int/lit8 v14, v2, 0x2

    const/4 v1, 0x0

    add-int/lit8 v10, v3, -0x1

    mul-int/2addr v10, v5

    move v12, v1

    move/from16 v1, v17

    :goto_b
    if-ge v1, v13, :cond_f

    sub-int v15, v3, v1

    add-int/2addr v14, v2

    mul-int v18, v1, v5

    mul-int v19, v15, v5

    add-int v21, v14, v11

    move/from16 v41, v15

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v22, v21, -0x2

    aget-wide v22, v15, v22

    move/from16 v15, p11

    int-to-double v3, v15

    move/from16 v42, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v25, v21, -0x1

    aget-wide v25, v1, v25

    mul-double v3, v3, v25

    move/from16 v1, v16

    :goto_c
    if-ge v1, v5, :cond_b

    add-int v25, v7, v1

    add-int v26, v9, v1

    add-int v27, v25, v18

    aget-wide v30, v8, v26

    add-int v28, v26, v5

    aget-wide v32, v8, v28

    mul-double v32, v32, v22

    add-double v30, v30, v32

    aput-wide v30, v6, v27

    add-int v27, v25, v19

    add-int v28, v26, v10

    aget-wide v30, v8, v28

    mul-double v30, v30, v3

    aput-wide v30, v6, v27

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_b
    move v1, v14

    add-int/2addr v12, v2

    move/from16 v25, v1

    const/4 v1, 0x2

    :goto_d
    if-ge v1, v13, :cond_e

    move-wide/from16 v43, v3

    move/from16 v3, p3

    sub-int v4, v3, v1

    move/from16 v45, v10

    add-int v10, v25, v12

    move/from16 v46, v12

    move/from16 v12, v37

    if-le v10, v12, :cond_c

    sub-int/2addr v10, v12

    :cond_c
    move/from16 v25, v10

    add-int v10, v25, v11

    move/from16 v47, v12

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v26, v10, -0x2

    aget-wide v26, v12, v26

    move/from16 v48, v11

    int-to-double v11, v15

    move/from16 v49, v14

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v28, v10, -0x1

    aget-wide v30, v14, v28

    mul-double v11, v11, v30

    mul-int v14, v1, v5

    mul-int v28, v4, v5

    move/from16 v30, v16

    :goto_e
    move/from16 v50, v30

    move/from16 v51, v4

    move/from16 v4, v50

    if-ge v4, v5, :cond_d

    add-int v30, v7, v4

    add-int v31, v9, v4

    add-int v32, v30, v18

    aget-wide v33, v6, v32

    add-int v35, v31, v14

    aget-wide v35, v8, v35

    mul-double v35, v35, v26

    add-double v33, v33, v35

    aput-wide v33, v6, v32

    add-int v32, v30, v19

    aget-wide v33, v6, v32

    add-int v35, v31, v28

    aget-wide v35, v8, v35

    mul-double v35, v35, v11

    add-double v33, v33, v35

    aput-wide v33, v6, v32

    add-int/lit8 v30, v4, 0x1

    move/from16 v4, v51

    goto :goto_e

    :cond_d
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v3, v43

    move/from16 v10, v45

    move/from16 v12, v46

    move/from16 v37, v47

    move/from16 v11, v48

    move/from16 v14, v49

    goto :goto_d

    :cond_e
    move-wide/from16 v43, v3

    move/from16 v45, v10

    move/from16 v48, v11

    move/from16 v46, v12

    move/from16 v49, v14

    move/from16 v47, v37

    move/from16 v3, p3

    add-int/lit8 v1, v42, 0x1

    move/from16 v4, p4

    goto/16 :goto_b

    :cond_f
    move/from16 v42, v1

    move/from16 v45, v10

    move/from16 v48, v11

    move v1, v12

    move/from16 v47, v37

    move/from16 v15, p11

    move/from16 v4, v17

    :goto_f
    if-ge v4, v13, :cond_11

    mul-int v10, v4, v5

    move/from16 v11, v16

    :goto_10
    if-ge v11, v5, :cond_10

    add-int v12, v9, v11

    aget-wide v18, v8, v12

    add-int v21, v12, v10

    aget-wide v21, v8, v21

    add-double v18, v18, v21

    aput-wide v18, v8, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_11
    move/from16 v4, v17

    :goto_11
    if-ge v4, v13, :cond_13

    sub-int v10, v3, v4

    mul-int v11, v4, v5

    mul-int v12, v10, v5

    move/from16 v18, v17

    :goto_12
    move/from16 v52, v18

    move/from16 v53, v1

    move/from16 v1, v52

    if-ge v1, v5, :cond_12

    add-int v18, v9, v1

    add-int v19, v7, v1

    add-int v21, v19, v11

    add-int v22, v19, v12

    add-int/lit8 v23, v21, -0x1

    aget-wide v25, v6, v23

    aget-wide v27, v6, v21

    add-int/lit8 v23, v22, -0x1

    aget-wide v30, v6, v23

    aget-wide v32, v6, v22

    add-int v23, v18, v11

    add-int v34, v18, v12

    add-int/lit8 v35, v23, -0x1

    sub-double v36, v25, v32

    aput-wide v36, v8, v35

    add-int/lit8 v35, v34, -0x1

    add-double v36, v25, v32

    aput-wide v36, v8, v35

    add-double v35, v27, v30

    aput-wide v35, v8, v23

    sub-double v35, v27, v30

    aput-wide v35, v8, v34

    add-int/lit8 v18, v1, 0x2

    move/from16 v1, v53

    goto :goto_12

    :cond_12
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v53

    goto :goto_11

    :cond_13
    move/from16 v53, v1

    aput v17, p1, v16

    const/4 v4, 0x2

    if-ne v2, v4, :cond_14

    return-void

    :cond_14
    aput v16, p1, v16

    invoke-static {v8, v9, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v4, p4

    mul-int v10, v4, v2

    move/from16 v11, v17

    :goto_13
    if-ge v11, v3, :cond_16

    mul-int v12, v11, v10

    move/from16 v18, v16

    :goto_14
    move/from16 v54, v18

    move/from16 v1, v54

    if-ge v1, v4, :cond_15

    mul-int v54, v1, v2

    add-int v18, v9, v54

    add-int v18, v18, v12

    add-int v19, v7, v54

    add-int v19, v19, v12

    aget-wide v21, v8, v18

    aput-wide v21, v6, v19

    add-int/lit8 v21, v19, 0x1

    add-int/lit8 v22, v18, 0x1

    aget-wide v22, v8, v22

    aput-wide v22, v6, v21

    add-int/lit8 v18, v1, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_16
    move/from16 v11, v24

    if-gt v11, v4, :cond_1a

    const/4 v12, 0x0

    move/from16 v18, v12

    move/from16 v12, v17

    :goto_15
    if-ge v12, v3, :cond_19

    add-int/lit8 v18, v18, 0x2

    mul-int v19, v12, v4

    mul-int v19, v19, v2

    move/from16 v20, v18

    const/16 v18, 0x3

    :goto_16
    move/from16 v55, v18

    move/from16 v1, v55

    if-ge v1, v2, :cond_18

    add-int/lit8 v20, v20, 0x2

    add-int v18, v20, v48

    add-int/lit8 v18, v18, -0x1

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v21, v18, -0x1

    aget-wide v21, v5, v21

    move/from16 v56, v10

    move/from16 v57, v11

    int-to-double v10, v15

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v23, v5, v18

    mul-double v10, v10, v23

    add-int v5, v7, v1

    add-int v23, v9, v1

    move/from16 v24, v16

    :goto_17
    move/from16 v58, v24

    move/from16 v59, v13

    move/from16 v13, v58

    if-ge v13, v4, :cond_17

    mul-int v58, v13, v2

    add-int v58, v58, v19

    add-int v24, v5, v58

    add-int v25, v23, v58

    add-int/lit8 v26, v25, -0x1

    aget-wide v26, v8, v26

    aget-wide v28, v8, v25

    add-int/lit8 v30, v24, -0x1

    mul-double v31, v21, v26

    mul-double v33, v10, v28

    sub-double v31, v31, v33

    aput-wide v31, v6, v30

    mul-double v30, v21, v28

    mul-double v32, v10, v26

    add-double v30, v30, v32

    aput-wide v30, v6, v24

    add-int/lit8 v24, v13, 0x1

    move/from16 v13, v59

    goto :goto_17

    :cond_17
    add-int/lit8 v18, v1, 0x2

    move/from16 v10, v56

    move/from16 v11, v57

    move/from16 v13, v59

    move/from16 v5, p5

    goto :goto_16

    :cond_18
    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v59, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v20

    move/from16 v5, p5

    goto :goto_15

    :cond_19
    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v59, v13

    goto/16 :goto_1b

    :cond_1a
    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v59, v13

    const/4 v1, 0x2

    sub-int/2addr v1, v2

    nop

    :goto_18
    move/from16 v5, v17

    if-ge v5, v3, :cond_1d

    add-int/2addr v1, v2

    mul-int v10, v5, v4

    mul-int/2addr v10, v2

    move/from16 v11, v16

    :goto_19
    if-ge v11, v4, :cond_1c

    move v12, v1

    mul-int v13, v11, v2

    add-int/2addr v13, v10

    move/from16 v17, v12

    const/4 v12, 0x3

    :goto_1a
    if-ge v12, v2, :cond_1b

    add-int/lit8 v17, v17, 0x2

    add-int/lit8 v18, v17, -0x1

    add-int v18, v18, v48

    move/from16 v60, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v19, v18, -0x1

    aget-wide v19, v1, v19

    int-to-double v1, v15

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v21, v3, v18

    mul-double v1, v1, v21

    add-int v3, v7, v12

    add-int/2addr v3, v13

    add-int v21, v9, v12

    add-int v21, v21, v13

    add-int/lit8 v22, v21, -0x1

    aget-wide v22, v8, v22

    aget-wide v24, v8, v21

    add-int/lit8 v26, v3, -0x1

    mul-double v27, v19, v22

    mul-double v29, v1, v24

    sub-double v27, v27, v29

    aput-wide v27, v6, v26

    mul-double v26, v19, v24

    mul-double v28, v1, v22

    add-double v26, v26, v28

    aput-wide v26, v6, v3

    add-int/lit8 v12, v12, 0x2

    move/from16 v1, v60

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_1a

    :cond_1b
    move/from16 v60, v1

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_19

    :cond_1c
    move/from16 v60, v1

    add-int/lit8 v17, v5, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_18

    :cond_1d
    :goto_1b
    return-void
.end method

.method radb2(II[DI[DII)V
    .locals 43

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p7

    mul-int v4, v2, v1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v2, :cond_0

    mul-int v9, v6, v1

    mul-int/2addr v7, v9

    add-int v10, v7, v1

    add-int v11, p6, v9

    add-int v12, p4, v7

    add-int v13, p4, v1

    sub-int/2addr v13, v8

    add-int/2addr v13, v10

    aget-wide v14, p3, v12

    aget-wide v16, p3, v13

    add-double v18, v14, v16

    aput-wide v18, p5, v11

    add-int v8, v11, v4

    sub-double v18, v14, v16

    aput-wide v18, p5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v7, :cond_1

    return-void

    :cond_1
    if-eq v1, v7, :cond_4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    mul-int v9, v6, v1

    mul-int v10, v7, v9

    add-int v11, v10, v1

    add-int v12, v9, v4

    move v13, v7

    :goto_2
    move/from16 v20, v13

    move/from16 v5, v20

    if-ge v5, v1, :cond_2

    sub-int v13, v1, v5

    add-int/lit8 v20, v5, -0x1

    add-int v20, v20, v3

    add-int v14, p6, v5

    add-int v15, p4, v5

    add-int v16, p4, v13

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v17, v20, -0x1

    aget-wide v17, v7, v17

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v22, v7, v20

    add-int v7, v15, v10

    add-int v19, v16, v11

    add-int v24, v14, v9

    add-int v25, v14, v12

    add-int/lit8 v26, v7, -0x1

    aget-wide v26, p3, v26

    add-int/lit8 v28, v19, -0x1

    aget-wide v28, p3, v28

    sub-double v26, v26, v28

    aget-wide v28, p3, v7

    aget-wide v30, p3, v19

    add-double v28, v28, v30

    aget-wide v30, p3, v7

    add-int/lit8 v32, v7, -0x1

    aget-wide v32, p3, v32

    aget-wide v34, p3, v19

    add-int/lit8 v36, v19, -0x1

    aget-wide v36, p3, v36

    add-int/lit8 v38, v24, -0x1

    add-double v39, v32, v36

    aput-wide v39, p5, v38

    sub-double v38, v30, v34

    aput-wide v38, p5, v24

    add-int/lit8 v38, v25, -0x1

    mul-double v39, v17, v26

    mul-double v41, v22, v28

    sub-double v39, v39, v41

    aput-wide v39, p5, v38

    mul-double v38, v17, v28

    mul-double v40, v22, v26

    add-double v38, v38, v40

    aput-wide v38, p5, v25

    add-int/lit8 v5, v5, 0x2

    move v13, v5

    const/4 v7, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    goto :goto_1

    :cond_3
    rem-int/lit8 v5, v1, 0x2

    if-ne v5, v8, :cond_4

    return-void

    :cond_4
    const/16 v21, 0x0

    :goto_3
    move/from16 v5, v21

    if-ge v5, v2, :cond_5

    mul-int v6, v5, v1

    const/4 v7, 0x2

    mul-int v9, v7, v6

    add-int v10, p6, v1

    sub-int/2addr v10, v8

    add-int/2addr v10, v6

    add-int v11, p4, v9

    add-int/2addr v11, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    add-int/lit8 v14, v11, -0x1

    aget-wide v14, p3, v14

    mul-double/2addr v12, v14

    aput-wide v12, p5, v10

    add-int v12, v10, v4

    const-wide/high16 v13, -0x4000000000000000L    # -2.0

    aget-wide v15, p3, v11

    mul-double/2addr v13, v15

    aput-wide v13, p5, v12

    add-int/lit8 v21, v5, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method radb3(II[DI[DII)V
    .locals 77

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    const-wide v5, 0x3febb67ae8584cabL    # 0.8660254037844387

    move/from16 v7, p7

    add-int v8, v7, v1

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/4 v11, 0x3

    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    const/4 v14, 0x2

    if-ge v10, v2, :cond_0

    mul-int v15, v10, v1

    mul-int/2addr v11, v15

    add-int v11, p4, v11

    mul-int v16, v14, v1

    add-int v16, v11, v16

    aget-wide v17, p3, v11

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    add-int/lit8 v21, v16, -0x1

    aget-wide v21, p3, v21

    mul-double v19, v19, v21

    mul-double v12, v12, v19

    add-double v12, v17, v12

    const-wide v21, 0x3ffbb67ae8584cabL    # 1.7320508075688774

    aget-wide v23, p3, v16

    mul-double v21, v21, v23

    add-int v23, p6, v15

    add-double v24, v17, v19

    aput-wide v24, p5, v23

    add-int v23, v10, v2

    mul-int v23, v23, v1

    add-int v23, p6, v23

    sub-double v24, v12, v21

    aput-wide v24, p5, v23

    mul-int/2addr v14, v2

    add-int/2addr v14, v10

    mul-int/2addr v14, v1

    add-int v14, p6, v14

    add-double v23, v12, v21

    aput-wide v23, p5, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    if-ne v1, v10, :cond_1

    return-void

    :cond_1
    mul-int v10, v2, v1

    nop

    :goto_1
    if-ge v9, v2, :cond_3

    mul-int v15, v9, v1

    mul-int v16, v11, v15

    add-int v17, v16, v1

    add-int v18, v17, v1

    add-int v19, v15, v10

    add-int v20, v19, v10

    move/from16 v21, v14

    :goto_2
    move/from16 v26, v21

    move/from16 v11, v26

    if-ge v11, v1, :cond_2

    sub-int v21, v1, v11

    add-int v22, p4, v11

    add-int v23, p4, v21

    add-int v24, p6, v11

    add-int v25, v22, v16

    add-int v26, v22, v18

    add-int v27, v23, v17

    add-int/lit8 v28, v25, -0x1

    aget-wide v28, p3, v28

    aget-wide v30, p3, v25

    add-int/lit8 v32, v26, -0x1

    aget-wide v32, p3, v32

    aget-wide v34, p3, v26

    add-int/lit8 v36, v27, -0x1

    aget-wide v36, p3, v36

    aget-wide v38, p3, v27

    add-double v40, v32, v36

    mul-double v42, v12, v40

    add-double v42, v28, v42

    sub-double v44, v34, v38

    mul-double v46, v12, v44

    add-double v46, v30, v46

    sub-double v48, v32, v36

    const-wide v50, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v48, v48, v50

    add-double v52, v34, v38

    mul-double v50, v50, v52

    sub-double v52, v42, v50

    add-double v54, v42, v50

    add-double v56, v46, v48

    sub-double v58, v46, v48

    add-int/lit8 v60, v11, -0x1

    add-int v60, v60, v7

    add-int/lit8 v61, v11, -0x1

    add-int v61, v61, v8

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v62, v60, -0x1

    aget-wide v62, v1, v62

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v64, v1, v60

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v66, v61, -0x1

    aget-wide v66, v1, v66

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v68, v1, v61

    add-int v1, v24, v15

    add-int v70, v24, v19

    add-int v71, v24, v20

    add-int/lit8 v72, v1, -0x1

    add-double v73, v28, v40

    aput-wide v73, p5, v72

    add-double v72, v30, v44

    aput-wide v72, p5, v1

    add-int/lit8 v72, v70, -0x1

    mul-double v73, v62, v52

    mul-double v75, v64, v56

    sub-double v73, v73, v75

    aput-wide v73, p5, v72

    mul-double v72, v62, v56

    mul-double v74, v64, v52

    add-double v72, v72, v74

    aput-wide v72, p5, v70

    add-int/lit8 v72, v71, -0x1

    mul-double v73, v66, v54

    mul-double v75, v68, v58

    sub-double v73, v73, v75

    aput-wide v73, p5, v72

    mul-double v72, v66, v58

    mul-double v74, v68, v54

    add-double v72, v72, v74

    aput-wide v72, p5, v71

    add-int/lit8 v1, v11, 0x2

    move/from16 v21, v1

    move/from16 v1, p1

    const/4 v11, 0x3

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    const/4 v11, 0x3

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method radb4(II[DI[DII)V
    .locals 98

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-wide v3, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    move/from16 v5, p7

    add-int v6, v5, v1

    add-int v7, v6, v1

    mul-int v8, v2, v1

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x4

    const/4 v9, 0x1

    if-ge v10, v2, :cond_0

    mul-int v13, v10, v1

    mul-int/2addr v11, v13

    add-int v14, v13, v8

    add-int v15, v14, v8

    add-int v16, v15, v8

    add-int v17, v11, v1

    add-int v18, v17, v1

    add-int v19, v18, v1

    add-int v20, p4, v11

    aget-wide v20, p3, v20

    add-int v22, p4, v18

    aget-wide v22, p3, v22

    add-int v24, p4, v1

    add-int/lit8 v24, v24, -0x1

    add-int v24, v24, v19

    aget-wide v24, p3, v24

    add-int v26, p4, v1

    add-int/lit8 v26, v26, -0x1

    add-int v26, v26, v17

    aget-wide v26, p3, v26

    sub-double v28, v20, v24

    add-double v30, v20, v24

    add-double v32, v26, v26

    add-double v34, v22, v22

    add-int v9, p6, v13

    add-double v36, v30, v32

    aput-wide v36, p5, v9

    add-int v9, p6, v14

    sub-double v36, v28, v34

    aput-wide v36, p5, v9

    add-int v9, p6, v15

    sub-double v36, v30, v32

    aput-wide v36, p5, v9

    add-int v9, p6, v16

    add-double v36, v28, v34

    aput-wide v36, p5, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x2

    if-ge v1, v10, :cond_1

    return-void

    :cond_1
    if-eq v1, v10, :cond_4

    const/4 v13, 0x0

    :goto_1
    move/from16 v38, v13

    move/from16 v10, v38

    if-ge v10, v2, :cond_3

    mul-int v38, v10, v1

    add-int v13, v38, v8

    add-int v14, v13, v8

    add-int v15, v14, v8

    mul-int v16, v11, v38

    add-int v17, v16, v1

    add-int v18, v17, v1

    add-int v19, v18, v1

    const/16 v20, 0x2

    :goto_2
    move/from16 v40, v20

    move/from16 v11, v40

    if-ge v11, v1, :cond_2

    sub-int v20, v1, v11

    add-int/lit8 v40, v11, -0x1

    add-int v40, v40, v5

    add-int/lit8 v21, v11, -0x1

    add-int v21, v21, v6

    add-int/lit8 v22, v11, -0x1

    add-int v22, v22, v7

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v23, v40, -0x1

    aget-wide v23, v9, v23

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v25, v9, v40

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v27, v21, -0x1

    aget-wide v27, v9, v27

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v29, v9, v21

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v31, v22, -0x1

    aget-wide v31, v9, v31

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v33, v9, v22

    add-int v9, p4, v11

    add-int v35, p4, v20

    add-int v36, p6, v11

    add-int v37, v9, v16

    add-int v42, v35, v17

    add-int v43, v9, v18

    add-int v44, v35, v19

    add-int/lit8 v45, v37, -0x1

    aget-wide v45, p3, v45

    aget-wide v47, p3, v37

    add-int/lit8 v49, v42, -0x1

    aget-wide v49, p3, v49

    aget-wide v51, p3, v42

    add-int/lit8 v53, v43, -0x1

    aget-wide v53, p3, v53

    aget-wide v55, p3, v43

    add-int/lit8 v57, v44, -0x1

    aget-wide v57, p3, v57

    aget-wide v59, p3, v44

    add-double v61, v47, v59

    sub-double v63, v47, v59

    sub-double v65, v55, v51

    add-double v67, v55, v51

    sub-double v69, v45, v57

    add-double v71, v45, v57

    sub-double v73, v53, v49

    add-double v75, v53, v49

    sub-double v77, v71, v75

    sub-double v79, v63, v65

    sub-double v81, v69, v67

    add-double v83, v69, v67

    add-double v85, v61, v73

    sub-double v87, v61, v73

    add-int v89, v36, v38

    add-int v90, v36, v13

    add-int v91, v36, v14

    add-int v92, v36, v15

    add-int/lit8 v93, v89, -0x1

    add-double v94, v71, v75

    aput-wide v94, p5, v93

    add-double v93, v63, v65

    aput-wide v93, p5, v89

    add-int/lit8 v93, v90, -0x1

    mul-double v94, v23, v81

    mul-double v96, v25, v85

    sub-double v94, v94, v96

    aput-wide v94, p5, v93

    mul-double v93, v23, v85

    mul-double v95, v25, v81

    add-double v93, v93, v95

    aput-wide v93, p5, v90

    add-int/lit8 v93, v91, -0x1

    mul-double v94, v27, v77

    mul-double v96, v29, v79

    sub-double v94, v94, v96

    aput-wide v94, p5, v93

    mul-double v93, v27, v79

    mul-double v95, v29, v77

    add-double v93, v93, v95

    aput-wide v93, p5, v91

    add-int/lit8 v93, v92, -0x1

    mul-double v94, v31, v83

    mul-double v96, v33, v87

    sub-double v94, v94, v96

    aput-wide v94, p5, v93

    mul-double v93, v31, v87

    mul-double v95, v33, v83

    add-double v93, v93, v95

    aput-wide v93, p5, v92

    add-int/lit8 v9, v11, 0x2

    move/from16 v20, v9

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v13, v10, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x4

    goto/16 :goto_1

    :cond_3
    rem-int/lit8 v9, v1, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    return-void

    :cond_4
    const/4 v12, 0x0

    :goto_3
    move v9, v12

    if-ge v9, v2, :cond_5

    mul-int v10, v9, v1

    const/4 v11, 0x4

    mul-int v12, v11, v10

    add-int v13, v10, v8

    add-int v14, v13, v8

    add-int v15, v14, v8

    add-int v16, v12, v1

    add-int v17, v16, v1

    add-int v18, v17, v1

    add-int v19, p4, v1

    add-int v20, p6, v1

    add-int/lit8 v21, v19, -0x1

    add-int v21, v21, v12

    aget-wide v21, p3, v21

    add-int/lit8 v23, v19, -0x1

    add-int v23, v23, v17

    aget-wide v23, p3, v23

    add-int v25, p4, v16

    aget-wide v25, p3, v25

    add-int v27, p4, v18

    aget-wide v27, p3, v27

    add-double v29, v25, v27

    sub-double v31, v27, v25

    sub-double v33, v21, v23

    add-double v35, v21, v23

    add-int/lit8 v37, v20, -0x1

    add-int v37, v37, v10

    add-double v38, v35, v35

    aput-wide v38, p5, v37

    add-int/lit8 v37, v20, -0x1

    add-int v37, v37, v13

    const-wide v38, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    sub-double v40, v33, v29

    mul-double v38, v38, v40

    aput-wide v38, p5, v37

    add-int/lit8 v37, v20, -0x1

    add-int v37, v37, v14

    add-double v38, v31, v31

    aput-wide v38, p5, v37

    add-int/lit8 v37, v20, -0x1

    add-int v37, v37, v15

    const-wide v38, -0x40095f619980c433L    # -1.4142135623730951

    add-double v40, v33, v29

    mul-double v38, v38, v40

    aput-wide v38, p5, v37

    add-int/lit8 v12, v9, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method radb5(II[DI[DII)V
    .locals 142

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-wide v3, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const-wide v5, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v7, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v9, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    move/from16 v11, p7

    add-int v12, v11, v1

    add-int v13, v12, v1

    add-int v14, v13, v1

    mul-int v15, v2, v1

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_0
    move/from16 v18, v17

    const/16 v17, 0x5

    const-wide v19, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v21, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v23, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v25, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    move-wide/from16 v27, v3

    const/4 v3, 0x1

    move/from16 v4, v18

    if-ge v4, v2, :cond_0

    mul-int v18, v4, v1

    mul-int v17, v17, v18

    add-int v29, v17, v1

    add-int v30, v29, v1

    add-int v31, v30, v1

    add-int v32, v31, v1

    add-int v33, v18, v15

    add-int v34, v33, v15

    add-int v35, v34, v15

    add-int v36, v35, v15

    add-int v37, p4, v1

    add-int/lit8 v37, v37, -0x1

    add-int v3, p4, v17

    aget-wide v38, p3, v3

    add-int v3, p4, v30

    aget-wide v40, p3, v3

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    mul-double v40, v40, v42

    add-int v3, p4, v32

    aget-wide v44, p3, v3

    mul-double v44, v44, v42

    add-int v3, v37, v29

    aget-wide v46, p3, v3

    mul-double v46, v46, v42

    add-int v3, v37, v31

    aget-wide v48, p3, v3

    mul-double v42, v42, v48

    mul-double v48, v25, v46

    add-double v48, v38, v48

    mul-double v50, v23, v42

    add-double v48, v48, v50

    mul-double v23, v23, v46

    add-double v23, v38, v23

    mul-double v25, v25, v42

    add-double v23, v23, v25

    mul-double v25, v21, v40

    mul-double v50, v19, v44

    add-double v25, v25, v50

    mul-double v19, v19, v40

    mul-double v21, v21, v44

    sub-double v19, v19, v21

    add-int v3, p6, v18

    add-double v21, v38, v46

    add-double v21, v21, v42

    aput-wide v21, p5, v3

    add-int v3, p6, v33

    sub-double v21, v48, v25

    aput-wide v21, p5, v3

    add-int v3, p6, v34

    sub-double v21, v23, v19

    aput-wide v21, p5, v3

    add-int v3, p6, v35

    add-double v21, v23, v19

    aput-wide v21, p5, v3

    add-int v3, p6, v36

    add-double v21, v48, v25

    aput-wide v21, p5, v3

    add-int/lit8 v17, v4, 0x1

    move-wide/from16 v3, v27

    goto/16 :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    nop

    :goto_1
    move/from16 v3, v16

    if-ge v3, v2, :cond_3

    mul-int v4, v3, v1

    mul-int v16, v17, v4

    add-int v18, v16, v1

    add-int v29, v18, v1

    add-int v30, v29, v1

    add-int v31, v30, v1

    add-int v32, v4, v15

    add-int v33, v32, v15

    add-int v34, v33, v15

    add-int v35, v34, v15

    const/16 v36, 0x2

    :goto_2
    move/from16 v52, v36

    move/from16 v2, v52

    if-ge v2, v1, :cond_2

    sub-int v36, v1, v2

    add-int/lit8 v52, v2, -0x1

    add-int v52, v52, v11

    add-int/lit8 v37, v2, -0x1

    add-int v37, v37, v12

    add-int/lit8 v38, v2, -0x1

    add-int v38, v38, v13

    add-int/lit8 v39, v2, -0x1

    add-int v39, v39, v14

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v40, v52, -0x1

    aget-wide v40, v1, v40

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v42, v1, v52

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v44, v37, -0x1

    aget-wide v44, v1, v44

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v46, v1, v37

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v48, v38, -0x1

    aget-wide v48, v1, v48

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v50, v1, v38

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v53, v39, -0x1

    aget-wide v53, v1, v53

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v55, v1, v39

    add-int v1, p4, v2

    add-int v57, p4, v36

    add-int v58, p6, v2

    add-int v59, v1, v16

    add-int v60, v57, v18

    add-int v61, v1, v29

    add-int v62, v57, v30

    add-int v63, v1, v31

    add-int/lit8 v64, v59, -0x1

    aget-wide v64, p3, v64

    aget-wide v66, p3, v59

    add-int/lit8 v68, v60, -0x1

    aget-wide v68, p3, v68

    aget-wide v70, p3, v60

    add-int/lit8 v72, v61, -0x1

    aget-wide v72, p3, v72

    aget-wide v74, p3, v61

    add-int/lit8 v76, v62, -0x1

    aget-wide v76, p3, v76

    aget-wide v78, p3, v62

    add-int/lit8 v80, v63, -0x1

    aget-wide v80, p3, v80

    aget-wide v82, p3, v63

    add-double v84, v74, v70

    sub-double v86, v74, v70

    add-double v88, v82, v78

    sub-double v90, v82, v78

    sub-double v92, v72, v68

    add-double v94, v72, v68

    sub-double v96, v80, v76

    add-double v98, v80, v76

    mul-double v100, v25, v94

    add-double v100, v64, v100

    mul-double v102, v23, v98

    add-double v100, v100, v102

    mul-double v102, v25, v86

    add-double v102, v66, v102

    mul-double v104, v23, v90

    add-double v102, v102, v104

    mul-double v104, v23, v94

    add-double v104, v64, v104

    mul-double v106, v25, v98

    add-double v104, v104, v106

    mul-double v106, v23, v86

    add-double v106, v66, v106

    mul-double v108, v25, v90

    add-double v106, v106, v108

    mul-double v108, v21, v92

    mul-double v110, v19, v96

    add-double v108, v108, v110

    mul-double v110, v21, v84

    mul-double v112, v19, v88

    add-double v110, v110, v112

    mul-double v112, v19, v92

    mul-double v114, v21, v96

    sub-double v112, v112, v114

    mul-double v114, v19, v84

    mul-double v116, v21, v88

    sub-double v114, v114, v116

    sub-double v116, v104, v114

    add-double v118, v104, v114

    add-double v120, v106, v112

    sub-double v122, v106, v112

    add-double v124, v100, v110

    sub-double v126, v100, v110

    sub-double v128, v102, v108

    add-double v130, v102, v108

    add-int v132, v58, v4

    add-int v133, v58, v32

    add-int v134, v58, v33

    add-int v135, v58, v34

    add-int v136, v58, v35

    add-int/lit8 v137, v132, -0x1

    add-double v138, v64, v94

    add-double v138, v138, v98

    aput-wide v138, p5, v137

    add-double v137, v66, v86

    add-double v137, v137, v90

    aput-wide v137, p5, v132

    add-int/lit8 v137, v133, -0x1

    mul-double v138, v40, v126

    mul-double v140, v42, v130

    sub-double v138, v138, v140

    aput-wide v138, p5, v137

    mul-double v137, v40, v130

    mul-double v139, v42, v126

    add-double v137, v137, v139

    aput-wide v137, p5, v133

    add-int/lit8 v137, v134, -0x1

    mul-double v138, v44, v116

    mul-double v140, v46, v120

    sub-double v138, v138, v140

    aput-wide v138, p5, v137

    mul-double v137, v44, v120

    mul-double v139, v46, v116

    add-double v137, v137, v139

    aput-wide v137, p5, v134

    add-int/lit8 v137, v135, -0x1

    mul-double v138, v48, v118

    mul-double v140, v50, v122

    sub-double v138, v138, v140

    aput-wide v138, p5, v137

    mul-double v137, v48, v122

    mul-double v139, v50, v118

    add-double v137, v137, v139

    aput-wide v137, p5, v135

    add-int/lit8 v137, v136, -0x1

    mul-double v138, v53, v124

    mul-double v140, v55, v128

    sub-double v138, v138, v140

    aput-wide v138, p5, v137

    mul-double v137, v53, v128

    mul-double v139, v55, v124

    add-double v137, v137, v139

    aput-wide v137, p5, v136

    add-int/lit8 v1, v2, 0x2

    move/from16 v36, v1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v16, v3, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method radbg(IIII[DI[DII)V
    .locals 77

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    int-to-double v10, v2

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    add-int/lit8 v16, v1, -0x1

    const/16 v17, 0x2

    move-wide/from16 v18, v12

    div-int/lit8 v12, v16, 0x2

    add-int/lit8 v13, v2, 0x1

    div-int/lit8 v13, v13, 0x2

    mul-int v16, v2, v1

    const/16 v20, 0x0

    if-lt v1, v3, :cond_2

    move/from16 v21, v20

    :goto_0
    move/from16 v22, v21

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    mul-int v22, v0, v1

    mul-int v21, v0, v16

    move/from16 v24, v20

    :goto_1
    move/from16 v25, v24

    move/from16 v26, v9

    move/from16 v9, v25

    if-ge v9, v1, :cond_0

    add-int v24, v8, v9

    add-int v24, v24, v22

    add-int v25, v6, v9

    add-int v25, v25, v21

    aget-wide v27, v5, v25

    aput-wide v27, v7, v24

    add-int/lit8 v24, v9, 0x1

    move/from16 v9, v26

    goto :goto_1

    :cond_0
    add-int/lit8 v21, v0, 0x1

    move/from16 v9, v26

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    move/from16 v26, v9

    move-wide/from16 v30, v14

    goto :goto_4

    :cond_2
    move/from16 v26, v9

    move/from16 v0, v20

    :goto_2
    if-ge v0, v1, :cond_4

    add-int v9, v8, v0

    add-int v21, v6, v0

    move/from16 v22, v20

    :goto_3
    move/from16 v29, v22

    move-wide/from16 v30, v14

    move/from16 v14, v29

    if-ge v14, v3, :cond_3

    mul-int v29, v14, v1

    add-int v29, v9, v29

    mul-int v15, v14, v16

    add-int v15, v21, v15

    aget-wide v24, v5, v15

    aput-wide v24, v7, v29

    add-int/lit8 v22, v14, 0x1

    move-wide/from16 v14, v30

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v14, v30

    goto :goto_2

    :cond_4
    move-wide/from16 v30, v14

    :goto_4
    add-int v0, v6, v1

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    move v14, v9

    :goto_5
    if-ge v14, v13, :cond_6

    sub-int v15, v2, v14

    mul-int v21, v17, v14

    mul-int v22, v14, v3

    mul-int v22, v22, v1

    mul-int v24, v15, v3

    mul-int v24, v24, v1

    mul-int v25, v21, v1

    move/from16 v27, v20

    :goto_6
    move/from16 v32, v27

    move/from16 v9, v32

    if-ge v9, v3, :cond_5

    mul-int v32, v9, v1

    mul-int v27, v32, v2

    add-int v28, v0, v25

    add-int v28, v28, v27

    sub-int v28, v28, v1

    add-int v29, v6, v25

    add-int v29, v29, v27

    aget-wide v34, v5, v28

    aget-wide v36, v5, v29

    add-int v38, v8, v32

    add-int v38, v38, v22

    add-double v39, v34, v34

    aput-wide v39, v7, v38

    add-int v38, v8, v32

    add-int v38, v38, v24

    add-double v39, v36, v36

    aput-wide v39, v7, v38

    add-int/lit8 v27, v9, 0x1

    const/4 v9, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x1

    if-eq v1, v9, :cond_e

    if-lt v12, v3, :cond_a

    const/4 v9, 0x1

    :goto_7
    if-ge v9, v13, :cond_9

    sub-int v14, v2, v9

    mul-int v15, v9, v3

    mul-int/2addr v15, v1

    mul-int v21, v14, v3

    mul-int v21, v21, v1

    mul-int v22, v17, v9

    mul-int v22, v22, v1

    move/from16 v24, v20

    :goto_8
    move/from16 v41, v24

    move/from16 v42, v0

    move/from16 v0, v41

    if-ge v0, v3, :cond_8

    mul-int v41, v0, v1

    add-int v41, v41, v15

    mul-int v24, v0, v1

    add-int v24, v24, v21

    mul-int v25, v0, v2

    mul-int v25, v25, v1

    add-int v25, v25, v22

    move/from16 v27, v17

    :goto_9
    move/from16 v43, v27

    move/from16 v44, v14

    move/from16 v14, v43

    if-ge v14, v1, :cond_7

    sub-int v27, v1, v14

    add-int v28, v8, v14

    add-int v29, v6, v27

    add-int v32, v6, v14

    add-int v34, v28, v41

    add-int v35, v28, v24

    add-int v36, v32, v25

    add-int v37, v29, v25

    sub-int v37, v37, v1

    add-int/lit8 v38, v36, -0x1

    aget-wide v38, v5, v38

    aget-wide v45, v5, v36

    add-int/lit8 v40, v37, -0x1

    aget-wide v47, v5, v40

    aget-wide v49, v5, v37

    add-int/lit8 v40, v34, -0x1

    add-double v51, v38, v47

    aput-wide v51, v7, v40

    add-int/lit8 v40, v35, -0x1

    sub-double v51, v38, v47

    aput-wide v51, v7, v40

    sub-double v51, v45, v49

    aput-wide v51, v7, v34

    add-double v51, v45, v49

    aput-wide v51, v7, v35

    add-int/lit8 v14, v14, 0x2

    move/from16 v27, v14

    move/from16 v14, v44

    goto :goto_9

    :cond_7
    add-int/lit8 v24, v0, 0x1

    move/from16 v0, v42

    move/from16 v14, v44

    goto :goto_8

    :cond_8
    move/from16 v44, v14

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v42

    goto :goto_7

    :cond_9
    move/from16 v42, v0

    move/from16 v56, v12

    goto/16 :goto_d

    :cond_a
    move/from16 v42, v0

    const/4 v0, 0x1

    :goto_a
    if-ge v0, v13, :cond_d

    sub-int v9, v2, v0

    mul-int v14, v0, v3

    mul-int/2addr v14, v1

    mul-int v15, v9, v3

    mul-int/2addr v15, v1

    mul-int v21, v17, v0

    mul-int v21, v21, v1

    move/from16 v22, v17

    :goto_b
    move/from16 v53, v22

    move/from16 v54, v9

    move/from16 v9, v53

    if-ge v9, v1, :cond_c

    sub-int v22, v1, v9

    add-int v24, v8, v9

    add-int v25, v6, v22

    add-int v27, v6, v9

    move/from16 v28, v20

    :goto_c
    move/from16 v55, v28

    move/from16 v56, v12

    move/from16 v12, v55

    if-ge v12, v3, :cond_b

    mul-int v55, v12, v1

    add-int v55, v55, v14

    mul-int v28, v12, v1

    add-int v28, v28, v15

    mul-int v29, v12, v2

    mul-int v29, v29, v1

    add-int v29, v29, v21

    add-int v32, v24, v55

    add-int v34, v24, v28

    add-int v35, v27, v29

    add-int v36, v25, v29

    sub-int v36, v36, v1

    add-int/lit8 v37, v35, -0x1

    aget-wide v37, v5, v37

    aget-wide v39, v5, v35

    add-int/lit8 v41, v36, -0x1

    aget-wide v43, v5, v41

    aget-wide v45, v5, v36

    add-int/lit8 v41, v32, -0x1

    add-double v47, v37, v43

    aput-wide v47, v7, v41

    add-int/lit8 v41, v34, -0x1

    sub-double v47, v37, v43

    aput-wide v47, v7, v41

    sub-double v47, v39, v45

    aput-wide v47, v7, v32

    add-double v47, v39, v45

    aput-wide v47, v7, v34

    add-int/lit8 v28, v12, 0x1

    move/from16 v12, v56

    goto :goto_c

    :cond_b
    add-int/lit8 v9, v9, 0x2

    move/from16 v22, v9

    move/from16 v9, v54

    move/from16 v12, v56

    goto :goto_b

    :cond_c
    move/from16 v56, v12

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_d
    move/from16 v56, v12

    goto :goto_d

    :cond_e
    move/from16 v42, v0

    move/from16 v56, v12

    :goto_d
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v21, 0x0

    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v0, v4

    const/4 v9, 0x1

    :goto_e
    if-ge v9, v13, :cond_12

    sub-int v12, v2, v9

    mul-double v24, v10, v14

    mul-double v27, v30, v21

    sub-double v24, v24, v27

    mul-double v27, v10, v21

    mul-double v34, v30, v14

    add-double v21, v27, v34

    move-wide/from16 v14, v24

    mul-int v27, v9, v4

    mul-int v28, v12, v4

    move/from16 v29, v20

    :goto_f
    move/from16 v57, v29

    move-wide/from16 v58, v10

    move/from16 v10, v57

    if-ge v10, v4, :cond_f

    add-int v11, v6, v10

    add-int v29, v8, v10

    add-int v32, v11, v27

    aget-wide v34, v7, v29

    add-int v36, v29, v4

    aget-wide v36, v7, v36

    mul-double v36, v36, v14

    add-double v34, v34, v36

    aput-wide v34, v5, v32

    add-int v32, v11, v28

    add-int v34, v29, v0

    aget-wide v34, v7, v34

    mul-double v34, v34, v21

    aput-wide v34, v5, v32

    add-int/lit8 v29, v10, 0x1

    move-wide/from16 v10, v58

    goto :goto_f

    :cond_f
    move-wide v10, v14

    move-wide/from16 v34, v21

    move-wide/from16 v36, v14

    move-wide/from16 v38, v21

    move/from16 v29, v17

    :goto_10
    move/from16 v60, v29

    move/from16 v61, v0

    move/from16 v0, v60

    if-ge v0, v13, :cond_11

    sub-int v29, v2, v0

    mul-double v40, v10, v36

    mul-double v43, v34, v38

    sub-double v40, v40, v43

    mul-double v43, v10, v38

    mul-double v45, v34, v36

    add-double v38, v43, v45

    move-wide/from16 v36, v40

    mul-int v60, v0, v4

    mul-int v32, v29, v4

    move/from16 v43, v20

    :goto_11
    move/from16 v62, v43

    move-wide/from16 v63, v10

    move/from16 v10, v62

    if-ge v10, v4, :cond_10

    add-int v11, v6, v10

    add-int v43, v8, v10

    add-int v44, v11, v27

    aget-wide v45, v5, v44

    add-int v47, v43, v60

    aget-wide v47, v7, v47

    mul-double v47, v47, v36

    add-double v45, v45, v47

    aput-wide v45, v5, v44

    add-int v44, v11, v28

    aget-wide v45, v5, v44

    add-int v47, v43, v32

    aget-wide v47, v7, v47

    mul-double v47, v47, v38

    add-double v45, v45, v47

    aput-wide v45, v5, v44

    add-int/lit8 v43, v10, 0x1

    move-wide/from16 v10, v63

    goto :goto_11

    :cond_10
    add-int/lit8 v0, v0, 0x1

    move/from16 v29, v0

    move/from16 v0, v61

    move-wide/from16 v10, v63

    goto :goto_10

    :cond_11
    move-wide/from16 v63, v10

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v10, v58

    move/from16 v0, v61

    goto/16 :goto_e

    :cond_12
    move/from16 v61, v0

    move-wide/from16 v58, v10

    const/4 v0, 0x1

    :goto_12
    if-ge v0, v13, :cond_14

    mul-int v9, v0, v4

    move/from16 v10, v20

    :goto_13
    if-ge v10, v4, :cond_13

    add-int v11, v8, v10

    aget-wide v24, v7, v11

    add-int v12, v11, v9

    aget-wide v27, v7, v12

    add-double v24, v24, v27

    aput-wide v24, v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_14
    const/4 v0, 0x1

    :goto_14
    if-ge v0, v13, :cond_16

    sub-int v9, v2, v0

    mul-int v10, v0, v3

    mul-int/2addr v10, v1

    mul-int v11, v9, v3

    mul-int/2addr v11, v1

    move/from16 v12, v20

    :goto_15
    if-ge v12, v3, :cond_15

    mul-int v24, v12, v1

    add-int v25, v8, v24

    add-int v27, v6, v24

    add-int v27, v27, v10

    add-int v28, v6, v24

    add-int v28, v28, v11

    aget-wide v34, v5, v27

    aget-wide v36, v5, v28

    add-int v29, v25, v10

    sub-double v38, v34, v36

    aput-wide v38, v7, v29

    add-int v29, v25, v11

    add-double v38, v34, v36

    aput-wide v38, v7, v29

    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_16
    const/4 v9, 0x1

    if-ne v1, v9, :cond_17

    return-void

    :cond_17
    move/from16 v0, v56

    if-lt v0, v3, :cond_1b

    move v10, v9

    :goto_16
    if-ge v10, v13, :cond_1a

    sub-int v11, v2, v10

    mul-int v12, v10, v3

    mul-int/2addr v12, v1

    mul-int v24, v11, v3

    mul-int v24, v24, v1

    move/from16 v25, v20

    :goto_17
    move/from16 v65, v25

    move/from16 v9, v65

    if-ge v9, v3, :cond_19

    mul-int v65, v9, v1

    move/from16 v25, v17

    :goto_18
    move/from16 v67, v25

    move/from16 v68, v11

    move/from16 v11, v67

    if-ge v11, v1, :cond_18

    add-int v25, v8, v11

    add-int v27, v6, v11

    add-int v28, v25, v65

    add-int v28, v28, v12

    add-int v29, v25, v65

    add-int v29, v29, v24

    add-int v32, v27, v65

    add-int v32, v32, v12

    add-int v33, v27, v65

    add-int v33, v33, v24

    add-int/lit8 v34, v32, -0x1

    aget-wide v34, v5, v34

    aget-wide v36, v5, v32

    add-int/lit8 v38, v33, -0x1

    aget-wide v38, v5, v38

    aget-wide v40, v5, v33

    add-int/lit8 v43, v28, -0x1

    sub-double v44, v34, v40

    aput-wide v44, v7, v43

    add-int/lit8 v43, v29, -0x1

    add-double v44, v34, v40

    aput-wide v44, v7, v43

    add-double v43, v36, v38

    aput-wide v43, v7, v28

    sub-double v43, v36, v38

    aput-wide v43, v7, v29

    add-int/lit8 v25, v11, 0x2

    move/from16 v11, v68

    goto :goto_18

    :cond_18
    add-int/lit8 v25, v9, 0x1

    move/from16 v11, v68

    const/4 v9, 0x1

    goto :goto_17

    :cond_19
    move/from16 v68, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    goto :goto_16

    :cond_1a
    move/from16 v72, v13

    goto/16 :goto_1c

    :cond_1b
    const/4 v9, 0x1

    :goto_19
    if-ge v9, v13, :cond_1e

    sub-int v10, v2, v9

    mul-int v11, v9, v3

    mul-int/2addr v11, v1

    mul-int v12, v10, v3

    mul-int/2addr v12, v1

    move/from16 v24, v17

    :goto_1a
    move/from16 v69, v24

    move/from16 v70, v10

    move/from16 v10, v69

    if-ge v10, v1, :cond_1d

    add-int v24, v8, v10

    add-int v25, v6, v10

    move/from16 v27, v20

    :goto_1b
    move/from16 v71, v27

    move/from16 v72, v13

    move/from16 v13, v71

    if-ge v13, v3, :cond_1c

    mul-int v71, v13, v1

    add-int v27, v24, v71

    add-int v27, v27, v11

    add-int v28, v24, v71

    add-int v28, v28, v12

    add-int v29, v25, v71

    add-int v29, v29, v11

    add-int v32, v25, v71

    add-int v32, v32, v12

    add-int/lit8 v33, v29, -0x1

    aget-wide v33, v5, v33

    aget-wide v35, v5, v29

    add-int/lit8 v37, v32, -0x1

    aget-wide v37, v5, v37

    aget-wide v39, v5, v32

    add-int/lit8 v41, v27, -0x1

    sub-double v43, v33, v39

    aput-wide v43, v7, v41

    add-int/lit8 v41, v28, -0x1

    add-double v43, v33, v39

    aput-wide v43, v7, v41

    add-double v43, v35, v37

    aput-wide v43, v7, v27

    sub-double v43, v35, v37

    aput-wide v43, v7, v28

    add-int/lit8 v27, v13, 0x1

    move/from16 v13, v72

    goto :goto_1b

    :cond_1c
    add-int/lit8 v24, v10, 0x2

    move/from16 v10, v70

    move/from16 v13, v72

    goto :goto_1a

    :cond_1d
    move/from16 v72, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_1e
    move/from16 v72, v13

    :goto_1c
    invoke-static {v7, v8, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x1

    :goto_1d
    if-ge v9, v2, :cond_20

    mul-int v10, v9, v3

    mul-int/2addr v10, v1

    move/from16 v11, v20

    :goto_1e
    if-ge v11, v3, :cond_1f

    mul-int v12, v11, v1

    add-int/2addr v12, v10

    add-int v13, v6, v12

    add-int v24, v8, v12

    aget-wide v24, v7, v24

    aput-wide v24, v5, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_20
    if-gt v0, v3, :cond_24

    neg-int v9, v1

    const/16 v66, 0x1

    :goto_1f
    move/from16 v10, v66

    if-ge v10, v2, :cond_23

    add-int/2addr v9, v1

    add-int/lit8 v11, v9, -0x1

    mul-int v12, v10, v3

    mul-int/2addr v12, v1

    move v13, v11

    move/from16 v11, v17

    :goto_20
    if-ge v11, v1, :cond_22

    add-int/lit8 v13, v13, 0x2

    add-int v24, v13, v26

    move/from16 v73, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v23, v24, -0x1

    aget-wide v27, v4, v23

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v32, v4, v24

    add-int v4, v6, v11

    add-int v23, v8, v11

    move/from16 v25, v20

    :goto_21
    move/from16 v74, v25

    move/from16 v75, v9

    move/from16 v9, v74

    if-ge v9, v3, :cond_21

    mul-int v74, v9, v1

    add-int v74, v74, v12

    add-int v25, v4, v74

    add-int v29, v23, v74

    add-int/lit8 v34, v29, -0x1

    aget-wide v34, v7, v34

    aget-wide v36, v7, v29

    add-int/lit8 v38, v25, -0x1

    mul-double v39, v27, v34

    mul-double v43, v32, v36

    sub-double v39, v39, v43

    aput-wide v39, v5, v38

    mul-double v38, v27, v36

    mul-double v40, v32, v34

    add-double v38, v38, v40

    aput-wide v38, v5, v25

    add-int/lit8 v25, v9, 0x1

    move/from16 v9, v75

    goto :goto_21

    :cond_21
    add-int/lit8 v11, v11, 0x2

    move/from16 v0, v73

    move/from16 v9, v75

    move/from16 v4, p4

    goto :goto_20

    :cond_22
    move/from16 v73, v0

    move/from16 v75, v9

    move-object/from16 v0, p0

    add-int/lit8 v66, v10, 0x1

    move/from16 v0, v73

    move/from16 v4, p4

    goto :goto_1f

    :cond_23
    move/from16 v73, v0

    move-object/from16 v0, p0

    goto :goto_25

    :cond_24
    move/from16 v73, v0

    move-object/from16 v0, p0

    neg-int v4, v1

    move v9, v4

    const/16 v66, 0x1

    :goto_22
    move/from16 v4, v66

    if-ge v4, v2, :cond_27

    add-int/2addr v9, v1

    mul-int v10, v4, v3

    mul-int/2addr v10, v1

    move/from16 v11, v20

    :goto_23
    if-ge v11, v3, :cond_26

    add-int/lit8 v12, v9, -0x1

    mul-int v13, v11, v1

    add-int/2addr v13, v10

    move/from16 v23, v12

    move/from16 v12, v17

    :goto_24
    if-ge v12, v1, :cond_25

    add-int/lit8 v23, v23, 0x2

    add-int v24, v23, v26

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v25, v24, -0x1

    aget-wide v27, v1, v25

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v32, v1, v24

    add-int v1, v6, v12

    add-int v25, v8, v12

    add-int v29, v1, v13

    add-int v34, v25, v13

    add-int/lit8 v35, v34, -0x1

    aget-wide v35, v7, v35

    aget-wide v37, v7, v34

    add-int/lit8 v39, v29, -0x1

    mul-double v40, v27, v35

    mul-double v43, v32, v37

    sub-double v40, v40, v43

    aput-wide v40, v5, v39

    mul-double v39, v27, v37

    mul-double v43, v32, v35

    add-double v39, v39, v43

    aput-wide v39, v5, v29

    add-int/lit8 v12, v12, 0x2

    move/from16 v1, p1

    goto :goto_24

    :cond_25
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    goto :goto_23

    :cond_26
    add-int/lit8 v66, v4, 0x1

    move/from16 v1, p1

    goto :goto_22

    :cond_27
    :goto_25
    return-void
.end method

.method radf2(II[DI[DII)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p7

    mul-int v4, v2, v1

    const/4 v5, 0x2

    mul-int v6, v5, v1

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v2, :cond_0

    mul-int v10, v8, v6

    add-int v10, p6, v10

    add-int v11, v10, v6

    sub-int/2addr v11, v9

    mul-int v9, v8, v1

    add-int v9, p4, v9

    add-int v12, v9, v4

    aget-wide v13, p3, v9

    aget-wide v15, p3, v12

    add-double v17, v13, v15

    aput-wide v17, p5, v10

    sub-double v17, v13, v15

    aput-wide v17, p5, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v5, :cond_1

    return-void

    :cond_1
    if-eq v1, v5, :cond_5

    move v8, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    mul-int v8, v6, v1

    mul-int v10, v5, v8

    add-int v11, v10, v1

    add-int v12, v8, v4

    move v13, v5

    :goto_2
    move/from16 v19, v13

    move/from16 v7, v19

    if-ge v7, v1, :cond_2

    sub-int v13, v1, v7

    add-int/lit8 v19, v7, -0x1

    add-int v19, v19, v3

    add-int v14, p6, v7

    add-int/2addr v14, v10

    add-int v15, p6, v13

    add-int/2addr v15, v11

    add-int v16, p4, v7

    add-int v16, v16, v8

    add-int v17, p4, v7

    add-int v17, v17, v12

    add-int/lit8 v18, v16, -0x1

    aget-wide v21, p3, v18

    aget-wide v23, p3, v16

    add-int/lit8 v18, v17, -0x1

    aget-wide v25, p3, v18

    aget-wide v27, p3, v17

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v18, v19, -0x1

    aget-wide v29, v5, v18

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v31, v5, v19

    mul-double v33, v29, v25

    mul-double v35, v31, v27

    add-double v33, v33, v35

    mul-double v35, v29, v27

    mul-double v37, v31, v25

    sub-double v35, v35, v37

    add-double v37, v23, v35

    aput-wide v37, p5, v14

    add-int/lit8 v5, v14, -0x1

    add-double v37, v21, v33

    aput-wide v37, p5, v5

    sub-double v37, v35, v23

    aput-wide v37, p5, v15

    add-int/lit8 v5, v15, -0x1

    sub-double v37, v21, v33

    aput-wide v37, p5, v5

    add-int/lit8 v5, v7, 0x2

    move v13, v5

    const/4 v5, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    rem-int/lit8 v5, v1, 0x2

    if-ne v5, v9, :cond_4

    return-void

    :cond_4
    move v6, v8

    :cond_5
    const/4 v5, 0x2

    mul-int/2addr v5, v6

    const/16 v20, 0x0

    :goto_3
    move/from16 v7, v20

    if-ge v7, v2, :cond_6

    mul-int v6, v7, v1

    add-int v8, p6, v5

    add-int/2addr v8, v1

    add-int v10, p4, v1

    sub-int/2addr v10, v9

    add-int/2addr v10, v6

    add-int v11, v10, v4

    move/from16 v39, v10

    aget-wide v9, p3, v11

    neg-double v9, v9

    aput-wide v9, p5, v8

    add-int/lit8 v9, v8, -0x1

    aget-wide v10, p3, v39

    aput-wide v10, p5, v9

    add-int/lit8 v20, v7, 0x1

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radf3(II[DI[DII)V
    .locals 77

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    const-wide v5, 0x3febb67ae8584cabL    # 0.8660254037844387

    move/from16 v7, p7

    add-int v8, v7, v1

    mul-int v9, v2, v1

    const/4 v11, 0x0

    :goto_0
    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    const-wide v14, 0x3febb67ae8584cabL    # 0.8660254037844387

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/4 v10, 0x1

    if-ge v11, v2, :cond_0

    mul-int v19, v11, v1

    mul-int v17, v17, v9

    mul-int v20, v16, v11

    add-int/lit8 v20, v20, 0x1

    mul-int v20, v20, v1

    add-int v21, p4, v19

    add-int v22, v21, v9

    add-int v23, v21, v17

    aget-wide v24, p3, v21

    aget-wide v26, p3, v22

    aget-wide v28, p3, v23

    add-double v30, v26, v28

    mul-int v16, v16, v19

    add-int v16, p6, v16

    add-double v32, v24, v30

    aput-wide v32, p5, v16

    add-int v16, p6, v20

    add-int v16, v16, v1

    sub-double v32, v28, v26

    mul-double v14, v14, v32

    aput-wide v14, p5, v16

    add-int v14, p6, v1

    sub-int/2addr v14, v10

    add-int v14, v14, v20

    mul-double v12, v12, v30

    add-double v12, v24, v12

    aput-wide v12, p5, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v10, :cond_1

    return-void

    :cond_1
    const/16 v18, 0x0

    :goto_1
    move/from16 v10, v18

    if-ge v10, v2, :cond_3

    mul-int v11, v10, v1

    mul-int v18, v16, v11

    add-int v19, v11, v9

    add-int v20, v19, v9

    add-int v21, v18, v1

    add-int v22, v21, v1

    move/from16 v23, v17

    :goto_2
    move/from16 v34, v23

    move/from16 v2, v34

    if-ge v2, v1, :cond_2

    sub-int v23, v1, v2

    add-int/lit8 v34, v2, -0x1

    add-int v34, v34, v7

    add-int/lit8 v24, v2, -0x1

    add-int v24, v24, v8

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v25, v34, -0x1

    aget-wide v25, v1, v25

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v27, v1, v34

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v29, v24, -0x1

    aget-wide v29, v1, v29

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v31, v1, v24

    add-int v1, p4, v2

    add-int v33, p6, v2

    add-int v35, p6, v23

    add-int v36, v1, v11

    add-int v37, v1, v19

    add-int v38, v1, v20

    add-int/lit8 v39, v36, -0x1

    aget-wide v39, p3, v39

    aget-wide v41, p3, v36

    add-int/lit8 v43, v37, -0x1

    aget-wide v43, p3, v43

    aget-wide v45, p3, v37

    add-int/lit8 v47, v38, -0x1

    aget-wide v47, p3, v47

    aget-wide v49, p3, v38

    mul-double v51, v25, v43

    mul-double v53, v27, v45

    add-double v51, v51, v53

    mul-double v53, v25, v45

    mul-double v55, v27, v43

    sub-double v53, v53, v55

    mul-double v55, v29, v47

    mul-double v57, v31, v49

    add-double v55, v55, v57

    mul-double v57, v29, v49

    mul-double v59, v31, v47

    sub-double v57, v57, v59

    add-double v59, v51, v55

    add-double v61, v53, v57

    mul-double v63, v12, v59

    add-double v63, v39, v63

    mul-double v65, v12, v61

    add-double v65, v41, v65

    sub-double v67, v53, v57

    mul-double v67, v67, v14

    sub-double v69, v55, v51

    mul-double v69, v69, v14

    add-int v71, v33, v18

    add-int v72, v35, v21

    add-int v73, v33, v22

    add-int/lit8 v74, v71, -0x1

    add-double v75, v39, v59

    aput-wide v75, p5, v74

    add-double v74, v41, v61

    aput-wide v74, p5, v71

    add-int/lit8 v74, v72, -0x1

    sub-double v75, v63, v67

    aput-wide v75, p5, v74

    sub-double v74, v69, v65

    aput-wide v74, p5, v72

    add-int/lit8 v74, v73, -0x1

    add-double v75, v63, v67

    aput-wide v75, p5, v74

    add-double v74, v65, v69

    aput-wide v74, p5, v73

    add-int/lit8 v1, v2, 0x2

    move/from16 v23, v1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v18, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method radf4(II[DI[DII)V
    .locals 95

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-wide v3, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    move/from16 v5, p7

    add-int v6, p7, v1

    add-int v7, v6, v1

    mul-int v8, v2, v1

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x4

    if-ge v10, v2, :cond_0

    mul-int v12, v10, v1

    mul-int/2addr v11, v12

    add-int v13, v12, v8

    add-int v14, v13, v8

    add-int v15, v14, v8

    add-int v16, v11, v1

    add-int v17, p4, v12

    aget-wide v17, p3, v17

    add-int v19, p4, v13

    aget-wide v19, p3, v19

    add-int v21, p4, v14

    aget-wide v21, p3, v21

    add-int v23, p4, v15

    aget-wide v23, p3, v23

    add-double v25, v19, v23

    add-double v27, v17, v21

    add-int v29, p6, v11

    add-int v30, p6, v16

    add-int v30, v30, v1

    add-double v31, v25, v27

    aput-wide v31, p5, v29

    add-int/lit8 v31, v30, -0x1

    add-int v31, v31, v1

    add-int v31, v31, v1

    sub-double v32, v27, v25

    aput-wide v32, p5, v31

    add-int/lit8 v31, v30, -0x1

    sub-double v32, v17, v21

    aput-wide v32, p5, v31

    sub-double v31, v23, v19

    aput-wide v31, p5, v30

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x2

    if-ge v1, v10, :cond_1

    return-void

    :cond_1
    if-eq v1, v10, :cond_4

    const/4 v12, 0x0

    :goto_1
    move/from16 v34, v12

    move/from16 v9, v34

    if-ge v9, v2, :cond_3

    mul-int v34, v9, v1

    add-int v12, v34, v8

    add-int v13, v12, v8

    add-int v14, v13, v8

    mul-int v15, v11, v34

    add-int v16, v15, v1

    add-int v17, v16, v1

    add-int v18, v17, v1

    move/from16 v19, v10

    :goto_2
    move/from16 v36, v19

    move/from16 v10, v36

    if-ge v10, v1, :cond_2

    sub-int v19, v1, v10

    add-int/lit8 v36, v10, -0x1

    add-int v36, v36, v5

    add-int/lit8 v20, v10, -0x1

    add-int v20, v20, v6

    add-int/lit8 v21, v10, -0x1

    add-int v21, v21, v7

    move-wide/from16 v37, v3

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v4, v36, -0x1

    aget-wide v3, v3, v4

    move/from16 v39, v5

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v22, v5, v36

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v24, v20, -0x1

    aget-wide v24, v5, v24

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v26, v5, v20

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v28, v21, -0x1

    aget-wide v28, v5, v28

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v30, v5, v21

    add-int v5, p4, v10

    add-int v32, p6, v10

    add-int v33, p6, v19

    add-int v40, v5, v34

    add-int v41, v5, v12

    add-int v42, v5, v13

    add-int v43, v5, v14

    add-int/lit8 v44, v40, -0x1

    aget-wide v44, p3, v44

    aget-wide v46, p3, v40

    add-int/lit8 v48, v41, -0x1

    aget-wide v48, p3, v48

    aget-wide v50, p3, v41

    add-int/lit8 v52, v42, -0x1

    aget-wide v52, p3, v52

    aget-wide v54, p3, v42

    add-int/lit8 v56, v43, -0x1

    aget-wide v56, p3, v56

    aget-wide v58, p3, v43

    mul-double v60, v3, v48

    mul-double v62, v22, v50

    add-double v60, v60, v62

    mul-double v62, v3, v50

    mul-double v64, v22, v48

    sub-double v62, v62, v64

    mul-double v64, v24, v52

    mul-double v66, v26, v54

    add-double v64, v64, v66

    mul-double v66, v24, v54

    mul-double v68, v26, v52

    sub-double v66, v66, v68

    mul-double v68, v28, v56

    mul-double v70, v30, v58

    add-double v68, v68, v70

    mul-double v70, v28, v58

    mul-double v72, v30, v56

    sub-double v70, v70, v72

    add-double v72, v60, v68

    sub-double v74, v68, v60

    add-double v76, v62, v70

    sub-double v78, v62, v70

    add-double v80, v46, v66

    sub-double v82, v46, v66

    add-double v84, v44, v64

    sub-double v86, v44, v64

    add-int v88, v32, v15

    add-int v89, v33, v16

    add-int v90, v32, v17

    add-int v91, v33, v18

    add-int/lit8 v92, v88, -0x1

    add-double v93, v72, v84

    aput-wide v93, p5, v92

    add-int/lit8 v92, v91, -0x1

    sub-double v93, v84, v72

    aput-wide v93, p5, v92

    add-double v92, v76, v80

    aput-wide v92, p5, v88

    sub-double v92, v76, v80

    aput-wide v92, p5, v91

    add-int/lit8 v92, v90, -0x1

    add-double v93, v78, v86

    aput-wide v93, p5, v92

    add-int/lit8 v92, v89, -0x1

    sub-double v93, v86, v78

    aput-wide v93, p5, v92

    add-double v92, v74, v82

    aput-wide v92, p5, v90

    sub-double v92, v74, v82

    aput-wide v92, p5, v89

    add-int/lit8 v5, v10, 0x2

    move/from16 v19, v5

    move-wide/from16 v3, v37

    move/from16 v5, v39

    const/4 v10, 0x2

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v37, v3

    move/from16 v39, v5

    add-int/lit8 v12, v9, 0x1

    const/4 v10, 0x2

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v37, v3

    move/from16 v39, v5

    rem-int/lit8 v3, v1, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    return-void

    :cond_4
    move-wide/from16 v37, v3

    move/from16 v39, v5

    :cond_5
    const/16 v35, 0x0

    :goto_3
    move/from16 v3, v35

    if-ge v3, v2, :cond_6

    mul-int v4, v3, v1

    mul-int v5, v11, v4

    add-int v9, v4, v8

    add-int v10, v9, v8

    add-int v12, v10, v8

    add-int v13, v5, v1

    add-int v14, v13, v1

    add-int v15, v14, v1

    add-int v16, p4, v1

    add-int v17, p6, v1

    add-int/lit8 v18, v16, -0x1

    add-int v18, v18, v4

    aget-wide v18, p3, v18

    add-int/lit8 v20, v16, -0x1

    add-int v20, v20, v9

    aget-wide v20, p3, v20

    add-int/lit8 v22, v16, -0x1

    add-int v22, v22, v10

    aget-wide v22, p3, v22

    add-int/lit8 v24, v16, -0x1

    add-int v24, v24, v12

    aget-wide v24, p3, v24

    const-wide v26, -0x40195f619980c433L    # -0.7071067811865476

    add-double v28, v20, v24

    mul-double v26, v26, v28

    const-wide v28, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    sub-double v30, v20, v24

    mul-double v28, v28, v30

    add-int/lit8 v30, v17, -0x1

    add-int v30, v30, v5

    add-double v31, v28, v18

    aput-wide v31, p5, v30

    add-int/lit8 v30, v17, -0x1

    add-int v30, v30, v14

    sub-double v31, v18, v28

    aput-wide v31, p5, v30

    add-int v30, p6, v13

    sub-double v31, v26, v22

    aput-wide v31, p5, v30

    add-int v30, p6, v15

    add-double v31, v26, v22

    aput-wide v31, p5, v30

    add-int/lit8 v35, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radf5(II[DI[DII)V
    .locals 141

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-wide v3, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const-wide v5, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v7, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v9, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    move/from16 v11, p7

    add-int v12, v11, v1

    add-int v13, v12, v1

    add-int v14, v13, v1

    mul-int v15, v2, v1

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_0
    move/from16 v18, v17

    const/16 v17, 0x5

    const-wide v19, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v21, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v23, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v25, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    move-wide/from16 v27, v3

    const/4 v3, 0x1

    move/from16 v4, v18

    if-ge v4, v2, :cond_0

    mul-int v18, v4, v1

    mul-int v17, v17, v18

    add-int v29, v17, v1

    add-int v30, v29, v1

    add-int v31, v30, v1

    add-int v32, v31, v1

    add-int v33, v18, v15

    add-int v34, v33, v15

    add-int v35, v34, v15

    add-int v36, v35, v15

    add-int v37, p6, v1

    add-int/lit8 v37, v37, -0x1

    add-int v3, p4, v18

    aget-wide v38, p3, v3

    add-int v3, p4, v33

    aget-wide v40, p3, v3

    add-int v3, p4, v34

    aget-wide v42, p3, v3

    add-int v3, p4, v35

    aget-wide v44, p3, v3

    add-int v3, p4, v36

    aget-wide v46, p3, v3

    add-double v48, v46, v40

    sub-double v50, v46, v40

    add-double v52, v44, v42

    sub-double v54, v44, v42

    add-int v3, p6, v17

    add-double v56, v38, v48

    add-double v56, v56, v52

    aput-wide v56, p5, v3

    add-int v3, v37, v29

    mul-double v56, v25, v48

    add-double v56, v38, v56

    mul-double v58, v23, v52

    add-double v56, v56, v58

    aput-wide v56, p5, v3

    add-int v3, p6, v30

    mul-double v56, v21, v50

    mul-double v58, v19, v54

    add-double v56, v56, v58

    aput-wide v56, p5, v3

    add-int v3, v37, v31

    mul-double v23, v23, v48

    add-double v23, v38, v23

    mul-double v25, v25, v52

    add-double v23, v23, v25

    aput-wide v23, p5, v3

    add-int v3, p6, v32

    mul-double v19, v19, v50

    mul-double v21, v21, v54

    sub-double v19, v19, v21

    aput-wide v19, p5, v3

    add-int/lit8 v17, v4, 0x1

    move-wide/from16 v3, v27

    goto/16 :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    nop

    :goto_1
    move/from16 v3, v16

    if-ge v3, v2, :cond_3

    mul-int v4, v3, v1

    mul-int v16, v17, v4

    add-int v18, v16, v1

    add-int v29, v18, v1

    add-int v30, v29, v1

    add-int v31, v30, v1

    add-int v32, v4, v15

    add-int v33, v32, v15

    add-int v34, v33, v15

    add-int v35, v34, v15

    const/16 v36, 0x2

    :goto_2
    move/from16 v60, v36

    move/from16 v2, v60

    if-ge v2, v1, :cond_2

    add-int/lit8 v60, v2, -0x1

    add-int v60, v60, v11

    add-int/lit8 v36, v2, -0x1

    add-int v36, v36, v12

    add-int/lit8 v37, v2, -0x1

    add-int v37, v37, v13

    add-int/lit8 v38, v2, -0x1

    add-int v38, v38, v14

    move-wide/from16 v61, v5

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v6, v60, -0x1

    aget-wide v5, v5, v6

    move-wide/from16 v63, v7

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v7, v7, v60

    move-wide/from16 v65, v9

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v10, v36, -0x1

    aget-wide v9, v9, v10

    move/from16 v67, v11

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v39, v11, v36

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v41, v37, -0x1

    aget-wide v41, v11, v41

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v43, v11, v37

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v45, v38, -0x1

    aget-wide v45, v11, v45

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v47, v11, v38

    sub-int v11, v1, v2

    add-int v49, p4, v2

    add-int v50, p6, v2

    add-int v51, p6, v11

    add-int v52, v49, v4

    add-int v53, v49, v32

    add-int v54, v49, v33

    add-int v55, v49, v34

    add-int v56, v49, v35

    add-int/lit8 v57, v52, -0x1

    aget-wide v57, p3, v57

    aget-wide v68, p3, v52

    add-int/lit8 v59, v53, -0x1

    aget-wide v70, p3, v59

    aget-wide v72, p3, v53

    add-int/lit8 v59, v54, -0x1

    aget-wide v74, p3, v59

    aget-wide v76, p3, v54

    add-int/lit8 v59, v55, -0x1

    aget-wide v78, p3, v59

    aget-wide v80, p3, v55

    add-int/lit8 v59, v56, -0x1

    aget-wide v82, p3, v59

    aget-wide v84, p3, v56

    mul-double v86, v5, v70

    mul-double v88, v7, v72

    add-double v86, v86, v88

    mul-double v88, v5, v72

    mul-double v90, v7, v70

    sub-double v88, v88, v90

    mul-double v90, v9, v74

    mul-double v92, v39, v76

    add-double v90, v90, v92

    mul-double v92, v9, v76

    mul-double v94, v39, v74

    sub-double v92, v92, v94

    mul-double v94, v41, v78

    mul-double v96, v43, v80

    add-double v94, v94, v96

    mul-double v96, v41, v80

    mul-double v98, v43, v78

    sub-double v96, v96, v98

    mul-double v98, v45, v82

    mul-double v100, v47, v84

    add-double v98, v98, v100

    mul-double v100, v45, v84

    mul-double v102, v47, v82

    sub-double v100, v100, v102

    add-double v102, v86, v98

    sub-double v104, v98, v86

    sub-double v106, v88, v100

    add-double v108, v88, v100

    add-double v110, v90, v94

    sub-double v112, v94, v90

    sub-double v114, v92, v96

    add-double v116, v92, v96

    mul-double v118, v25, v102

    add-double v118, v57, v118

    mul-double v120, v23, v110

    add-double v118, v118, v120

    mul-double v120, v25, v108

    add-double v120, v68, v120

    mul-double v122, v23, v116

    add-double v120, v120, v122

    mul-double v122, v23, v102

    add-double v122, v57, v122

    mul-double v124, v25, v110

    add-double v122, v122, v124

    mul-double v124, v23, v108

    add-double v124, v68, v124

    mul-double v126, v25, v116

    add-double v124, v124, v126

    mul-double v126, v21, v106

    mul-double v128, v19, v114

    add-double v126, v126, v128

    mul-double v128, v21, v104

    mul-double v130, v19, v112

    add-double v128, v128, v130

    mul-double v130, v19, v106

    mul-double v132, v21, v114

    sub-double v130, v130, v132

    mul-double v132, v19, v104

    mul-double v134, v21, v112

    sub-double v132, v132, v134

    add-int v59, v50, v16

    add-int v134, v51, v18

    add-int v135, v50, v29

    add-int v136, v51, v30

    add-int v137, v50, v31

    add-int/lit8 v138, v59, -0x1

    add-double v139, v57, v102

    add-double v139, v139, v110

    aput-wide v139, p5, v138

    add-double v138, v68, v108

    add-double v138, v138, v116

    aput-wide v138, p5, v59

    add-int/lit8 v138, v135, -0x1

    add-double v139, v118, v126

    aput-wide v139, p5, v138

    add-int/lit8 v138, v134, -0x1

    sub-double v139, v118, v126

    aput-wide v139, p5, v138

    add-double v138, v120, v128

    aput-wide v138, p5, v135

    sub-double v138, v128, v120

    aput-wide v138, p5, v134

    add-int/lit8 v138, v137, -0x1

    add-double v139, v122, v130

    aput-wide v139, p5, v138

    add-int/lit8 v138, v136, -0x1

    sub-double v139, v122, v130

    aput-wide v139, p5, v138

    add-double v138, v124, v132

    aput-wide v138, p5, v137

    sub-double v138, v132, v124

    aput-wide v138, p5, v136

    add-int/lit8 v36, v2, 0x2

    move-wide/from16 v5, v61

    move-wide/from16 v7, v63

    move-wide/from16 v9, v65

    move/from16 v11, v67

    move/from16 v2, p2

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v61, v5

    move-wide/from16 v63, v7

    move-wide/from16 v65, v9

    move/from16 v67, v11

    add-int/lit8 v16, v3, 0x1

    move/from16 v2, p2

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v61, v5

    move-wide/from16 v63, v7

    move-wide/from16 v65, v9

    move/from16 v67, v11

    return-void
.end method

.method radfg(IIII[DI[DII)V
    .locals 67

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    int-to-double v10, v2

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    add-int/lit8 v16, v2, 0x1

    const/16 v17, 0x2

    move-wide/from16 v18, v12

    div-int/lit8 v12, v16, 0x2

    add-int/lit8 v13, v1, -0x1

    div-int/lit8 v13, v13, 0x2

    const/16 v16, 0x0

    move-wide/from16 v20, v14

    const/4 v14, 0x1

    if-eq v1, v14, :cond_10

    move/from16 v15, v16

    :goto_0
    if-ge v15, v4, :cond_0

    add-int v22, v8, v15

    add-int v23, v6, v15

    aget-wide v23, v5, v23

    aput-wide v23, v7, v22

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    move v15, v14

    :goto_1
    if-ge v15, v2, :cond_2

    mul-int v22, v15, v3

    mul-int v22, v22, v1

    move/from16 v23, v16

    :goto_2
    move/from16 v25, v23

    move/from16 v14, v25

    if-ge v14, v3, :cond_1

    mul-int v25, v14, v1

    add-int v25, v25, v22

    add-int v23, v8, v25

    add-int v24, v6, v25

    aget-wide v27, v5, v24

    aput-wide v27, v7, v23

    add-int/lit8 v23, v14, 0x1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    if-gt v13, v3, :cond_6

    neg-int v14, v1

    move v15, v14

    const/4 v14, 0x1

    :goto_3
    if-ge v14, v2, :cond_5

    add-int/2addr v15, v1

    add-int/lit8 v22, v15, -0x1

    mul-int v23, v14, v3

    mul-int v23, v23, v1

    move/from16 v24, v22

    move/from16 v22, v17

    :goto_4
    move/from16 v29, v22

    move/from16 v30, v15

    move/from16 v15, v29

    if-ge v15, v1, :cond_4

    add-int/lit8 v24, v24, 0x2

    add-int v22, v24, v9

    add-int v25, v6, v15

    add-int v27, v8, v15

    move-wide/from16 v31, v10

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v11, v22, -0x1

    aget-wide v10, v10, v11

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v28, v4, v22

    move/from16 v4, v16

    :goto_5
    if-ge v4, v3, :cond_3

    mul-int v34, v4, v1

    add-int v34, v34, v23

    add-int v35, v27, v34

    add-int v36, v25, v34

    add-int/lit8 v37, v36, -0x1

    aget-wide v37, v5, v37

    aget-wide v39, v5, v36

    add-int/lit8 v41, v35, -0x1

    mul-double v42, v10, v37

    mul-double v44, v28, v39

    add-double v42, v42, v44

    aput-wide v42, v7, v41

    mul-double v41, v10, v39

    mul-double v43, v28, v37

    sub-double v41, v41, v43

    aput-wide v41, v7, v35

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v22, v15, 0x2

    move/from16 v15, v30

    move-wide/from16 v10, v31

    move/from16 v4, p4

    goto :goto_4

    :cond_4
    move-wide/from16 v31, v10

    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v30

    move/from16 v4, p4

    goto :goto_3

    :cond_5
    move-wide/from16 v31, v10

    move/from16 v46, v9

    goto :goto_9

    :cond_6
    move-wide/from16 v31, v10

    neg-int v4, v1

    move v15, v4

    const/4 v4, 0x1

    :goto_6
    if-ge v4, v2, :cond_9

    add-int/2addr v15, v1

    mul-int v10, v4, v3

    mul-int/2addr v10, v1

    move/from16 v11, v16

    :goto_7
    if-ge v11, v3, :cond_8

    add-int/lit8 v14, v15, -0x1

    mul-int v22, v11, v1

    add-int v22, v22, v10

    move/from16 v23, v14

    move/from16 v14, v17

    :goto_8
    if-ge v14, v1, :cond_7

    add-int/lit8 v23, v23, 0x2

    add-int v24, v23, v9

    move/from16 v46, v9

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v25, v24, -0x1

    aget-wide v27, v9, v25

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v29, v9, v24

    add-int v9, v8, v14

    add-int v9, v9, v22

    add-int v25, v6, v14

    add-int v25, v25, v22

    add-int/lit8 v34, v25, -0x1

    aget-wide v34, v5, v34

    aget-wide v36, v5, v25

    add-int/lit8 v38, v9, -0x1

    mul-double v39, v27, v34

    mul-double v41, v29, v36

    add-double v39, v39, v41

    aput-wide v39, v7, v38

    mul-double v38, v27, v36

    mul-double v40, v29, v34

    sub-double v38, v38, v40

    aput-wide v38, v7, v9

    add-int/lit8 v14, v14, 0x2

    move/from16 v9, v46

    goto :goto_8

    :cond_7
    move/from16 v46, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    move/from16 v46, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    move/from16 v46, v9

    :goto_9
    if-lt v13, v3, :cond_d

    const/4 v4, 0x1

    :goto_a
    if-ge v4, v12, :cond_c

    sub-int v9, v2, v4

    mul-int v10, v4, v3

    mul-int/2addr v10, v1

    mul-int v11, v9, v3

    mul-int/2addr v11, v1

    move/from16 v14, v16

    :goto_b
    if-ge v14, v3, :cond_b

    mul-int v22, v14, v1

    add-int v22, v22, v10

    mul-int v23, v14, v1

    add-int v23, v23, v11

    move/from16 v24, v17

    :goto_c
    move/from16 v47, v24

    move/from16 v0, v47

    if-ge v0, v1, :cond_a

    add-int v24, v6, v0

    add-int v25, v8, v0

    add-int v27, v24, v22

    add-int v28, v24, v23

    add-int v29, v25, v22

    add-int v30, v25, v23

    add-int/lit8 v34, v29, -0x1

    aget-wide v34, v7, v34

    aget-wide v36, v7, v29

    add-int/lit8 v38, v30, -0x1

    aget-wide v38, v7, v38

    aget-wide v40, v7, v30

    add-int/lit8 v42, v27, -0x1

    add-double v43, v34, v38

    aput-wide v43, v5, v42

    add-double v42, v36, v40

    aput-wide v42, v5, v27

    add-int/lit8 v42, v28, -0x1

    sub-double v43, v36, v40

    aput-wide v43, v5, v42

    sub-double v42, v38, v34

    aput-wide v42, v5, v28

    add-int/lit8 v24, v0, 0x2

    move-object/from16 v0, p0

    goto :goto_c

    :cond_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_b

    :cond_b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    :cond_c
    move/from16 v0, p4

    goto :goto_10

    :cond_d
    const/4 v0, 0x1

    :goto_d
    if-ge v0, v12, :cond_c

    sub-int v4, v2, v0

    mul-int v9, v0, v3

    mul-int/2addr v9, v1

    mul-int v10, v4, v3

    mul-int/2addr v10, v1

    move/from16 v11, v17

    :goto_e
    if-ge v11, v1, :cond_f

    add-int v14, v6, v11

    add-int v22, v8, v11

    move/from16 v23, v16

    :goto_f
    move/from16 v48, v23

    move/from16 v49, v4

    move/from16 v4, v48

    if-ge v4, v3, :cond_e

    mul-int v48, v4, v1

    add-int v48, v48, v9

    mul-int v23, v4, v1

    add-int v23, v23, v10

    add-int v24, v14, v48

    add-int v25, v14, v23

    add-int v27, v22, v48

    add-int v28, v22, v23

    add-int/lit8 v29, v27, -0x1

    aget-wide v29, v7, v29

    aget-wide v34, v7, v27

    add-int/lit8 v36, v28, -0x1

    aget-wide v36, v7, v36

    aget-wide v38, v7, v28

    add-int/lit8 v40, v24, -0x1

    add-double v41, v29, v36

    aput-wide v41, v5, v40

    add-double v40, v34, v38

    aput-wide v40, v5, v24

    add-int/lit8 v40, v25, -0x1

    sub-double v41, v34, v38

    aput-wide v41, v5, v40

    sub-double v40, v36, v29

    aput-wide v40, v5, v25

    add-int/lit8 v23, v4, 0x1

    move/from16 v4, v49

    goto :goto_f

    :cond_e
    add-int/lit8 v11, v11, 0x2

    move/from16 v4, v49

    goto :goto_e

    :cond_f
    move/from16 v49, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_10
    move/from16 v46, v9

    move-wide/from16 v31, v10

    move/from16 v0, p4

    invoke-static {v7, v8, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_10
    const/4 v4, 0x1

    :goto_11
    if-ge v4, v12, :cond_12

    sub-int v9, v2, v4

    mul-int v10, v4, v3

    mul-int/2addr v10, v1

    mul-int v11, v9, v3

    mul-int/2addr v11, v1

    move/from16 v14, v16

    :goto_12
    if-ge v14, v3, :cond_11

    mul-int v15, v14, v1

    add-int/2addr v15, v10

    mul-int v22, v14, v1

    add-int v22, v22, v11

    add-int v23, v8, v15

    add-int v24, v8, v22

    aget-wide v27, v7, v23

    aget-wide v29, v7, v24

    add-int v25, v6, v15

    add-double v33, v27, v29

    aput-wide v33, v5, v25

    add-int v25, v6, v22

    sub-double v33, v29, v27

    aput-wide v33, v5, v25

    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_12
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v14, 0x0

    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, v0

    move-wide v10, v9

    const/4 v9, 0x1

    :goto_13
    if-ge v9, v12, :cond_16

    sub-int v22, v2, v9

    mul-double v23, v31, v10

    mul-double v27, v20, v14

    sub-double v23, v23, v27

    mul-double v27, v31, v14

    mul-double v29, v20, v10

    add-double v14, v27, v29

    move-wide/from16 v10, v23

    mul-int v25, v9, v0

    mul-int v27, v22, v0

    move/from16 v28, v16

    :goto_14
    move/from16 v50, v28

    move/from16 v51, v13

    move/from16 v13, v50

    if-ge v13, v0, :cond_13

    add-int v28, v8, v13

    add-int v29, v6, v13

    add-int v30, v28, v25

    aget-wide v33, v5, v29

    add-int v35, v29, v0

    aget-wide v35, v5, v35

    mul-double v35, v35, v10

    add-double v33, v33, v35

    aput-wide v33, v7, v30

    add-int v30, v28, v27

    add-int v33, v29, v4

    aget-wide v33, v5, v33

    mul-double v33, v33, v14

    aput-wide v33, v7, v30

    add-int/lit8 v28, v13, 0x1

    move/from16 v13, v51

    goto :goto_14

    :cond_13
    move-wide/from16 v28, v10

    move-wide/from16 v33, v14

    move-wide/from16 v35, v10

    move-wide/from16 v37, v14

    move/from16 v13, v17

    :goto_15
    if-ge v13, v12, :cond_15

    sub-int v30, v2, v13

    mul-double v39, v28, v35

    mul-double v41, v33, v37

    sub-double v39, v39, v41

    mul-double v41, v28, v37

    mul-double v43, v33, v35

    add-double v37, v41, v43

    move-wide/from16 v35, v39

    mul-int v41, v13, v0

    mul-int v42, v30, v0

    move/from16 v43, v16

    :goto_16
    move/from16 v52, v43

    move/from16 v53, v4

    move/from16 v4, v52

    if-ge v4, v0, :cond_14

    add-int v43, v8, v4

    add-int v44, v6, v4

    add-int v45, v43, v25

    aget-wide v48, v7, v45

    add-int v47, v44, v41

    aget-wide v54, v5, v47

    mul-double v54, v54, v35

    add-double v48, v48, v54

    aput-wide v48, v7, v45

    add-int v45, v43, v27

    aget-wide v48, v7, v45

    add-int v47, v44, v42

    aget-wide v54, v5, v47

    mul-double v54, v54, v37

    add-double v48, v48, v54

    aput-wide v48, v7, v45

    add-int/lit8 v43, v4, 0x1

    move/from16 v4, v53

    goto :goto_16

    :cond_14
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v53

    goto :goto_15

    :cond_15
    move/from16 v53, v4

    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v51

    goto/16 :goto_13

    :cond_16
    move/from16 v53, v4

    move/from16 v51, v13

    const/4 v4, 0x1

    :goto_17
    if-ge v4, v12, :cond_18

    mul-int v9, v4, v0

    move/from16 v13, v16

    :goto_18
    if-ge v13, v0, :cond_17

    add-int v22, v8, v13

    aget-wide v23, v7, v22

    add-int v25, v6, v13

    add-int v25, v25, v9

    aget-wide v27, v5, v25

    add-double v23, v23, v27

    aput-wide v23, v7, v22

    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_18
    if-lt v1, v3, :cond_1a

    move/from16 v4, v16

    :goto_19
    if-ge v4, v3, :cond_1c

    mul-int v9, v4, v1

    mul-int v13, v9, v2

    move/from16 v22, v16

    :goto_1a
    move/from16 v56, v22

    move/from16 v0, v56

    if-ge v0, v1, :cond_19

    add-int v22, v6, v0

    add-int v22, v22, v13

    add-int v23, v8, v0

    add-int v23, v23, v9

    aget-wide v23, v7, v23

    aput-wide v23, v5, v22

    add-int/lit8 v22, v0, 0x1

    move/from16 v0, p4

    goto :goto_1a

    :cond_19
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p4

    goto :goto_19

    :cond_1a
    move/from16 v0, v16

    :goto_1b
    if-ge v0, v1, :cond_1c

    move/from16 v4, v16

    :goto_1c
    if-ge v4, v3, :cond_1b

    mul-int v9, v4, v1

    add-int v13, v6, v0

    mul-int v22, v9, v2

    add-int v13, v13, v22

    add-int v22, v8, v0

    add-int v22, v22, v9

    aget-wide v22, v7, v22

    aput-wide v22, v5, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_1c
    mul-int v0, v2, v1

    const/4 v4, 0x1

    :goto_1d
    if-ge v4, v12, :cond_1e

    sub-int v9, v2, v4

    mul-int v13, v17, v4

    mul-int v22, v4, v3

    mul-int v22, v22, v1

    mul-int v23, v9, v3

    mul-int v23, v23, v1

    mul-int v24, v13, v1

    move/from16 v25, v16

    :goto_1e
    move/from16 v57, v25

    move/from16 v58, v9

    move/from16 v9, v57

    if-ge v9, v3, :cond_1d

    mul-int v57, v9, v1

    add-int v25, v57, v22

    add-int v27, v57, v23

    mul-int v28, v9, v0

    add-int v29, v6, v1

    const/16 v26, 0x1

    add-int/lit8 v29, v29, -0x1

    add-int v29, v29, v24

    sub-int v29, v29, v1

    add-int v29, v29, v28

    add-int v30, v8, v25

    aget-wide v33, v7, v30

    aput-wide v33, v5, v29

    add-int v29, v6, v24

    add-int v29, v29, v28

    add-int v30, v8, v27

    aget-wide v33, v7, v30

    aput-wide v33, v5, v29

    add-int/lit8 v25, v9, 0x1

    move/from16 v9, v58

    goto :goto_1e

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_1e
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1f

    return-void

    :cond_1f
    move/from16 v13, v51

    if-lt v13, v3, :cond_23

    nop

    :goto_1f
    if-ge v4, v12, :cond_22

    sub-int v9, v2, v4

    mul-int v22, v17, v4

    mul-int v23, v4, v3

    mul-int v23, v23, v1

    mul-int v24, v9, v3

    mul-int v24, v24, v1

    mul-int v25, v22, v1

    move/from16 v26, v16

    :goto_20
    move/from16 v59, v26

    move/from16 v60, v9

    move/from16 v9, v59

    if-ge v9, v3, :cond_21

    mul-int v59, v9, v0

    mul-int v26, v9, v1

    move/from16 v27, v17

    :goto_21
    move/from16 v61, v27

    move-wide/from16 v62, v10

    move/from16 v10, v61

    if-ge v10, v1, :cond_20

    sub-int v11, v1, v10

    add-int v27, v6, v10

    add-int v28, v6, v11

    add-int v29, v8, v10

    add-int v30, v27, v25

    add-int v30, v30, v59

    add-int v33, v28, v25

    sub-int v33, v33, v1

    add-int v33, v33, v59

    add-int v34, v29, v26

    add-int v34, v34, v23

    add-int v35, v29, v26

    add-int v35, v35, v24

    add-int/lit8 v36, v34, -0x1

    aget-wide v36, v7, v36

    aget-wide v38, v7, v34

    add-int/lit8 v40, v35, -0x1

    aget-wide v40, v7, v40

    aget-wide v42, v7, v35

    add-int/lit8 v44, v30, -0x1

    add-double v48, v36, v40

    aput-wide v48, v5, v44

    add-int/lit8 v44, v33, -0x1

    sub-double v48, v36, v40

    aput-wide v48, v5, v44

    add-double v44, v38, v42

    aput-wide v44, v5, v30

    sub-double v44, v42, v38

    aput-wide v44, v5, v33

    add-int/lit8 v27, v10, 0x2

    move-wide/from16 v10, v62

    goto :goto_21

    :cond_20
    add-int/lit8 v26, v9, 0x1

    move/from16 v9, v60

    move-wide/from16 v10, v62

    goto :goto_20

    :cond_21
    move-wide/from16 v62, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_22
    move-wide/from16 v62, v10

    goto/16 :goto_25

    :cond_23
    move-wide/from16 v62, v10

    :goto_22
    if-ge v4, v12, :cond_26

    sub-int v9, v2, v4

    mul-int v10, v17, v4

    mul-int v11, v4, v3

    mul-int/2addr v11, v1

    mul-int v22, v9, v3

    mul-int v22, v22, v1

    mul-int v23, v10, v1

    move/from16 v24, v17

    :goto_23
    move/from16 v64, v24

    move/from16 v2, v64

    if-ge v2, v1, :cond_25

    sub-int v24, v1, v2

    add-int v25, v6, v2

    add-int v26, v6, v24

    add-int v27, v8, v2

    move/from16 v28, v16

    :goto_24
    move/from16 v65, v28

    move/from16 v6, v65

    if-ge v6, v3, :cond_24

    mul-int v65, v6, v0

    mul-int v28, v6, v1

    add-int v29, v25, v23

    add-int v29, v29, v65

    add-int v30, v26, v23

    sub-int v30, v30, v1

    add-int v30, v30, v65

    add-int v33, v27, v28

    add-int v33, v33, v11

    add-int v34, v27, v28

    add-int v34, v34, v22

    add-int/lit8 v35, v33, -0x1

    aget-wide v35, v7, v35

    aget-wide v37, v7, v33

    add-int/lit8 v39, v34, -0x1

    aget-wide v39, v7, v39

    aget-wide v41, v7, v34

    add-int/lit8 v43, v29, -0x1

    add-double v44, v35, v39

    aput-wide v44, v5, v43

    add-int/lit8 v43, v30, -0x1

    sub-double v44, v35, v39

    aput-wide v44, v5, v43

    add-double v43, v37, v41

    aput-wide v43, v5, v29

    sub-double v43, v41, v37

    aput-wide v43, v5, v30

    add-int/lit8 v28, v6, 0x1

    move/from16 v6, p6

    goto :goto_24

    :cond_24
    add-int/lit8 v2, v2, 0x2

    move/from16 v24, v2

    move/from16 v2, p2

    move/from16 v6, p6

    goto :goto_23

    :cond_25
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p2

    move/from16 v6, p6

    goto :goto_22

    :cond_26
    :goto_25
    return-void
.end method

.method public realForward([D)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    return-void
.end method

.method public realForward([DI)V
    .locals 8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_forward([DI)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int v1, p2, v0

    aget-wide v2, p1, v1

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v1

    add-int/lit8 v4, v1, -0x1

    aput-wide v2, p1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :pswitch_2
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftfsub(I[DII[DI)V

    goto :goto_1

    :cond_2
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftx020([DI)V

    :cond_3
    :goto_1
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    aget-wide v2, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    aput-wide v0, p1, v2

    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public realForwardFull([D)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([DI)V

    return-void
.end method

.method public realForwardFull([DI)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v10, 0x2

    mul-int v11, v10, v0

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/4 v0, -0x1

    invoke-direct {v7, v8, v9, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/2addr v0, v10

    if-nez v0, :cond_0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v10

    goto :goto_0

    :cond_0
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v1

    div-int/2addr v0, v10

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    add-int v3, v9, v11

    mul-int v4, v10, v2

    sub-int/2addr v3, v4

    mul-int v4, v10, v2

    add-int/2addr v4, v9

    add-int/lit8 v5, v3, 0x1

    aget-wide v14, v8, v4

    neg-double v14, v14

    aput-wide v14, v8, v5

    add-int/lit8 v5, v4, -0x1

    aget-wide v5, v8, v5

    aput-wide v5, v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_2

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v2, v9

    sub-int/2addr v2, v1

    add-int/lit8 v3, v2, 0x1

    aget-wide v3, v8, v3

    add-int/lit8 v5, v2, 0x1

    aget-wide v14, v8, v2

    aput-wide v14, v8, v5

    aput-wide v3, v8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v9, 0x1

    aput-wide v12, v8, v1

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v14

    const/4 v0, 0x0

    if-le v14, v1, :cond_5

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v2, v10

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v3

    if-le v2, v3, :cond_5

    new-array v15, v14, [Ljava/util/concurrent/Future;

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v10

    div-int v16, v1, v14

    nop

    :goto_3
    move v6, v0

    if-ge v6, v14, :cond_4

    mul-int v17, v6, v16

    add-int/lit8 v0, v14, -0x1

    if-ne v6, v0, :cond_3

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v10

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_3
    add-int v0, v17, v16

    goto :goto_4

    :goto_5
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;

    move-object v0, v5

    move-object v1, v7

    move/from16 v2, v17

    move v4, v9

    move-object v12, v5

    move v5, v11

    move v13, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v15, v13

    add-int/lit8 v0, v13, 0x1

    const-wide/16 v12, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v15}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_7

    :cond_5
    nop

    :goto_6
    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v2, v10

    if-ge v0, v2, :cond_6

    mul-int v2, v10, v0

    sub-int v3, v11, v2

    rem-int/2addr v3, v11

    add-int/2addr v3, v9

    add-int v4, v9, v2

    aget-wide v4, v8, v4

    aput-wide v4, v8, v3

    add-int/lit8 v4, v3, 0x1

    add-int v5, v9, v2

    add-int/2addr v5, v1

    aget-wide v5, v8, v5

    neg-double v5, v5

    aput-wide v5, v8, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v9

    add-int/lit8 v1, v9, 0x1

    aget-wide v1, v8, v1

    neg-double v1, v1

    aput-wide v1, v8, v0

    add-int/lit8 v0, v9, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, v8, v0

    nop

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public realInverse([DIZ)V
    .locals 8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse([DI)V

    if-eqz p3, :cond_4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_2

    :pswitch_1
    nop

    :goto_0
    move v0, v7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_1

    add-int v1, p2, v0

    add-int/lit8 v2, v1, -0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, v1, -0x1

    aget-wide v5, p1, v1

    aput-wide v5, p1, v4

    aput-wide v2, p1, v1

    add-int/lit8 v7, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftb([DI)V

    if-eqz p3, :cond_4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto :goto_2

    :pswitch_2
    add-int/lit8 v0, p2, 0x1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    aget-wide v3, p1, p2

    add-int/lit8 v5, p2, 0x1

    aget-wide v5, p1, v5

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    aput-wide v1, p1, v0

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    aput-wide v0, p1, p2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftfsub(I[DII[DI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    goto :goto_1

    :cond_2
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxc020([DI)V

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v7

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public realInverse([DZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    return-void
.end method

.method protected realInverse2([DIZ)V
    .locals 10

    move-object v7, p0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {v7, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse2([DI)V

    if-eqz p3, :cond_7

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v7, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v6

    :goto_0
    const/4 v8, 0x2

    if-lt v0, v8, :cond_1

    add-int v1, p2, v0

    aget-wide v2, p1, v1

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v1

    add-int/lit8 v4, v1, -0x1

    aput-wide v2, p1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_2
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_3

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v8

    move v1, v6

    :goto_1
    if-ge v1, v0, :cond_7

    mul-int v2, v8, v1

    add-int/2addr v2, p2

    add-int/2addr v2, v6

    aget-wide v3, p1, v2

    neg-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v6

    div-int/2addr v0, v8

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    mul-int v2, v8, v1

    add-int/2addr v2, p2

    add-int/2addr v2, v6

    aget-wide v3, p1, v2

    neg-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    goto :goto_4

    :pswitch_2
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_5

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftbsub(I[DII[DI)V

    goto :goto_3

    :cond_5
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v1, :cond_6

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    :cond_6
    :goto_3
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double v8, v0, v2

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    aput-wide v8, p1, v0

    if-eqz p3, :cond_7

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_7
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public realInverseFull([DIZ)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v10, 0x2

    mul-int v11, v10, v0

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v12, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    move v14, v11

    goto/16 :goto_8

    :pswitch_0
    invoke-direct {v7, v8, v9, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    if-eqz p3, :cond_0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x1

    move-object v0, v7

    move-object v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_0
    move v14, v11

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    if-eqz p3, :cond_1

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_1
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/2addr v0, v10

    if-nez v0, :cond_2

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v10

    goto :goto_0

    :cond_2
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v6

    div-int/2addr v0, v10

    :goto_0
    move v1, v6

    :goto_1
    if-ge v1, v0, :cond_3

    mul-int v2, v10, v1

    add-int/2addr v2, v9

    add-int v3, v9, v11

    mul-int v4, v10, v1

    sub-int/2addr v3, v4

    aget-wide v4, v8, v2

    neg-double v4, v4

    aput-wide v4, v8, v2

    add-int/lit8 v4, v3, 0x1

    move v14, v11

    aget-wide v10, v8, v2

    neg-double v10, v10

    aput-wide v10, v8, v4

    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v8, v4

    aput-wide v4, v8, v3

    add-int/lit8 v1, v1, 0x1

    move v11, v14

    const/4 v10, 0x2

    goto :goto_1

    :cond_3
    move v14, v11

    :goto_2
    move v1, v6

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_4

    iget v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v2, v9

    sub-int/2addr v2, v1

    add-int/lit8 v3, v2, 0x1

    aget-wide v3, v8, v3

    add-int/lit8 v5, v2, 0x1

    aget-wide v10, v8, v2

    aput-wide v10, v8, v5

    aput-wide v3, v8, v2

    add-int/lit8 v6, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v9, 0x1

    aput-wide v12, v8, v1

    goto/16 :goto_8

    :pswitch_2
    move v14, v11

    invoke-virtual/range {p0 .. p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v10

    const/4 v0, 0x0

    if-le v10, v6, :cond_7

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v3

    if-le v1, v3, :cond_7

    new-array v11, v10, [Ljava/util/concurrent/Future;

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v2

    div-int v15, v1, v10

    nop

    :goto_3
    move v6, v0

    if-ge v6, v10, :cond_6

    mul-int v16, v6, v15

    add-int/lit8 v0, v10, -0x1

    if-ne v6, v0, :cond_5

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_5
    add-int v0, v16, v15

    goto :goto_4

    :goto_5
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;

    move-object v0, v5

    move-object v1, v7

    move/from16 v2, v16

    move v4, v9

    move-object v12, v5

    move v5, v14

    move v13, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v13

    add-int/lit8 v0, v13, 0x1

    const-wide/16 v12, 0x0

    goto :goto_3

    :cond_6
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_7

    :cond_7
    nop

    :goto_6
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    mul-int v1, v2, v0

    sub-int v11, v14, v1

    rem-int/2addr v11, v14

    add-int v3, v9, v11

    add-int v4, v9, v1

    aget-wide v4, v8, v4

    aput-wide v4, v8, v3

    add-int/lit8 v4, v3, 0x1

    add-int v5, v9, v1

    add-int/2addr v5, v6

    aget-wide v11, v8, v5

    neg-double v11, v11

    aput-wide v11, v8, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v9

    add-int/lit8 v1, v9, 0x1

    aget-wide v1, v8, v1

    neg-double v1, v1

    aput-wide v1, v8, v0

    add-int/lit8 v0, v9, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, v8, v0

    nop

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public realInverseFull([DZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DIZ)V

    return-void
.end method

.method rfftb([DI)V
    .locals 23

    move-object/from16 v10, p0

    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    return-void

    :cond_0
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    new-array v12, v0, [D

    const/4 v0, 0x2

    iget v1, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int v13, v0, v1

    iget-object v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int v1, v11, v13

    aget-wide v0, v0, v1

    double-to-int v14, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v16, v0

    move v15, v1

    move/from16 v17, v2

    move v0, v11

    :goto_0
    move v9, v0

    if-gt v9, v14, :cond_7

    iget-object v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v1, v9, 0x1

    add-int/2addr v1, v13

    aget-wide v0, v0, v1

    double-to-int v8, v0

    mul-int v18, v8, v15

    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v7, v0, v18

    mul-int v19, v7, v15

    packed-switch v8, :pswitch_data_0

    move/from16 v20, v7

    if-nez v16, :cond_5

    const/16 v21, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v8

    move v3, v15

    move/from16 v4, v19

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v22, v8

    move/from16 v8, v21

    move/from16 v21, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

    goto/16 :goto_6

    :pswitch_0
    if-nez v16, :cond_1

    const/4 v6, 0x0

    move-object v0, v10

    move v1, v7

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v20, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

    goto :goto_1

    :cond_1
    move/from16 v20, v7

    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

    :goto_1
    rsub-int/lit8 v0, v16, 0x1

    goto/16 :goto_5

    :pswitch_1
    move/from16 v20, v7

    if-nez v16, :cond_2

    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

    :goto_2
    rsub-int/lit8 v0, v16, 0x1

    goto/16 :goto_5

    :pswitch_2
    move/from16 v20, v7

    if-nez v16, :cond_3

    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

    :goto_3
    rsub-int/lit8 v0, v16, 0x1

    goto :goto_5

    :pswitch_3
    move/from16 v20, v7

    if-nez v16, :cond_4

    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move v2, v15

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

    :goto_4
    rsub-int/lit8 v0, v16, 0x1

    nop

    :goto_5
    move/from16 v16, v0

    move/from16 v22, v8

    move/from16 v21, v9

    move/from16 v0, v20

    goto :goto_7

    :cond_5
    move/from16 v22, v8

    move/from16 v21, v9

    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move/from16 v2, v22

    move v3, v15

    move/from16 v4, v19

    move-object v5, v12

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

    :goto_6
    move/from16 v0, v20

    if-ne v0, v11, :cond_6

    rsub-int/lit8 v1, v16, 0x1

    move/from16 v16, v1

    :cond_6
    :goto_7
    move/from16 v15, v18

    add-int/lit8 v8, v22, -0x1

    mul-int/2addr v8, v0

    add-int v17, v17, v8

    add-int/lit8 v1, v21, 0x1

    move v0, v1

    goto/16 :goto_0

    :cond_7
    if-nez v16, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    iget v1, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v12, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method rfftf([DI)V
    .locals 24

    move-object/from16 v10, p0

    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    return-void

    :cond_0
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    new-array v12, v0, [D

    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x2

    mul-int v13, v1, v0

    iget-object v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int v1, v11, v13

    aget-wide v0, v0, v1

    double-to-int v14, v0

    const/4 v0, 0x1

    iget v1, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v13, -0x1

    move v15, v1

    move v1, v0

    move v0, v11

    :goto_0
    move v9, v0

    if-gt v9, v14, :cond_7

    sub-int v16, v14, v9

    iget-object v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v3, v16, 0x2

    add-int/2addr v3, v13

    aget-wide v3, v0, v3

    double-to-int v8, v3

    div-int v17, v15, v8

    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v7, v0, v15

    mul-int v18, v7, v17

    add-int/lit8 v0, v8, -0x1

    mul-int/2addr v0, v7

    sub-int v19, v2, v0

    rsub-int/lit8 v20, v1, 0x1

    packed-switch v8, :pswitch_data_0

    move/from16 v21, v7

    if-ne v7, v11, :cond_5

    rsub-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    :pswitch_0
    if-nez v20, :cond_1

    const/4 v6, 0x0

    move-object v0, v10

    move v1, v7

    move/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v21, v7

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

    goto/16 :goto_1

    :cond_1
    move/from16 v21, v7

    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

    goto/16 :goto_1

    :pswitch_1
    move/from16 v21, v7

    if-nez v20, :cond_2

    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

    goto :goto_1

    :pswitch_2
    move/from16 v21, v7

    if-nez v20, :cond_3

    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

    goto :goto_1

    :pswitch_3
    move/from16 v21, v7

    if-nez v20, :cond_4

    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v17

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

    nop

    :goto_1
    move/from16 v23, v8

    move/from16 v1, v20

    move/from16 v22, v21

    move/from16 v21, v9

    goto :goto_4

    :cond_5
    :goto_2
    if-nez v20, :cond_6

    const/16 v21, 0x0

    move-object v0, v10

    move v1, v7

    move v2, v8

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v22, v7

    move-object v7, v12

    move/from16 v23, v8

    move/from16 v8, v21

    move/from16 v21, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

    const/4 v0, 0x1

    :goto_3
    move v1, v0

    goto :goto_4

    :cond_6
    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v21, v9

    const/4 v6, 0x0

    move-object v0, v10

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    move/from16 v4, v18

    move-object v5, v12

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    move/from16 v15, v17

    add-int/lit8 v0, v21, 0x1

    move/from16 v2, v19

    goto/16 :goto_0

    :cond_7
    if-ne v1, v11, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    iget v3, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static {v12, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method rffti()V
    .locals 33

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    const/4 v4, 0x0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    add-int/2addr v7, v2

    const/4 v8, 0x4

    if-gt v7, v8, :cond_1

    sget-object v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v9, v7, -0x1

    aget v4, v8, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x2

    :goto_1
    div-int v8, v5, v4

    mul-int v9, v4, v8

    sub-int v9, v5, v9

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v11, v6, 0x1

    add-int/2addr v11, v1

    int-to-double v12, v4

    aput-wide v12, v10, v11

    move v5, v8

    if-ne v4, v3, :cond_4

    if-eq v6, v2, :cond_4

    move v10, v3

    :goto_2
    if-gt v10, v6, :cond_3

    sub-int v11, v6, v10

    add-int/2addr v11, v3

    add-int v12, v11, v1

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v14, v12, 0x1

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v15, v15, v12

    aput-wide v15, v13, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int v12, v3, v1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    aput-wide v13, v11, v12

    :cond_4
    if-ne v5, v2, :cond_9

    nop

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v10, v10

    aput-wide v10, v3, v1

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int v10, v2, v1

    int-to-double v11, v6

    aput-wide v11, v3, v10

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v12, v3

    div-double/2addr v10, v12

    const/4 v3, 0x0

    add-int/lit8 v12, v6, -0x1

    const/4 v13, 0x1

    if-nez v12, :cond_5

    return-void

    :cond_5
    nop

    :goto_3
    if-gt v2, v12, :cond_8

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v1

    aget-wide v14, v14, v15

    double-to-int v14, v14

    const/4 v15, 0x0

    mul-int v16, v13, v14

    move/from16 v17, v1

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v1, v1, v16

    move/from16 v18, v3

    add-int/lit8 v3, v14, -0x1

    const/4 v7, 0x1

    :goto_4
    if-gt v7, v3, :cond_7

    add-int/2addr v15, v13

    move/from16 v19, v18

    move/from16 v21, v3

    move/from16 v20, v4

    int-to-double v3, v15

    mul-double/2addr v3, v10

    const-wide/16 v22, 0x0

    const/16 v24, 0x3

    :goto_5
    move/from16 v25, v24

    move/from16 v26, v5

    move/from16 v5, v25

    if-gt v5, v1, :cond_6

    add-int/lit8 v19, v19, 0x2

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    add-double v22, v22, v24

    move/from16 v27, v8

    move/from16 v28, v9

    mul-double v8, v22, v3

    move-wide/from16 v29, v3

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v3, v19, v3

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v24, v3, -0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    aput-wide v31, v4, v24

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v24, v3, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    aput-wide v31, v4, v24

    add-int/lit8 v24, v5, 0x2

    move/from16 v5, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move-wide/from16 v3, v29

    goto :goto_5

    :cond_6
    move-wide/from16 v29, v3

    move/from16 v27, v8

    move/from16 v28, v9

    add-int v18, v18, v1

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v5, v26

    goto :goto_4

    :cond_7
    move/from16 v21, v3

    move/from16 v20, v4

    move/from16 v26, v5

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v13, v16

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_3

    :cond_8
    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v20, v4

    move/from16 v26, v5

    move/from16 v27, v8

    move/from16 v28, v9

    return-void

    :cond_9
    move/from16 v20, v4

    move/from16 v26, v5

    goto/16 :goto_1
.end method
