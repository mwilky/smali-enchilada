.class public final Landroid/util/Half;
.super Ljava/lang/Number;
.source "Half.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/util/Half;",
        ">;"
    }
.end annotation


# static fields
.field public static final EPSILON:S = 0x1400s

.field private static final FP16_COMBINED:I = 0x7fff

.field private static final FP16_EXPONENT_BIAS:I = 0xf

.field private static final FP16_EXPONENT_MASK:I = 0x1f

.field private static final FP16_EXPONENT_MAX:I = 0x7c00

.field private static final FP16_EXPONENT_SHIFT:I = 0xa

.field private static final FP16_SIGNIFICAND_MASK:I = 0x3ff

.field private static final FP16_SIGN_MASK:I = 0x8000

.field private static final FP16_SIGN_SHIFT:I = 0xf

.field private static final FP32_DENORMAL_FLOAT:F

.field private static final FP32_DENORMAL_MAGIC:I = 0x3f000000

.field private static final FP32_EXPONENT_BIAS:I = 0x7f

.field private static final FP32_EXPONENT_MASK:I = 0xff

.field private static final FP32_EXPONENT_SHIFT:I = 0x17

.field private static final FP32_SIGNIFICAND_MASK:I = 0x7fffff

.field private static final FP32_SIGN_SHIFT:I = 0x1f

.field public static final LOWEST_VALUE:S = -0x401s

.field public static final MAX_EXPONENT:I = 0xf

.field public static final MAX_VALUE:S = 0x7bffs

.field public static final MIN_EXPONENT:I = -0xe

.field public static final MIN_NORMAL:S = 0x400s

.field public static final MIN_VALUE:S = 0x1s

.field public static final NEGATIVE_INFINITY:S = -0x400s

.field public static final NEGATIVE_ZERO:S = -0x8000s

.field public static final NaN:S = 0x7e00s

.field public static final POSITIVE_INFINITY:S = 0x7c00s

.field public static final POSITIVE_ZERO:S = 0x0s

.field public static final SIZE:I = 0x10


# instance fields
.field private final mValue:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Landroid/util/Half;->FP32_DENORMAL_FLOAT:F

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    double-to-float v0, p1

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-short p1, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public static abs(S)S
    .locals 1

    and-int/lit16 v0, p0, 0x7fff

    int-to-short v0, v0

    return v0
.end method

.method public static ceil(S)S
    .locals 6

    const v0, 0xffff

    and-int/2addr v0, p0

    and-int/lit16 v1, v0, 0x7fff

    move v2, v0

    const/16 v3, 0x3c00

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    const v5, 0x8000

    and-int/2addr v2, v5

    shr-int/lit8 v5, v0, 0xf

    not-int v5, v5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/2addr v4, v5

    neg-int v4, v4

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    const/16 v3, 0x6400

    if-ge v1, v3, :cond_2

    shr-int/lit8 v3, v1, 0xa

    rsub-int/lit8 v1, v3, 0x19

    shl-int v3, v4, v1

    sub-int/2addr v3, v4

    shr-int/lit8 v5, v0, 0xf

    sub-int/2addr v5, v4

    and-int v4, v3, v5

    add-int/2addr v2, v4

    not-int v4, v3

    and-int/2addr v2, v4

    :cond_2
    :goto_1
    int-to-short v3, v2

    return v3
.end method

.method public static compare(SS)I
    .locals 6

    invoke-static {p0, p1}, Landroid/util/Half;->less(SS)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Half;->greater(SS)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    and-int/lit16 v0, p0, 0x7fff

    const/16 v3, 0x7e00

    const/16 v4, 0x7c00

    if-le v0, v4, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    and-int/lit16 v5, p1, 0x7fff

    if-le v5, v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, p1

    :goto_1
    if-ne v0, v3, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    if-ge v0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1
.end method

