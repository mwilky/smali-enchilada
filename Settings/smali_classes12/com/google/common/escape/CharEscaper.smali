.class public abstract Lcom/google/common/escape/CharEscaper;
.super Lcom/google/common/escape/Escaper;
.source "CharEscaper.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final DEST_PAD_MULTIPLIER:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method private static growBuffer([CII)[C
    .locals 2

    new-array v0, p2, [C

    if-lez p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method protected abstract escape(C)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    move v1, p2

    move p2, v4

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    array-length v7, v6

    sub-int v8, v1, p2

    add-int v9, v3, v8

    add-int/2addr v9, v7

    if-ge v2, v9, :cond_1

    const/4 v10, 0x2

    sub-int v11, v0, v1

    mul-int/2addr v10, v11

    add-int v2, v9, v10

    invoke-static {v5, v3, v2}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v5

    :cond_1
    if-lez v8, :cond_2

    invoke-virtual {p1, p2, v1, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v3, v8

    :cond_2
    if-lez v7, :cond_3

    invoke-static {v6, v4, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v7

    :cond_3
    add-int/lit8 p2, v1, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    sub-int v6, v0, p2

    if-lez v6, :cond_6

    add-int v7, v3, v6

    if-ge v2, v7, :cond_5

    invoke-static {v5, v3, v7}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v5

    :cond_5
    invoke-virtual {p1, p2, v0, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    move v3, v7

    :cond_6
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v7
.end method
