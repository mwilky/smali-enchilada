.class public final Landroid/hardware/camera2/utils/HashCodeHelpers;
.super Ljava/lang/Object;
.source "HashCodeHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hashCode([F)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    shl-int/lit8 v5, v1, 0x5

    sub-int/2addr v5, v1

    xor-int v1, v5, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs hashCode([I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p0, v0

    shl-int/lit8 v4, v1, 0x5

    sub-int/2addr v4, v1

    xor-int v1, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs hashCodeGeneric([Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    array-length v2, p0

    move v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, p0, v1

    if-nez v4, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    shl-int/lit8 v6, v3, 0x5

    sub-int/2addr v6, v3

    xor-int v3, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method