.method public static copySign(SS)S
    .locals 2

    const v0, 0x8000

    and-int/2addr v0, p1

    and-int/lit16 v1, p0, 0x7fff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static equals(SS)Z
    .locals 3

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_1

    return v2

    :cond_1
    if-eq p0, p1, :cond_3

    or-int v0, p0, p1

    and-int/lit16 v0, v0, 0x7fff

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public static floor(S)S
    .locals 6

    const v0, 0xffff

    and-int v1, p0, v0

    and-int/lit16 v2, v1, 0x7fff

    move v3, v1

    const/16 v4, 0x3c00

    if-ge v2, v4, :cond_1

    const v5, 0x8000

    and-int/2addr v3, v5

    if-le v1, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v4

    or-int/2addr v3, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x6400

    if-ge v2, v0, :cond_2

    shr-int/lit8 v0, v2, 0xa

    rsub-int/lit8 v2, v0, 0x19

    const/4 v0, 0x1

    shl-int v4, v0, v2

    sub-int/2addr v4, v0

    shr-int/lit8 v0, v1, 0xf

    neg-int v0, v0

    and-int/2addr v0, v4

    add-int/2addr v3, v0

    not-int v0, v4

    and-int/2addr v3, v0

    :cond_2
    :goto_1
    int-to-short v0, v3

    return v0
.end method

.method public static getExponent(S)I
    .locals 1

    ushr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0xf

    return v0
.end method

.method public static getSign(S)I
    .locals 1

    const v0, 0x8000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getSignificand(S)I
    .locals 1

    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method public static greater(SS)Z
    .locals 5

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_1

    return v2

    :cond_1
    const v0, 0x8000

    and-int v1, p0, v0

    const v3, 0xffff

    if-eqz v1, :cond_2

    and-int v1, p0, v3

    sub-int v1, v0, v1

    goto :goto_0

    :cond_2
    and-int v1, p0, v3

    :goto_0
    and-int v4, p1, v0

    if-eqz v4, :cond_3

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_3
    and-int v0, p1, v3

    :goto_1
    if-le v1, v0, :cond_4

    const/4 v2, 0x1

    nop

    :cond_4
    return v2
.end method

.method public static greaterEquals(SS)Z
    .locals 5

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_1

    return v2

    :cond_1
    const v0, 0x8000

    and-int v1, p0, v0

    const v3, 0xffff

    if-eqz v1, :cond_2

    and-int v1, p0, v3

    sub-int v1, v0, v1

    goto :goto_0

    :cond_2
    and-int v1, p0, v3

    :goto_0
    and-int v4, p1, v0

    if-eqz v4, :cond_3

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_3
    and-int v0, p1, v3

    :goto_1
    if-lt v1, v0, :cond_4

    const/4 v2, 0x1

    nop

    :cond_4
    return v2
.end method

