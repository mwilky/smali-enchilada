.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private mSingleChar:[C

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    iput-object p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    return-void
.end method

.method private maybeWriteIndent()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    iget-object v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v2, v2

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    return-object p0
.end method

.method public increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    return-object p0
.end method

.method public printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-object p0
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-object p0
.end method

.method public printPair(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-object p0
.end method

.method public println()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->write(I)V

    return-void
.end method

.method public setIndent(I)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    nop

    :goto_0
    move v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    return-object p0
.end method

.method public write(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    int-to-char v1, p1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3

    new-array v0, p3, [C

    sub-int v1, p3, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v0, v2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int v1, p2, p3

    move v2, p2

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget-char v2, p1, v2

    iget v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    const/4 v5, 0x0

    const/16 v7, 0xa

    if-ne v2, v7, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int v8, v4, v3

    invoke-super {p0, p1, v3, v8}, Ljava/io/PrintWriter;->write([CII)V

    move v3, v4

    iput-boolean v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    iput v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    :cond_0
    iget v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    if-lez v8, :cond_2

    iget v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    iget v9, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    sub-int/2addr v9, v0

    if-lt v8, v9, :cond_2

    iget-boolean v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-nez v8, :cond_1

    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    iput-boolean v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    sub-int v5, v4, v3

    iput v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int v8, v4, v3

    invoke-super {p0, p1, v3, v8}, Ljava/io/PrintWriter;->write([CII)V

    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    iput-boolean v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    move v3, v4

    iput v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    :cond_2
    :goto_1
    nop

    move v2, v4

    goto :goto_0

    :cond_3
    if-eq v3, v2, :cond_4

    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int v4, v2, v3

    invoke-super {p0, p1, v3, v4}, Ljava/io/PrintWriter;->write([CII)V

    :cond_4
    return-void
.end method
