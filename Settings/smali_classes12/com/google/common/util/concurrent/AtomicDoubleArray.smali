.class public Lcom/google/common/util/concurrent/AtomicDoubleArray;
.super Ljava/lang/Object;
.source "AtomicDoubleArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient longs:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 57
    return-void
.end method

.method public constructor <init>([D)V
    .locals 5
    .param p1, "array"    # [D

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    array-length v0, p1

    .line 68
    .local v0, "len":I
    new-array v1, v0, [J

    .line 69
    .local v1, "longArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 70
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 73
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 260
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 261
    .local v0, "length":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 264
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->set(ID)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 243
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->length()I

    move-result v0

    .line 244
    .local v0, "length":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 248
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addAndGet(ID)D
    .locals 17
    .param p1, "i"    # I
    .param p2, "delta"    # D

    move-object/from16 v0, p0

    .line 200
    :goto_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move/from16 v8, p1

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v9

    .line 201
    .local v9, "current":J
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    .line 202
    .local v11, "currentVal":D
    add-double v6, v11, p2

    .line 203
    .local v6, "nextVal":D
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v13

    .line 204
    .local v13, "next":J
    iget-object v2, v0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move v3, v8

    move-wide v4, v9

    move-wide v15, v6

    move-wide v6, v13

    .end local v6    # "nextVal":D
    .local v15, "nextVal":D
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    return-wide v15

    .line 207
    .end local v9    # "current":J
    .end local v11    # "currentVal":D
    .end local v13    # "next":J
    .end local v15    # "nextVal":D
    :cond_0
    goto :goto_0
.end method

.method public final compareAndSet(IDD)Z
    .locals 6
    .param p1, "i"    # I
    .param p2, "expect"    # D
    .param p4, "update"    # D

    .line 144
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 145
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 146
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 144
    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    return v0
.end method

.method public final get(I)D
    .locals 2
    .param p1, "i"    # I

    .line 91
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(ID)D
    .locals 17
    .param p1, "i"    # I
    .param p2, "delta"    # D

    move-object/from16 v0, p0

    .line 181
    :goto_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move/from16 v8, p1

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v9

    .line 182
    .local v9, "current":J
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    .line 183
    .local v11, "currentVal":D
    add-double v6, v11, p2

    .line 184
    .local v6, "nextVal":D
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v13

    .line 185
    .local v13, "next":J
    iget-object v2, v0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move v3, v8

    move-wide v4, v9

    move-wide v15, v6

    move-wide v6, v13

    .end local v6    # "nextVal":D
    .local v15, "nextVal":D
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    return-wide v11

    .line 188
    .end local v9    # "current":J
    .end local v11    # "currentVal":D
    .end local v13    # "next":J
    .end local v15    # "nextVal":D
    :cond_0
    goto :goto_0
.end method

.method public final getAndSet(ID)D
    .locals 4
    .param p1, "i"    # I
    .param p2, "newValue"    # D

    .line 127
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 128
    .local v0, "next":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndSet(IJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public final lazySet(ID)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "newValue"    # D

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->set(ID)V

    .line 116
    return-void
.end method

.method public final length()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    return v0
.end method

.method public final set(ID)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "newValue"    # D

    .line 101
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 102
    .local v0, "next":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 215
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 216
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 217
    const-string v1, "[]"

    return-object v1

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    const/4 v2, 0x0

    .line 224
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 225
    if-ne v2, v0, :cond_1

    .line 226
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 228
    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final weakCompareAndSet(IDD)Z
    .locals 6
    .param p1, "i"    # I
    .param p2, "expect"    # D
    .param p4, "update"    # D

    .line 167
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 168
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 169
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 167
    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->weakCompareAndSet(IJJ)Z

    move-result v0

    return v0
.end method
