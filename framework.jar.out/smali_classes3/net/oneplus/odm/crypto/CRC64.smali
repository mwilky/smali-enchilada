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

    .line 21
    const/16 v0, 0x100

    new-array v1, v0, [J

    sput-object v1, Lnet/oneplus/odm/crypto/CRC64;->table:[J

    .line 23
    const/4 v1, 0x0

    move v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 24
    int-to-long v3, v2

    .line 25
    .local v3, "crc":J
    move-wide v4, v3

    move v3, v1

    .local v3, "k":I
    .local v4, "crc":J
    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    .line 26
    const-wide/16 v6, 0x1

    and-long v8, v4, v6

    cmp-long v6, v8, v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 27
    ushr-long v6, v4, v7

    const-wide v8, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long v4, v6, v8

    goto :goto_2

    .line 29
    :cond_0
    ushr-long/2addr v4, v7

    .line 25
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 32
    .end local v3    # "k":I
    :cond_1
    sget-object v3, Lnet/oneplus/odm/crypto/CRC64;->table:[J

    aput-wide v4, v3, v2

    .line 23
    .end local v4    # "crc":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v2    # "n":I
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 38
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "value"    # J

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 42
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "len"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 46
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/odm/crypto/CRC64;->update([BI)V

    .line 47
    return-void
.end method

.method public static combine(Lnet/oneplus/odm/crypto/CRC64;Lnet/oneplus/odm/crypto/CRC64;J)Lnet/oneplus/odm/crypto/CRC64;
    .locals 20
    .param p0, "summ1"    # Lnet/oneplus/odm/crypto/CRC64;
    .param p1, "summ2"    # Lnet/oneplus/odm/crypto/CRC64;
    .param p2, "len2"    # J

    .line 120
    const-wide/16 v0, 0x0

    cmp-long v4, p2, v0

    if-nez v4, :cond_0

    .line 121
    new-instance v0, Lnet/oneplus/odm/crypto/CRC64;

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/odm/crypto/CRC64;->getValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lnet/oneplus/odm/crypto/CRC64;-><init>(J)V

    return-object v0

    .line 125
    :cond_0
    const/16 v4, 0x40

    new-array v5, v4, [J

    .line 126
    .local v5, "even":[J
    new-array v6, v4, [J

    .line 129
    .local v6, "odd":[J
    const/4 v7, 0x0

    const-wide v8, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    aput-wide v8, v6, v7

    .line 131
    const-wide/16 v7, 0x1

    .line 132
    .local v7, "row":J
    const/4 v9, 0x1

    move-wide v10, v7

    move v7, v9

    .local v7, "n":I
    .local v10, "row":J
    :goto_0
    if-ge v7, v4, :cond_1

    .line 133
    aput-wide v10, v6, v7

    .line 134
    shl-long/2addr v10, v9

    .line 132
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {v5, v6}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    .line 141
    invoke-static {v6, v5}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/odm/crypto/CRC64;->getValue()J

    move-result-wide v12

    .line 146
    .local v12, "crc1":J
    invoke-virtual/range {p1 .. p1}, Lnet/oneplus/odm/crypto/CRC64;->getValue()J

    move-result-wide v14

    move-wide/from16 v2, p2

    .line 149
    .end local p2    # "len2":J
    .local v2, "len2":J
    .local v14, "crc2":J
    :cond_2
    invoke-static {v5, v6}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    .line 150
    const-wide/16 v16, 0x1

    and-long v18, v2, v16

    cmp-long v4, v18, v16

    if-nez v4, :cond_3

    .line 151
    invoke-static {v5, v12, v13}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v12

    .line 152
    :cond_3
    ushr-long/2addr v2, v9

    .line 155
    cmp-long v4, v2, v0

    if-nez v4, :cond_4

    .line 156
    goto :goto_1

    .line 159
    :cond_4
    invoke-static {v6, v5}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    .line 160
    and-long v18, v2, v16

    cmp-long v4, v18, v16

    if-nez v4, :cond_5

    .line 161
    invoke-static {v6, v12, v13}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v12

    .line 162
    :cond_5
    ushr-long/2addr v2, v9

    .line 165
    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 168
    :goto_1
    xor-long v0, v12, v14

    .line 169
    .end local v12    # "crc1":J
    .local v0, "crc1":J
    new-instance v4, Lnet/oneplus/odm/crypto/CRC64;

    invoke-direct {v4, v0, v1}, Lnet/oneplus/odm/crypto/CRC64;-><init>(J)V

    return-object v4
.end method

.method public static fromBytes([B)Lnet/oneplus/odm/crypto/CRC64;
    .locals 7
    .param p0, "b"    # [B

    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .local v0, "l":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 55
    const/16 v3, 0x8

    shl-long/2addr v0, v3

    .line 56
    aget-byte v3, p0, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    xor-long/2addr v0, v3

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lnet/oneplus/odm/crypto/CRC64;

    invoke-direct {v2, v0, v1}, Lnet/oneplus/odm/crypto/CRC64;-><init>(J)V

    return-object v2
.end method

.method private static gf2MatrixSquare([J[J)V
    .locals 3
    .param p0, "square"    # [J
    .param p1, "mat"    # [J

    .line 109
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 110
    aget-wide v1, p1, v0

    invoke-static {p1, v1, v2}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "n":I
    :cond_0
    return-void
.end method

.method private static gf2MatrixTimes([JJ)J
    .locals 7
    .param p0, "mat"    # [J
    .param p1, "vec"    # J

    .line 97
    const-wide/16 v0, 0x0

    .line 98
    .local v0, "sum":J
    const/4 v2, 0x0

    .line 99
    .local v2, "idx":I
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_1

    .line 100
    const-wide/16 v3, 0x1

    and-long v5, p1, v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    .line 101
    aget-wide v3, p0, v2

    xor-long/2addr v0, v3

    .line 102
    :cond_0
    const/4 v3, 0x1

    ushr-long/2addr p1, v3

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return-wide v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 7

    .line 65
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 66
    .local v1, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 67
    rsub-int/lit8 v3, v2, 0x7

    iget-wide v4, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    mul-int/lit8 v6, v2, 0x8

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getValue()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    return-wide v0
.end method

.method public update([BI)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "len"    # I

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "idx":I
    iget-wide v1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    not-long v1, v1

    iput-wide v1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 86
    :goto_0
    if-lez p2, :cond_0

    .line 87
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

    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-wide v1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    not-long v1, v1

    iput-wide v1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 92
    return-void
.end method
