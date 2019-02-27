.class Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/ReplacementTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplacementCharSequence"
.end annotation


# instance fields
.field private mOriginal:[C

.field private mReplacement:[C

.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;[C[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    iput-object p3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 4

    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    aget-char v3, v3, v2

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    aget-char v0, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getChars(II[CI)V
    .locals 6

    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v0, p2, p1

    add-int/2addr v0, p4

    iget-object v1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    array-length v1, v1

    move v2, p4

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    aget-char v5, v5, v4

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    sub-int v0, p2, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
