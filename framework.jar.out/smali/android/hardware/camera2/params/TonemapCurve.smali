.class public final Landroid/hardware/camera2/params/TonemapCurve;
.super Ljava/lang/Object;
.source "TonemapCurve.java"


# static fields
.field public static final CHANNEL_BLUE:I = 0x2

.field public static final CHANNEL_GREEN:I = 0x1

.field public static final CHANNEL_RED:I = 0x0

.field public static final LEVEL_BLACK:F = 0.0f

.field public static final LEVEL_WHITE:F = 1.0f

.field private static final MIN_CURVE_LENGTH:I = 0x4

.field private static final OFFSET_POINT_IN:I = 0x0

.field private static final OFFSET_POINT_OUT:I = 0x1

.field public static final POINT_SIZE:I = 0x2

.field private static final TONEMAP_MIN_CURVE_POINTS:I = 0x2


# instance fields
.field private final mBlue:[F

.field private final mGreen:[F

.field private mHashCalculated:Z

.field private mHashCode:I

.field private final mRed:[F


# direct methods
.method public constructor <init>([F[F[F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    const-string/jumbo v0, "red must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "green must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "blue must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "red"

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    const-string v0, "green"

    invoke-static {p2, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    const-string v0, "blue"

    invoke-static {p3, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    const-string/jumbo v0, "red"

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    const-string v0, "green"

    invoke-static {p2, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    const-string v0, "blue"

    invoke-static {p3, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    const-string/jumbo v0, "red"

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    const-string v0, "green"

    invoke-static {p2, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    const-string v0, "blue"

    invoke-static {p3, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    return-void
.end method

.method private static checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V
    .locals 3

    array-length v0, p0

    rem-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size must be divisible by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V
    .locals 3

    array-length v0, p0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkArgumentColorChannel(I)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colorChannel out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    nop

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private curveToString(I)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v1

    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    aget v5, v1, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "), "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCurve(I)[F
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "colorChannel out of range"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public copyColorCurve(I[FI)V
    .locals 3

    const-string/jumbo v0, "offset must not be negative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string v0, "destination must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    add-int/2addr v0, p3

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/TonemapCurve;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/TonemapCurve;

    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    iget-object v4, v2, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    iget-object v4, v2, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    iget-object v4, v2, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v0

    :cond_3
    return v0
.end method

.method public getPoint(II)Landroid/graphics/PointF;
    .locals 4

    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    if-ltz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v1, v0, v1

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPointCount(I)I
    .locals 1

    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    return v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [[F

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    aput-object v2, v0, v1

    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    aput-object v3, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    iput-boolean v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TonemapCurve{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
