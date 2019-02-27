.class public Lnet/oneplus/odm/crypto/CRC64;
.super Ljava/lang/Object;
.source "CRC64.java"


# static fields
.field private static final GF2_DIM:I = 0x40

.field private static final POLY:J = -0x3693a86a2878f0beL

.field private static final table:[J


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [J

    sput-object v1, Lnet/oneplus/odm/crypto/CRC64;->table:[J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    int-to-long v3, v2

    move-wide v4, v3

    move v3, v1

    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    const-wide/16 v6, 0x1

    and-long v8, v4, v6

    cmp-long v6, v8, v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    ushr-long v6, v4, v7

    const-wide v8, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long v4, v6, v8

    goto :goto_2

    :cond_0
    ushr-long/2addr v4, v7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lnet/oneplus/odm/crypto/CRC64;->table:[J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/odm/crypto/CRC64;->update([BI)V

    return-void
.end method

.method public static combine(Lnet/oneplus/odm/crypto/CRC64;Lnet/oneplus/odm/crypto/CRC64;J)Lnet/oneplus/odm/crypto/CRC64;
    .locals 20

    const-wide/16 v0, 0x0

    cmp-long v4, p2, v0

    if-nez v4, :cond_0

    new-instance v0, Lnet/oneplus/odm/crypto/CRC64;

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/odm/crypto/CRC64;->getValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lnet/oneplus/odm/crypto/CRC64;-><init>(J)V

    return-object v0

    :cond_0
    const/16 v4, 0x40

    new-array v5, v4, [J

    new-array v6, v4, [J

    const/4 v7, 0x0

    const-wide v8, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    aput-wide v8, v6, v7

    const-wide/16 v7, 0x1

    const/4 v9, 0x1

    move-wide v10, v7

    move v7, v9

    :goto_0
    if-ge v7, v4, :cond_1

    aput-wide v10, v6, v7

    shl-long/2addr v10, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v5, v6}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    invoke-static {v6, v5}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/odm/crypto/CRC64;->getValue()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/odm/crypto/CRC64;->getValue()J

    move-result-wide v14

    move-wide/from16 v2, p2

    :cond_2
    invoke-static {v5, v6}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    const-wide/16 v16, 0x1

    and-long v18, v2, v16

    cmp-long v4, v18, v16

    if-nez v4, :cond_3

    invoke-static {v5, v12, v13}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v12

    :cond_3
    ushr-long/2addr v2, v9

    cmp-long v4, v2, v0

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v6, v5}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    and-long v18, v2, v16

    cmp-long v4, v18, v16

    if-nez v4, :cond_5

    invoke-static {v6, v12, v13}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v12

    :cond_5
    ushr-long/2addr v2, v9

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    :goto_1
    xor-long v0, v12, v14

    new-instance v4, Lnet/oneplus/odm/crypto/CRC64;

    invoke-direct {v4, v0, v1}, Lnet/oneplus/odm/crypto/CRC64;-><init>(J)V

    return-object v4
.end method

.method public static fromBytes([B)Lnet/oneplus/odm/crypto/CRC64;
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    aget-byte v3, p0, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    xor-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/oneplus/odm/crypto/CRC64;

    invoke-direct {v2, v0, v1}, Lnet/oneplus/odm/crypto/CRC64;-><init>(J)V

    return-object v2
.end method

.method private static gf2MatrixSquare([J[J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    invoke-static {p1, v1, v2}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static gf2MatrixTimes([JJ)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x1

    and-long v5, p1, v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    aget-wide v3, p0, v2

    xor-long/2addr v0, v3

    :cond_0
    const/4 v3, 0x1

    ushr-long/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x7

    iget-wide v4, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    mul-int/lit8 v6, v2, 0x8

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    return-wide v0
.end method

.method public update([BI)V
    .locals 6

    const/4 v0, 0x0

    iget-wide v1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    not-long v1, v1

    iput-wide v1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    :goto_0
    if-lez p2, :cond_0

    sget-object v1, Lnet/oneplus/odm/crypto/CRC64;->table:[J

    iget-wide v2, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    aget-byte v4, p1, v0

    int-to-long v4, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    aget-wide v1, v1, v2

    iget-wide v3, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    const/16 v5, 0x8

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    not-long v1, v1

    iput-wide v1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    return-void
.end method
