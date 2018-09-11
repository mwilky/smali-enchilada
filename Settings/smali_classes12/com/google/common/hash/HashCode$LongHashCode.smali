.class final Lcom/google/common/hash/HashCode$LongHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongHashCode"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final hash:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .param p1, "hash"    # J

    .line 186
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 187
    iput-wide p1, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    .line 188
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 4

    .line 197
    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x10

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x18

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x28

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x30

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x38

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    return-object v1
.end method

.method public asInt()I
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    long-to-int v0, v0

    return v0
.end method

.method public asLong()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    return-wide v0
.end method

.method public bits()I
    .locals 1

    .line 192
    const/16 v0, 0x40

    return v0
.end method

.method equalsSameBits(Lcom/google/common/hash/HashCode;)Z
    .locals 4
    .param p1, "that"    # Lcom/google/common/hash/HashCode;

    .line 232
    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public padToLong()J
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    return-wide v0
.end method

.method writeBytesToImpl([BII)V
    .locals 5
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 226
    add-int v1, p2, v0

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    mul-int/lit8 v4, v0, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
