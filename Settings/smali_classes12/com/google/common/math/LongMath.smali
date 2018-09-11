.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final biggestBinomials:[I

.field static final biggestSimpleBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final factorials:[J

.field static final halfPowersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 169
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    .line 176
    const/16 v0, 0x13

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    .line 201
    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    .line 618
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    .line 727
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    .line 736
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_2
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    :array_3
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    :array_5
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .locals 17
    .param p0, "n"    # I
    .param p1, "k"    # I

    move/from16 v0, p0

    .line 649
    move/from16 v1, p1

    const-string v2, "n"

    invoke-static {v2, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 650
    const-string v2, "k"

    invoke-static {v2, v1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 651
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-string v5, "k (%s) > n (%s)"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-static {v4, v5, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 652
    shr-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_1

    .line 653
    sub-int v1, v0, v1

    .line 655
    .end local p1    # "k":I
    .local v1, "k":I
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 661
    sget-object v2, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 662
    sget-object v2, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v2, v2, v0

    sget-object v4, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v4, v4, v1

    sget-object v6, Lcom/google/common/math/LongMath;->factorials:[J

    sub-int v7, v0, v1

    aget-wide v6, v6, v7

    mul-long/2addr v4, v6

    div-long/2addr v2, v4

    return-wide v2

    .line 659
    :pswitch_0
    int-to-long v2, v0

    return-wide v2

    .line 657
    :pswitch_1
    const-wide/16 v2, 0x1

    return-wide v2

    .line 663
    :cond_2
    sget-object v2, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v2, v2

    if-ge v1, v2, :cond_8

    sget-object v2, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    aget v2, v2, v1

    if-le v0, v2, :cond_3

    goto :goto_4

    .line 665
    :cond_3
    sget-object v2, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    sget-object v2, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_5

    .line 667
    add-int/lit8 v2, v0, -0x1

    .local v2, "n":I
    int-to-long v3, v0

    .line 668
    .end local p0    # "n":I
    .local v3, "result":J
    nop

    .local v6, "i":I
    :goto_1
    move v0, v6

    .end local v6    # "i":I
    .local v0, "i":I
    if-gt v0, v1, :cond_4

    .line 669
    int-to-long v5, v2

    mul-long/2addr v3, v5

    .line 670
    int-to-long v5, v0

    div-long/2addr v3, v5

    .line 668
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 672
    .end local v6    # "i":I
    :cond_4
    return-wide v3

    .line 674
    .end local v2    # "n":I
    .end local v3    # "result":J
    .restart local p0    # "n":I
    :cond_5
    int-to-long v2, v0

    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v4}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v2

    .line 676
    .local v2, "nBits":I
    const-wide/16 v3, 0x1

    .line 677
    .restart local v3    # "result":J
    add-int/lit8 v5, v0, -0x1

    .local v5, "n":I
    int-to-long v7, v0

    .line 678
    .end local p0    # "n":I
    .local v7, "numerator":J
    const-wide/16 v9, 0x1

    .line 680
    .local v9, "denominator":J
    move v0, v2

    .line 688
    .local v0, "numeratorBits":I
    move-wide v13, v7

    move-wide v15, v9

    .end local v7    # "numerator":J
    .end local v9    # "denominator":J
    .restart local v6    # "i":I
    .local v13, "numerator":J
    .local v15, "denominator":J
    :goto_2
    if-gt v6, v1, :cond_7

    .line 689
    add-int v7, v0, v2

    const/16 v8, 0x3f

    if-ge v7, v8, :cond_6

    .line 691
    int-to-long v7, v5

    mul-long/2addr v13, v7

    .line 692
    int-to-long v7, v6

    mul-long/2addr v15, v7

    .line 693
    add-int/2addr v0, v2

    goto :goto_3

    .line 697
    :cond_6
    move-wide v7, v3

    move-wide v9, v13

    move-wide v11, v15

    invoke-static/range {v7 .. v12}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v3

    .line 698
    int-to-long v7, v5

    .line 699
    .end local v13    # "numerator":J
    .restart local v7    # "numerator":J
    int-to-long v9, v6

    .line 700
    .end local v15    # "denominator":J
    .restart local v9    # "denominator":J
    move v0, v2

    .line 688
    move-wide v13, v7

    move-wide v15, v9

    .end local v7    # "numerator":J
    .end local v9    # "denominator":J
    .restart local v13    # "numerator":J
    .restart local v15    # "denominator":J
    :goto_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 703
    .end local v6    # "i":I
    :cond_7
    move-wide v7, v3

    move-wide v9, v13

    move-wide v11, v15

    invoke-static/range {v7 .. v12}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v6

    return-wide v6

    .line 664
    .end local v0    # "numeratorBits":I
    .end local v2    # "nBits":I
    .end local v3    # "result":J
    .end local v5    # "n":I
    .end local v13    # "numerator":J
    .end local v15    # "denominator":J
    .restart local p0    # "n":I
    :cond_8
    :goto_4
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkedAdd(JJ)J
    .locals 9
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 509
    add-long v0, p0, p2

    .line 510
    .local v0, "result":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-gez v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    xor-long v7, p0, v0

    cmp-long v4, v7, v4

    if-ltz v4, :cond_1

    move v3, v6

    nop

    :cond_1
    or-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 511
    return-wide v0
.end method

.method public static checkedMultiply(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 534
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    not-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 535
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    not-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 546
    .local v0, "leadingZeros":I
    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    .line 547
    mul-long v1, p0, p2

    return-wide v1

    .line 549
    :cond_0
    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 550
    const-wide/16 v4, 0x0

    cmp-long v1, p0, v4

    if-ltz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p2, v6

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    or-int/2addr v1, v6

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 551
    mul-long v6, p0, p2

    .line 552
    .local v6, "result":J
    cmp-long v1, p0, v4

    if-eqz v1, :cond_5

    div-long v4, v6, p0

    cmp-long v1, v4, p2

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    :cond_5
    :goto_3
    move v2, v3

    :goto_4
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 553
    return-wide v6
.end method

.method public static checkedPow(JI)J
    .locals 7
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 564
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 565
    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/16 v3, 0x2

    cmp-long v3, p0, v3

    if-gtz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    const-wide/16 v3, 0x1

    if-eqz v0, :cond_7

    .line 566
    long-to-int v0, p0

    const-wide/16 v5, -0x1

    packed-switch v0, :pswitch_data_0

    .line 580
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 574
    :pswitch_0
    const/16 v0, 0x3f

    if-ge p2, v0, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 575
    shl-long v0, v3, p2

    return-wide v0

    .line 570
    :pswitch_1
    return-wide v3

    .line 568
    :pswitch_2
    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x0

    :goto_2
    return-wide v3

    .line 572
    :pswitch_3
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move-wide v3, v5

    :goto_3
    return-wide v3

    .line 577
    :pswitch_4
    const/16 v0, 0x40

    if-ge p2, v0, :cond_5

    move v1, v2

    nop

    :cond_5
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 578
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_6

    shl-long v0, v3, p2

    goto :goto_4

    :cond_6
    shl-long v0, v5, p2

    :goto_4
    return-wide v0

    .line 583
    :cond_7
    nop

    .line 585
    .local v3, "accum":J
    :cond_8
    :goto_5
    packed-switch p2, :pswitch_data_1

    .line 591
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    .line 592
    invoke-static {v3, v4, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v3

    goto :goto_6

    .line 589
    :pswitch_5
    invoke-static {v3, v4, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    return-wide v0

    .line 587
    :pswitch_6
    return-wide v3

    .line 594
    :cond_9
    :goto_6
    shr-int/lit8 p2, p2, 0x1

    .line 595
    if-lez p2, :cond_8

    .line 596
    const-wide v5, 0xb504f333L

    cmp-long v0, p0, v5

    if-gtz v0, :cond_a

    move v0, v2

    goto :goto_7

    :cond_a
    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 597
    mul-long/2addr p0, p0

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .locals 9
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 521
    sub-long v0, p0, p2

    .line 522
    .local v0, "result":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-ltz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    xor-long v7, p0, v0

    cmp-long v4, v7, v4

    if-ltz v4, :cond_1

    move v3, v6

    nop

    :cond_1
    or-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 523
    return-wide v0
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 17
    .param p0, "p"    # J
    .param p2, "q"    # J
    .param p4, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 348
    move-object/from16 v0, p4

    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    div-long v1, p0, p2

    .line 350
    .local v1, "div":J
    mul-long v3, p2, v1

    sub-long v3, p0, v3

    .line 352
    .local v3, "rem":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 353
    return-wide v1

    .line 363
    :cond_0
    xor-long v7, p0, p2

    const/16 v9, 0x3f

    shr-long/2addr v7, v9

    long-to-int v7, v7

    const/4 v8, 0x1

    or-int/2addr v7, v8

    .line 365
    .local v7, "signum":I
    sget-object v9, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_0

    .line 395
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 384
    :pswitch_0
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 385
    .local v11, "absRem":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    sub-long/2addr v13, v11

    sub-long v13, v11, v13

    .line 388
    .local v13, "cmpRemToHalfDivisor":J
    cmp-long v9, v13, v5

    if-nez v9, :cond_4

    .line 389
    sget-object v9, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne v0, v9, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_0
    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne v0, v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v10

    :goto_1
    const-wide/16 v15, 0x1

    and-long/2addr v15, v1

    cmp-long v5, v15, v5

    if-eqz v5, :cond_3

    const/4 v10, 0x1

    nop

    :cond_3
    and-int v5, v8, v10

    or-int/2addr v5, v9

    .local v5, "increment":Z
    goto :goto_2

    .line 391
    .end local v5    # "increment":Z
    :cond_4
    cmp-long v5, v13, v5

    if-lez v5, :cond_5

    const/4 v10, 0x1

    nop

    :cond_5
    move v5, v10

    .line 393
    .restart local v5    # "increment":Z
    goto :goto_2

    .line 376
    .end local v5    # "increment":Z
    .end local v11    # "absRem":J
    .end local v13    # "cmpRemToHalfDivisor":J
    :pswitch_1
    if-lez v7, :cond_6

    const/4 v10, 0x1

    nop

    :cond_6
    move v5, v10

    .line 377
    .restart local v5    # "increment":Z
    goto :goto_2

    .line 373
    .end local v5    # "increment":Z
    :pswitch_2
    const/4 v5, 0x1

    .line 374
    .restart local v5    # "increment":Z
    goto :goto_2

    .line 379
    .end local v5    # "increment":Z
    :pswitch_3
    if-gez v7, :cond_7

    const/4 v10, 0x1

    nop

    :cond_7
    move v5, v10

    .line 380
    .restart local v5    # "increment":Z
    goto :goto_2

    .line 367
    .end local v5    # "increment":Z
    :pswitch_4
    cmp-long v5, v3, v5

    if-nez v5, :cond_8

    const/4 v10, 0x1

    nop

    :cond_8
    invoke-static {v10}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 370
    :pswitch_5
    const/4 v5, 0x0

    .line 371
    .restart local v5    # "increment":Z
    nop

    .line 395
    :goto_2
    nop

    .line 397
    if-eqz v5, :cond_9

    int-to-long v8, v7

    add-long/2addr v8, v1

    goto :goto_3

    :cond_9
    move-wide v8, v1

    :goto_3
    return-wide v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static factorial(I)J
    .locals 2
    .param p0, "n"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 614
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 615
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v0, v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method static fitsInInt(J)Z
    .locals 2
    .param p0, "x"    # J

    .line 744
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static gcd(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 463
    const-string v0, "a"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 464
    const-string v0, "b"

    invoke-static {v0, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 465
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 468
    return-wide p2

    .line 469
    :cond_0
    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 470
    return-wide p0

    .line 476
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 477
    .local v0, "aTwos":I
    shr-long/2addr p0, v0

    .line 478
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 479
    .local v1, "bTwos":I
    shr-long/2addr p2, v1

    .line 480
    :goto_0
    cmp-long v2, p0, p2

    if-eqz v2, :cond_2

    .line 488
    sub-long v2, p0, p2

    .line 490
    .local v2, "delta":J
    const/16 v4, 0x3f

    shr-long v4, v2, v4

    and-long/2addr v4, v2

    .line 493
    .local v4, "minDeltaOrZero":J
    sub-long v6, v2, v4

    sub-long/2addr v6, v4

    .line 496
    .end local p0    # "a":J
    .local v6, "a":J
    add-long/2addr p2, v4

    .line 497
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    shr-long p0, v6, p0

    .line 498
    .end local v2    # "delta":J
    .end local v4    # "minDeltaOrZero":J
    .end local v6    # "a":J
    .restart local p0    # "a":J
    goto :goto_0

    .line 499
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-long v2, p0, v2

    return-wide v2
.end method

.method public static isPowerOfTwo(J)Z
    .locals 7
    .param p0, "x"    # J

    .line 62
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-wide/16 v5, 0x1

    sub-long v5, p0, v5

    and-long/2addr v5, p0

    cmp-long v0, v5, v0

    if-nez v0, :cond_1

    move v3, v4

    nop

    :cond_1
    and-int v0, v2, v3

    return v0
.end method

.method static lessThanBranchFree(JJ)I
    .locals 3
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 73
    sub-long v0, p0, p2

    not-long v0, v0

    not-long v0, v0

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .locals 5
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 128
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 129
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v0

    .line 130
    .local v0, "logFloor":I
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v1, v1, v0

    .line 131
    .local v1, "floorPow":J
    sget-object v3, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 147
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 145
    :pswitch_0
    sget-object v3, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v3, v3, v0

    invoke-static {v3, v4, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v3

    add-int/2addr v3, v0

    return v3

    .line 140
    :pswitch_1
    invoke-static {v1, v2, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v3

    add-int/2addr v3, v0

    return v3

    .line 133
    :pswitch_2
    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 137
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static log10Floor(J)I
    .locals 3
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 160
    sget-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    aget-byte v0, v0, v1

    .line 165
    .local v0, "y":I
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v1, v1, v0

    invoke-static {p0, p1, v1, v2}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .locals 5
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 86
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 87
    sget-object v0, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "impossible"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 103
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 104
    .local v0, "leadingZeros":I
    const-wide v1, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long/2addr v1, v0

    .line 106
    .local v1, "cmp":J
    rsub-int/lit8 v3, v0, 0x3f

    .line 107
    .local v3, "logFloor":I
    invoke-static {v1, v2, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v4

    add-int/2addr v4, v3

    return v4

    .line 97
    .end local v0    # "leadingZeros":I
    .end local v1    # "cmp":J
    .end local v3    # "logFloor":I
    :pswitch_1
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    return v0

    .line 89
    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 93
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mean(JJ)J
    .locals 5
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 757
    and-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(JI)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "m"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 421
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .locals 4
    .param p0, "x"    # J
    .param p2, "m"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 444
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 447
    rem-long v2, p0, p2

    .line 448
    .local v2, "result":J
    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    add-long v0, v2, p2

    :goto_0
    return-wide v0

    .line 445
    .end local v2    # "result":J
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Modulus must be positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static multiplyFraction(JJJ)J
    .locals 4
    .param p0, "x"    # J
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .line 712
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 713
    div-long v0, p2, p4

    return-wide v0

    .line 715
    :cond_0
    invoke-static {p0, p1, p4, p5}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 716
    .local v0, "commonDivisor":J
    div-long/2addr p0, v0

    .line 717
    div-long/2addr p4, v0

    .line 720
    div-long v2, p2, p4

    mul-long/2addr v2, p0

    return-wide v2
.end method

.method public static pow(JI)J
    .locals 7
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 232
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 233
    const-wide/16 v0, -0x2

    cmp-long v0, v0, p0

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_5

    const-wide/16 v3, 0x2

    cmp-long v0, p0, v3

    if-gtz v0, :cond_5

    .line 234
    long-to-int v0, p0

    const/16 v3, 0x40

    const-wide/16 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 250
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :pswitch_0
    if-ge p2, v3, :cond_0

    shl-long v4, v1, p2

    nop

    :cond_0
    return-wide v4

    .line 238
    :pswitch_1
    return-wide v1

    .line 236
    :pswitch_2
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v4

    :goto_0
    return-wide v1

    .line 240
    :pswitch_3
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    :goto_1
    return-wide v1

    .line 244
    :pswitch_4
    if-ge p2, v3, :cond_4

    .line 245
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    shl-long v0, v1, p2

    goto :goto_2

    :cond_3
    shl-long v0, v1, p2

    neg-long v0, v0

    :goto_2
    return-wide v0

    .line 247
    :cond_4
    return-wide v4

    .line 253
    :cond_5
    move-wide v3, p0

    move-wide p0, v1

    .line 254
    .local v3, "b":J
    .local p0, "accum":J
    :goto_3
    packed-switch p2, :pswitch_data_1

    .line 260
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_6

    move-wide v5, v1

    goto :goto_4

    .line 258
    :pswitch_5
    mul-long v0, p0, v3

    return-wide v0

    .line 256
    :pswitch_6
    return-wide p0

    .line 260
    :cond_6
    move-wide v5, v3

    :goto_4
    mul-long/2addr p0, v5

    .line 261
    mul-long/2addr v3, v3

    .line 253
    shr-int/lit8 p2, p2, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .locals 10
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .line 276
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 277
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    long-to-int v0, p0

    invoke-static {v0, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 295
    :cond_0
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 297
    .local v0, "guess":J
    mul-long v2, v0, v0

    .line 300
    .local v2, "guessSquared":J
    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v4, :pswitch_data_0

    .line 334
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 319
    :pswitch_0
    cmp-long v4, p0, v2

    if-gez v4, :cond_1

    move v7, v8

    nop

    :cond_1
    int-to-long v4, v7

    sub-long v4, v0, v4

    .line 320
    .local v4, "sqrtFloor":J
    mul-long v6, v4, v4

    add-long/2addr v6, v4

    .line 332
    .local v6, "halfSquare":J
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    return-wide v8

    .line 312
    .end local v4    # "sqrtFloor":J
    .end local v6    # "halfSquare":J
    :pswitch_1
    cmp-long v4, p0, v2

    if-lez v4, :cond_2

    .line 313
    add-long/2addr v5, v0

    return-wide v5

    .line 315
    :cond_2
    return-wide v0

    .line 306
    :pswitch_2
    cmp-long v4, p0, v2

    if-gez v4, :cond_3

    .line 307
    sub-long v4, v0, v5

    return-wide v4

    .line 309
    :cond_3
    return-wide v0

    .line 302
    :pswitch_3
    cmp-long v4, v2, p0

    if-nez v4, :cond_4

    move v7, v8

    nop

    :cond_4
    invoke-static {v7}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 303
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
