.class final Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    return-void
.end method

.method private reserve(I)I
    .locals 7

    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    array-length v3, v2

    if-le v1, v3, :cond_0

    mul-int/lit8 v4, v3, 0x2

    new-array v5, v4, [C

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    :cond_0
    return v0
.end method


# virtual methods
.method public append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float p1, v1

    float-to-int v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    if-eqz p2, :cond_1

    const-string v1, "."

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v1, p1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float p1, v1

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    :cond_1
    return-object p0
.end method

.method public append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 9

    const/4 v0, 0x1

    if-gez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    neg-int p1, p1

    if-gez p1, :cond_1

    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    return-object p0

    :cond_1
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/16 v4, 0x30

    if-nez p1, :cond_2

    add-int/lit8 v5, v2, 0x1

    aput-char v4, v3, v2

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v0, v2, 0x1

    const/16 v5, 0x2d

    aput-char v5, v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    const v2, 0x3b9aca00

    const/16 v5, 0xa

    move v6, v0

    move v0, v5

    :cond_4
    :goto_2
    if-ge p1, v2, :cond_5

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p2, :cond_4

    add-int/lit8 v7, v6, 0x1

    aput-char v4, v3, v6

    move v6, v7

    goto :goto_2

    :cond_5
    :goto_3
    div-int v4, p1, v2

    mul-int v7, v4, v2

    sub-int/2addr p1, v7

    div-int/2addr v2, v5

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v4, 0x30

    int-to-char v8, v8

    aput-char v8, v3, v6

    if-nez v2, :cond_6

    iput v7, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0

    :cond_6
    move v6, v7

    goto :goto_3
.end method

.method public append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0
.end method

.method public clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
