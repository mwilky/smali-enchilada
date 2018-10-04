.class public Landroid/text/SpanSet;
.super Ljava/lang/Object;
.source "SpanSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end field

.field numberOfSpans:I

.field spanEnds:[I

.field spanFlags:[I

.field spanStarts:[I

.field spans:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    return-void
.end method


# virtual methods
.method getNextTransition(II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    if-le v1, p1, :cond_0

    if-ge v1, p2, :cond_0

    move p2, v1

    :cond_0
    if-le v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    move p2, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public hasSpansIntersecting(II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v1

    if-ge v2, p2, :cond_1

    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v1

    if-gt v2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public init(Landroid/text/Spanned;II)V
    .locals 10

    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    iget-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanFlags:[I

    :cond_1
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    nop

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput-object v4, v8, v9

    iget-object v8, p0, Landroid/text/SpanSet;->spanStarts:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v5, v8, v9

    iget-object v8, p0, Landroid/text/SpanSet;->spanEnds:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v6, v8, v9

    iget-object v8, p0, Landroid/text/SpanSet;->spanFlags:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v7, v8, v9

    iget v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v3, v2, :cond_4

    iget-object v3, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public recycle()V
    .locals 4

    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
