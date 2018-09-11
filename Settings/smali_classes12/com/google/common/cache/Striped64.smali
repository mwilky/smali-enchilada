.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final baseUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lcom/google/common/cache/Striped64;",
            ">;"
        }
    .end annotation
.end field

.field private static final busyUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lcom/google/common/cache/Striped64;",
            ">;"
        }
    .end annotation
.end field

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    .line 122
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    .line 125
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 281
    const-class v0, Lcom/google/common/cache/Striped64;

    const-string v1, "base"

    .line 282
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->baseUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 283
    const-class v0, Lcom/google/common/cache/Striped64;

    const-string v1, "busy"

    .line 284
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->busyUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 283
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 147
    return-void
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 6
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .line 153
    sget-object v0, Lcom/google/common/cache/Striped64;->baseUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .locals 3

    .line 160
    sget-object v0, Lcom/google/common/cache/Striped64;->busyUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .locals 4
    .param p1, "initialValue"    # J

    .line 271
    iget-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 272
    .local v0, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 273
    if-eqz v0, :cond_1

    .line 274
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 275
    .local v3, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v3, :cond_0

    .line 276
    iput-wide p1, v3, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 274
    .end local v3    # "a":Lcom/google/common/cache/Striped64$Cell;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_1
    return-void
.end method