.method public static halfToIntBits(S)I
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/16 v0, 0x7e00

    goto :goto_0

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public static halfToRawIntBits(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static halfToShortBits(S)S
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/16 v0, 0x7e00

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static hashCode(S)I
    .locals 1

    invoke-static {p0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v0

    return v0
.end method

.method public static intBitsToHalf(I)S
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static isInfinite(S)Z
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNaN(S)Z
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNormalized(S)Z
    .locals 2

    and-int/lit16 v0, p0, 0x7c00

    if-eqz v0, :cond_0

    and-int/lit16 v0, p0, 0x7c00

    const/16 v1, 0x7c00

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static less(SS)Z
    .locals 5

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_1

    return v2

    :cond_1
    const v0, 0x8000

    and-int v1, p0, v0

    const v3, 0xffff

    if-eqz v1, :cond_2

    and-int v1, p0, v3

    sub-int v1, v0, v1

    goto :goto_0

    :cond_2
    and-int v1, p0, v3

    :goto_0
    and-int v4, p1, v0

    if-eqz v4, :cond_3

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_3
    and-int v0, p1, v3

    :goto_1
    if-ge v1, v0, :cond_4

    const/4 v2, 0x1

    nop

    :cond_4
    return v2
.end method

.method public static lessEquals(SS)Z
    .locals 5

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_1

    return v2

    :cond_1
    const v0, 0x8000

    and-int v1, p0, v0

    const v3, 0xffff

    if-eqz v1, :cond_2

    and-int v1, p0, v3

    sub-int v1, v0, v1

    goto :goto_0

    :cond_2
    and-int v1, p0, v3

    :goto_0
    and-int v4, p1, v0

    if-eqz v4, :cond_3

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_3
    and-int v0, p1, v3

    :goto_1
    if-gt v1, v0, :cond_4

    const/4 v2, 0x1

    nop

    :cond_4
    return v2
.end method

.method public static max(SS)S
    .locals 4

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7e00

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    and-int/lit16 v0, p0, 0x7fff

    const v1, 0x8000

    if-nez v0, :cond_3

    and-int/lit16 v0, p1, 0x7fff

    if-nez v0, :cond_3

    and-int v0, p0, v1

    if-eqz v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    return v0

    :cond_3
    and-int v0, p0, v1

    const v2, 0xffff

    if-eqz v0, :cond_4

    and-int v0, p0, v2

    sub-int v0, v1, v0

    goto :goto_1

    :cond_4
    and-int v0, p0, v2

    :goto_1
    and-int v3, p1, v1

    if-eqz v3, :cond_5

    and-int/2addr v2, p1

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_5
    and-int v1, p1, v2

    :goto_2
    if-le v0, v1, :cond_6

    move v0, p0

    goto :goto_3

    :cond_6
    move v0, p1

    :goto_3
    return v0
.end method

.method public static min(SS)S
    .locals 4

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7e00

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    and-int/lit16 v0, p0, 0x7fff

    const v1, 0x8000

    if-nez v0, :cond_3

    and-int/lit16 v0, p1, 0x7fff

    if-nez v0, :cond_3

    and-int v0, p0, v1

    if-eqz v0, :cond_2

    move v0, p0

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0

    :cond_3
    and-int v0, p0, v1

    const v2, 0xffff

    if-eqz v0, :cond_4

    and-int v0, p0, v2

    sub-int v0, v1, v0

    goto :goto_1

    :cond_4
    and-int v0, p0, v2

    :goto_1
    and-int v3, p1, v1

    if-eqz v3, :cond_5

    and-int/2addr v2, p1

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_5
    and-int v1, p1, v2

    :goto_2
    if-ge v0, v1, :cond_6

    move v0, p0

    goto :goto_3

    :cond_6
    move v0, p1

    :goto_3
    return v0
.end method

.method public static parseHalf(Ljava/lang/String;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Lsun/misc/FloatingDecimal;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    return v0
.end method

.method public static round(S)S
    .locals 6

    const v0, 0xffff

    and-int v1, p0, v0

    and-int/lit16 v2, v1, 0x7fff

    move v3, v1

    const/16 v4, 0x3c00

    if-ge v2, v4, :cond_1

    const v5, 0x8000

    and-int/2addr v3, v5

    const/16 v5, 0x3800

    if-lt v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v4

    or-int/2addr v3, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x6400

    if-ge v2, v0, :cond_2

    shr-int/lit8 v0, v2, 0xa

    rsub-int/lit8 v2, v0, 0x19

    const/4 v0, 0x1

    shl-int v4, v0, v2

    sub-int/2addr v4, v0

    add-int/lit8 v5, v2, -0x1

    shl-int/2addr v0, v5

    add-int/2addr v3, v0

    not-int v0, v4

    and-int/2addr v3, v0

    :cond_2
    :goto_1
    int-to-short v0, v3

    return v0
.end method

.method public static toFloat(S)F
    .locals 8

    const v0, 0xffff

    and-int/2addr v0, p0

    const v1, 0x8000

    and-int/2addr v1, v0

    ushr-int/lit8 v2, v0, 0xa

    const/16 v3, 0x1f

    and-int/2addr v2, v3

    and-int/lit16 v4, v0, 0x3ff

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_1

    if-eqz v4, :cond_3

    const/high16 v3, 0x3f000000    # 0.5f

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sget v7, Landroid/util/Half;->FP32_DENORMAL_FLOAT:F

    sub-float/2addr v3, v7

    if-nez v1, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    neg-float v7, v3

    :goto_0
    return v7

    :cond_1
    shl-int/lit8 v6, v4, 0xd

    if-ne v2, v3, :cond_2

    const/16 v5, 0xff

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, -0xf

    add-int/lit8 v5, v3, 0x7f

    :cond_3
    :goto_1
    shl-int/lit8 v3, v1, 0x10

    shl-int/lit8 v7, v5, 0x17

    or-int/2addr v3, v7

    or-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    return v7
.end method

.method public static toHalf(F)S
    .locals 8

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1f

    ushr-int/lit8 v2, v0, 0x17

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const v4, 0x7fffff

    and-int/2addr v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v2, v3, :cond_1

    const/16 v5, 0x1f

    if-eqz v4, :cond_0

    const/16 v3, 0x200

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v6, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, -0x7f

    add-int/lit8 v2, v3, 0xf

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    const/16 v5, 0x31

    goto :goto_1

    :cond_2
    if-gtz v2, :cond_5

    const/16 v3, -0xa

    if-ge v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v3, 0x800000

    or-int/2addr v3, v4

    rsub-int/lit8 v7, v2, 0x1

    shr-int/2addr v3, v7

    and-int/lit16 v4, v3, 0x1000

    if-eqz v4, :cond_4

    add-int/lit16 v3, v3, 0x2000

    :cond_4
    move v4, v3

    shr-int/lit8 v6, v4, 0xd

    goto :goto_1

    :cond_5
    move v5, v2

    shr-int/lit8 v6, v4, 0xd

    and-int/lit16 v3, v4, 0x1000

    if-eqz v3, :cond_6

    shl-int/lit8 v3, v5, 0xa

    or-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v7, v1, 0xf

    or-int/2addr v7, v3

    int-to-short v7, v7

    return v7

    :cond_6
    :goto_1
    shl-int/lit8 v3, v1, 0xf

    shl-int/lit8 v7, v5, 0xa

    or-int/2addr v3, v7

    or-int/2addr v3, v6

    int-to-short v3, v3

    return v3
.end method

.method public static toHexString(S)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0xffff

    and-int/2addr v1, p0

    ushr-int/lit8 v2, v1, 0xf

    ushr-int/lit8 v3, v1, 0xa

    const/16 v4, 0x1f

    and-int/2addr v3, v4

    and-int/lit16 v5, v1, 0x3ff

    const/16 v6, 0x2d

    if-ne v3, v4, :cond_2

    if-nez v5, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "Infinity"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v4, "NaN"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-nez v3, :cond_5

    if-nez v5, :cond_4

    const-string v4, "0x0.0p0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v4, "0x0."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "0{2,}$"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "p-14"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v4, "0x1."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "0{2,}$"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x70

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0xf

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toString(S)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trunc(S)S
    .locals 5

    const v0, 0xffff

    and-int/2addr v0, p0

    and-int/lit16 v1, v0, 0x7fff

    move v2, v0

    const/16 v3, 0x3c00

    if-ge v1, v3, :cond_0

    const v3, 0x8000

    and-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/16 v3, 0x6400

    if-ge v1, v3, :cond_1

    shr-int/lit8 v3, v1, 0xa

    rsub-int/lit8 v1, v3, 0x19

    const/4 v3, 0x1

    shl-int v4, v3, v1

    sub-int/2addr v4, v3

    not-int v3, v4

    and-int/2addr v2, v3

    :cond_1
    :goto_0
    int-to-short v3, v2

    return v3
.end method

.method public static valueOf(F)Landroid/util/Half;
    .locals 1

    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/Half;
    .locals 1

    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(S)Landroid/util/Half;
    .locals 1

    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Landroid/util/Half;)I
    .locals 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    iget-short v1, p1, Landroid/util/Half;->mValue:S

    invoke-static {v0, v1}, Landroid/util/Half;->compare(SS)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/util/Half;

    invoke-virtual {p0, p1}, Landroid/util/Half;->compareTo(Landroid/util/Half;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/util/Half;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/util/Half;

    iget-short v0, v0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v0

    iget-short v1, p0, Landroid/util/Half;->mValue:S

    invoke-static {v1}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public halfValue()S
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->hashCode(S)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->isNaN(S)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
