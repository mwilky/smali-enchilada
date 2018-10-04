.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object;

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    :goto_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringInternal;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/SpannableStringInternal;IIZ)V

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/Spanned;IIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4

    if-lt p3, p2, :cond_2

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p3, v0, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has end before start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copySpans(Landroid/text/SpannableStringInternal;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/SpannableStringInternal;IIZ)V

    return-void
.end method

.method private copySpans(Landroid/text/SpannableStringInternal;IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    iget-object v5, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v6, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v7, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v8

    move v8, v4

    move v4, v9

    :goto_0
    if-ge v4, v7, :cond_2

    mul-int/lit8 v11, v4, 0x3

    add-int/2addr v11, v9

    aget v11, v5, v11

    mul-int/lit8 v12, v4, 0x3

    add-int/lit8 v12, v12, 0x1

    aget v12, v5, v12

    invoke-direct {v0, v2, v3, v11, v12}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_1

    :cond_0
    aget-object v13, v6, v4

    instance-of v13, v13, Landroid/text/NoCopySpan;

    if-eqz v13, :cond_1

    const/4 v10, 0x1

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v8, :cond_3

    return-void

    :cond_3
    if-nez v10, :cond_4

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v4, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v4, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v4, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v4, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v12, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v12, v12

    invoke-static {v4, v9, v11, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v12, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v12, v12

    invoke-static {v4, v9, v11, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_4
    iput v8, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x3

    new-array v4, v4, [I

    iput-object v4, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v4, 0x0

    move v11, v4

    move v4, v9

    :goto_2
    if-ge v11, v7, :cond_9

    mul-int/lit8 v12, v11, 0x3

    add-int/2addr v12, v9

    aget v12, v5, v12

    mul-int/lit8 v13, v11, 0x3

    add-int/lit8 v13, v13, 0x1

    aget v13, v5, v13

    invoke-direct {v0, v2, v3, v12, v13}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v14

    if-nez v14, :cond_8

    if-eqz p4, :cond_5

    aget-object v14, v6, v11

    instance-of v14, v14, Landroid/text/NoCopySpan;

    if-eqz v14, :cond_5

    goto :goto_3

    :cond_5
    if-ge v12, v2, :cond_6

    move v12, v2

    :cond_6
    if-le v13, v3, :cond_7

    move v13, v3

    :cond_7
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v15, v6, v11

    aput-object v15, v14, v4

    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v4, 0x3

    add-int/2addr v15, v9

    sub-int v16, v12, v2

    aput v16, v14, v15

    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v4, 0x3

    add-int/lit8 v15, v15, 0x1

    sub-int v16, v13, v2

    aput v16, v14, v15

    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v4, 0x3

    add-int/lit8 v15, v15, 0x2

    mul-int/lit8 v16, v11, 0x3

    add-int/lit8 v16, v16, 0x2

    aget v16, v5, v16

    aput v16, v14, v15

    add-int/lit8 v4, v4, 0x1

    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method private copySpans(Landroid/text/Spanned;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/Spanned;IIZ)V

    return-void
.end method

.method private copySpans(Landroid/text/Spanned;IIZ)V
    .locals 11

    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    if-eqz p4, :cond_0

    aget-object v2, v0, v1

    instance-of v2, v2, Landroid/text/NoCopySpan;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-ge v2, p2, :cond_1

    move v2, p2

    :cond_1
    if-le v3, p3, :cond_2

    move v3, p3

    :cond_2
    aget-object v6, v0, v1

    sub-int v7, v2, p2

    sub-int v8, v3, p2

    const/4 v10, 0x0

    move-object v5, p0

    move v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private isIndexFollowsNextLine(I)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isOutOfCopyRange(IIII)Z
    .locals 1

    const/4 v0, 0x1

    if-gt p3, p2, :cond_3

    if-ge p4, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p3, p4, :cond_2

    if-eq p1, p2, :cond_2

    if-eq p3, p2, :cond_1

    if-ne p4, p1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 5

    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 5

    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSpan(Ljava/lang/Object;IIIZ)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move v10, v8

    move v11, v9

    const-string/jumbo v0, "setSpan"

    invoke-direct {v6, v0, v8, v9}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    and-int/lit8 v0, p4, 0x33

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    invoke-direct {v6, v8}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " follows "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {v6, v9}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p5, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " follows "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v12, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v13, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v5, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move v4, v1

    if-ge v4, v12, :cond_5

    aget-object v1, v13, v4

    if-ne v1, v7, :cond_4

    mul-int/lit8 v1, v4, 0x3

    add-int/2addr v1, v0

    aget v14, v5, v1

    mul-int/lit8 v1, v4, 0x3

    add-int/lit8 v1, v1, 0x1

    aget v15, v5, v1

    mul-int/lit8 v1, v4, 0x3

    add-int/2addr v1, v0

    aput v8, v5, v1

    mul-int/lit8 v0, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    aput v9, v5, v0

    mul-int/lit8 v0, v4, 0x3

    add-int/lit8 v0, v0, 0x2

    aput p4, v5, v0

    move-object v0, v6

    move-object v1, v7

    move v2, v14

    move v3, v15

    move/from16 v16, v4

    move v4, v10

    move-object/from16 v17, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    return-void

    :cond_4
    move/from16 v16, v4

    move-object/from16 v17, v5

    add-int/lit8 v1, v16, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v17, v5

    iget v1, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_6

    iget v1, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [I

    iget-object v3, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v4, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v3, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v4, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iput-object v2, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    :cond_6
    iget-object v1, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v2, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object v7, v1, v2

    iget-object v1, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v2, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v0

    aput v8, v1, v2

    iget-object v0, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v1, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    aput v9, v0, v1

    iget-object v0, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v1, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    aput p4, v0, v1

    iget v0, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    instance-of v0, v6, Landroid/text/Spannable;

    if-eqz v0, :cond_7

    invoke-direct {v6, v7, v10, v11}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v4, v2

    if-ne v3, v4, :cond_5

    move v3, v1

    :goto_0
    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v5, v2, v3

    if-ne v4, p0, :cond_1

    if-ne v0, v5, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 v1, 0x1

    return v1

    :cond_5
    return v1
.end method

.method public final getChars(II[CI)V
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    return v4

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v2, v4

    return v4

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    return v4

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    iget v5, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v6, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v7, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v9

    move-object v9, v8

    move v8, v4

    move v4, v10

    :goto_0
    const/4 v12, 0x1

    if-ge v4, v5, :cond_a

    mul-int/lit8 v13, v4, 0x3

    add-int/2addr v13, v10

    aget v13, v7, v13

    mul-int/lit8 v14, v4, 0x3

    add-int/2addr v14, v12

    aget v14, v7, v14

    if-le v13, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ge v14, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eq v13, v14, :cond_3

    if-eq v1, v2, :cond_3

    if-ne v13, v2, :cond_2

    goto :goto_3

    :cond_2
    if-ne v14, v1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    const-class v15, Ljava/lang/Object;

    if-eq v3, v15, :cond_4

    aget-object v15, v6, v4

    invoke-virtual {v3, v15}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    goto :goto_3

    :cond_4
    if-nez v8, :cond_5

    aget-object v11, v6, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    if-ne v8, v12, :cond_6

    sub-int v15, v5, v4

    add-int/2addr v15, v12

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    check-cast v9, [Ljava/lang/Object;

    aput-object v11, v9, v10

    :cond_6
    mul-int/lit8 v12, v4, 0x3

    add-int/lit8 v12, v12, 0x2

    aget v12, v7, v12

    const/high16 v15, 0xff0000

    and-int/2addr v12, v15

    if-eqz v12, :cond_9

    move/from16 v16, v10

    :goto_1
    move/from16 v17, v16

    move/from16 v10, v17

    if-ge v10, v8, :cond_8

    aget-object v1, v9, v10

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, v15

    if-le v12, v1, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v16, v10, 0x1

    move/from16 v1, p1

    const/4 v10, 0x0

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v1, v10, 0x1

    sub-int v15, v8, v10

    invoke-static {v9, v10, v9, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v6, v4

    aput-object v1, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v8, 0x1

    aget-object v10, v6, v4

    aput-object v10, v9, v8

    move v8, v1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_a
    if-nez v8, :cond_b

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_b
    if-ne v8, v12, :cond_c

    invoke-static {v3, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v1, v4

    return-object v1

    :cond_c
    array-length v1, v9

    if-ne v8, v1, :cond_d

    return-object v9

    :cond_d
    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9, v4, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/2addr v1, v2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_0

    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit8 v1, v3, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 8

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    if-nez p3, :cond_0

    const-class p3, Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x0

    move v4, p2

    move p2, v3

    :goto_0
    if-ge p2, v0, :cond_3

    mul-int/lit8 v5, p2, 0x3

    add-int/2addr v5, v3

    aget v5, v2, v5

    mul-int/lit8 v6, p2, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v6, v2, v6

    if-le v5, p1, :cond_1

    if-ge v5, v4, :cond_1

    aget-object v7, v1, p2

    invoke-virtual {p3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v5

    :cond_1
    if-le v6, p1, :cond_2

    if-ge v6, v4, :cond_2

    aget-object v7, v1, p2

    invoke-virtual {p3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v6

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    return-void
.end method

.method public removeSpan(Ljava/lang/Object;I)V
    .locals 10

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_2

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_1

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    add-int/lit8 v6, v3, 0x1

    sub-int v6, v0, v6

    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v7, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v6, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    and-int/lit16 v7, p2, 0x200

    if-nez v7, :cond_0

    invoke-direct {p0, p1, v4, v5}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method setSpan(Ljava/lang/Object;III)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