.method final retryUpdate(J[IZ)V
    .locals 18
    .param p1, "x"    # J
    .param p3, "hc"    # [I
    .param p4, "wasUncontended"    # Z

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 187
    const/4 v4, 0x0

    if-nez p3, :cond_1

    .line 188
    sget-object v5, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    const/4 v6, 0x1

    new-array v7, v6, [I

    move-object v0, v7

    .end local p3    # "hc":[I
    .local v0, "hc":[I
    invoke-virtual {v5, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 189
    sget-object v5, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 190
    .local v5, "r":I
    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    aput v6, v0, v4

    .end local v5    # "r":I
    move v5, v6

    .line 191
    .local v5, "h":I
    nop

    .line 193
    move-object v6, v0

    goto :goto_1

    .end local v0    # "hc":[I
    .end local v5    # "h":I
    .restart local p3    # "hc":[I
    :cond_1
    aget v5, p3, v4

    move-object/from16 v6, p3

    .end local p3    # "hc":[I
    .restart local v5    # "h":I
    .local v6, "hc":[I
    :goto_1
    move v0, v5

    .line 194
    .end local v5    # "h":I
    .local v0, "h":I
    move/from16 v7, p4

    move v0, v4

    .end local p4    # "wasUncontended":Z
    .local v0, "collide":Z
    .restart local v5    # "h":I
    .local v7, "wasUncontended":Z
    :goto_2
    move v8, v0

    .line 197
    .end local v0    # "collide":Z
    .local v8, "collide":Z
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object v9, v0

    .local v9, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_d

    array-length v0, v9

    move v10, v0

    .local v10, "n":I
    if-lez v0, :cond_d

    .line 198
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v5

    aget-object v0, v9, v0

    move-object v11, v0

    .local v11, "a":Lcom/google/common/cache/Striped64$Cell;
    if-nez v0, :cond_5

    .line 199
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_4

    .line 200
    new-instance v0, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v0, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    move-object v12, v0

    .line 201
    .local v12, "r":Lcom/google/common/cache/Striped64$Cell;
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    move v13, v4

    .line 205
    .local v13, "created":Z
    :try_start_0
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object v14, v0

    .local v14, "rs":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_2

    array-length v0, v14

    move v15, v0

    .local v15, "m":I
    if-lez v0, :cond_2

    add-int/lit8 v0, v15, -0x1

    and-int/2addr v0, v5

    move/from16 v16, v0

    .local v16, "j":I
    aget-object v0, v14, v0

    if-nez v0, :cond_2

    .line 208
    aput-object v12, v14, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/4 v13, 0x1

    .line 212
    .end local v14    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    .end local v15    # "m":I
    .end local v16    # "j":I
    :cond_2
    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 213
    nop

    .line 214
    if-eqz v13, :cond_3

    .line 215
    nop

    .line 265
    move/from16 v17, v5

    goto/16 :goto_8

    .line 194
    .end local v9    # "as":[Lcom/google/common/cache/Striped64$Cell;
    .end local v10    # "n":I
    .end local v11    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v12    # "r":Lcom/google/common/cache/Striped64$Cell;
    .end local v13    # "created":Z
    :cond_3
    move v0, v8

    goto :goto_2

    .line 212
    .restart local v9    # "as":[Lcom/google/common/cache/Striped64$Cell;
    .restart local v10    # "n":I
    .restart local v11    # "a":Lcom/google/common/cache/Striped64$Cell;
    .restart local v12    # "r":Lcom/google/common/cache/Striped64$Cell;
    .restart local v13    # "created":Z
    :catchall_0
    move-exception v0

    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    .line 219
    .end local v12    # "r":Lcom/google/common/cache/Striped64$Cell;
    .end local v13    # "created":Z
    :cond_4
    const/4 v8, 0x0

    .line 242
    .end local v5    # "h":I
    .local v17, "h":I
    :goto_3
    move/from16 v17, v5

    goto :goto_7

    .line 221
    .end local v17    # "h":I
    .restart local v5    # "h":I
    :cond_5
    if-nez v7, :cond_6

    .line 222
    const/4 v7, 0x1

    goto :goto_3

    .line 223
    :cond_6
    iget-wide v12, v11, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide v14, v12

    .local v14, "v":J
    move/from16 v17, v5

    invoke-virtual {v1, v14, v15, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v4

    .end local v5    # "h":I
    .restart local v17    # "h":I
    invoke-virtual {v11, v12, v13, v4, v5}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 224
    goto/16 :goto_8

    .line 225
    :cond_7
    sget v0, Lcom/google/common/cache/Striped64;->NCPU:I

    if-ge v10, v0, :cond_b

    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eq v0, v9, :cond_8

    goto :goto_6

    .line 227
    :cond_8
    if-nez v8, :cond_9

    .line 228
    const/4 v8, 0x1

    goto :goto_7

    .line 229
    :cond_9
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 231
    :try_start_1
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v9, :cond_a

    .line 232
    shl-int/lit8 v0, v10, 0x1

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 233
    .local v0, "rs":[Lcom/google/common/cache/Striped64$Cell;
    const/4 v4, 0x0

    :try_start_2
    invoke-static {v9, v4, v0, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 234
    :try_start_3
    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v0    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    goto :goto_4

    .line 237
    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v4, 0x0

    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 238
    nop

    .line 239
    const/4 v0, 0x0

    .line 240
    .end local v8    # "collide":Z
    .local v0, "collide":Z
    nop

    .line 194
    move/from16 v5, v17

    goto/16 :goto_2

    .line 237
    .end local v0    # "collide":Z
    .restart local v8    # "collide":Z
    :catchall_2
    move-exception v0

    const/4 v4, 0x0

    :goto_5
    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    .line 226
    :cond_b
    :goto_6
    const/4 v8, 0x0

    .line 242
    .end local v14    # "v":J
    :cond_c
    :goto_7
    shl-int/lit8 v0, v17, 0xd

    xor-int v0, v17, v0

    .line 243
    .end local v17    # "h":I
    .local v0, "h":I
    ushr-int/lit8 v4, v0, 0x11

    xor-int/2addr v0, v4

    .line 244
    shl-int/lit8 v4, v0, 0x5

    xor-int/2addr v0, v4

    .line 245
    const/4 v4, 0x0

    aput v0, v6, v4

    .line 264
    move v5, v0

    move v0, v8

    goto :goto_a

    .line 247
    .end local v0    # "h":I
    .end local v10    # "n":I
    .end local v11    # "a":Lcom/google/common/cache/Striped64$Cell;
    .restart local v5    # "h":I
    :cond_d
    move/from16 v17, v5

    .end local v5    # "h":I
    .restart local v17    # "h":I
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 248
    const/4 v4, 0x0

    move v5, v4

    .line 250
    .local v5, "init":Z
    :try_start_4
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v9, :cond_e

    .line 251
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    .line 252
    .local v0, "rs":[Lcom/google/common/cache/Striped64$Cell;
    and-int/lit8 v4, v17, 0x1

    new-instance v10, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v10, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v10, v0, v4

    .line 253
    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 254
    const/4 v5, 0x1

    .line 257
    .end local v0    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_e
    const/4 v4, 0x0

    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 258
    nop

    .line 259
    if-eqz v5, :cond_f

    .line 260
    goto :goto_8

    .line 261
    .end local v5    # "init":Z
    :cond_f
    nop

    .line 264
    const/4 v4, 0x0

    goto :goto_9

    .line 257
    .restart local v5    # "init":Z
    :catchall_3
    move-exception v0

    const/4 v4, 0x0

    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    .line 262
    .end local v5    # "init":Z
    :cond_10
    const/4 v4, 0x0

    iget-wide v10, v1, Lcom/google/common/cache/Striped64;->base:J

    move-wide v12, v10

    .local v12, "v":J
    invoke-virtual {v1, v12, v13, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 263
    nop

    .line 265
    .end local v9    # "as":[Lcom/google/common/cache/Striped64$Cell;
    .end local v12    # "v":J
    :goto_8
    return-void

    .line 264
    :cond_11
    :goto_9
    move v0, v8

    move/from16 v5, v17

    .end local v8    # "collide":Z
    .end local v17    # "h":I
    .local v0, "collide":Z
    .local v5, "h":I
    :goto_a
    goto/16 :goto_2
.end method
