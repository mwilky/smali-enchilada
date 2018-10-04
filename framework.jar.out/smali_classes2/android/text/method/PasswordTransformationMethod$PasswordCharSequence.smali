.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 6

    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    iget-object v3, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    return v3

    :cond_0
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/PasswordTransformationMethod$Visible;

    nop

    :goto_0
    move v4, v5

    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-static {v5}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    return v5

    :cond_1
    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v0

    return v0
.end method

.method public getChars(II[CI)V
    .locals 10

    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spanned;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    sget-object v7, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sget-object v7, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v7

    const-class v8, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v5, v6, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/method/PasswordTransformationMethod$Visible;

    array-length v2, v7

    new-array v3, v2, [I

    new-array v4, v2, [I

    move v8, v6

    :goto_0
    if-ge v8, v2, :cond_1

    aget-object v9, v7, v8

    invoke-static {v9}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_0

    aget-object v9, v7, v8

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    aput v9, v3, v8

    aget-object v9, v7, v8

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    aput v9, v4, v8

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v5, p1

    :goto_1
    if-ge v5, p2, :cond_6

    if-lt v5, v0, :cond_2

    if-lt v5, v1, :cond_5

    :cond_2
    const/4 v7, 0x0

    move v8, v6

    :goto_2
    if-ge v8, v2, :cond_4

    aget v9, v3, v8

    if-lt v5, v9, :cond_3

    aget v9, v4, v8

    if-ge v5, v9, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-nez v7, :cond_5

    sub-int v8, v5, p1

    add-int/2addr v8, p4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v9

    aput-char v9, p3, v8

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    sub-int v0, p2, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
