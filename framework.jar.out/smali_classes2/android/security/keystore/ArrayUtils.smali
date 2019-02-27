.class public abstract Landroid/security/keystore/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneIfNotEmpty([B)[B
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static concat([BII[BII)[B
    .locals 2

    if-nez p2, :cond_0

    invoke-static {p3, p4, p5}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p5, :cond_1

    invoke-static {p0, p1, p2}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    return-object v0

    :cond_1
    add-int v0, p2, p5

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public static concat([B[B)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const/4 v6, 0x0

    if-eqz p1, :cond_1

    array-length v0, p1

    :goto_1
    move v7, v0

    goto :goto_2

    :cond_1
    goto :goto_1

    :goto_2
    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static concat([I[I)[I
    .locals 4

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static subarray([BII)[B
    .locals 2

    if-nez p2, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    array-length v0, p0

    if-ne p2, v0, :cond_1

    return-object p0

    :cond_1
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method
