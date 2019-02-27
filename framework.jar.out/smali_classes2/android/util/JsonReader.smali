.class public final Landroid/util/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Llibcore/internal/StringPool;

.field private token:Landroid/util/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llibcore/internal/StringPool;

    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    iput-object v0, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    iput v0, p0, Landroid/util/JsonReader;->limit:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    iput v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private advance()Landroid/util/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private decodeLiteral()Landroid/util/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/JsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v0

    :cond_0
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    const/16 v1, 0x55

    const/16 v2, 0x75

    const/16 v3, 0x4c

    const/16 v4, 0x6c

    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    const/16 v0, 0x6e

    iget-object v6, p0, Landroid/util/JsonReader;->buffer:[C

    iget v7, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v6, v6, v7

    if-eq v0, v6, :cond_1

    const/16 v0, 0x4e

    iget-object v6, p0, Landroid/util/JsonReader;->buffer:[C

    iget v7, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v6, v6, v7

    if-ne v0, v6, :cond_5

    :cond_1
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x1

    aget-char v0, v0, v6

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x1

    aget-char v0, v0, v6

    if-ne v1, v0, :cond_5

    :cond_2
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x2

    aget-char v0, v0, v6

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x2

    aget-char v0, v0, v6

    if-ne v3, v0, :cond_5

    :cond_3
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x3

    aget-char v0, v0, v6

    if-eq v4, v0, :cond_4

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x3

    aget-char v0, v0, v6

    if-ne v3, v0, :cond_5

    :cond_4
    const-string/jumbo v0, "null"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    return-object v0

    :cond_5
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ne v0, v5, :cond_a

    const/16 v0, 0x74

    iget-object v8, p0, Landroid/util/JsonReader;->buffer:[C

    iget v9, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v8, v8, v9

    if-eq v0, v8, :cond_6

    const/16 v0, 0x54

    iget-object v8, p0, Landroid/util/JsonReader;->buffer:[C

    iget v9, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v8, v8, v9

    if-ne v0, v8, :cond_a

    :cond_6
    const/16 v0, 0x72

    iget-object v8, p0, Landroid/util/JsonReader;->buffer:[C

    iget v9, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v9, v9, 0x1

    aget-char v8, v8, v9

    if-eq v0, v8, :cond_7

    const/16 v0, 0x52

    iget-object v8, p0, Landroid/util/JsonReader;->buffer:[C

    iget v9, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v9, v9, 0x1

    aget-char v8, v8, v9

    if-ne v0, v8, :cond_a

    :cond_7
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v8, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v8, v8, 0x2

    aget-char v0, v0, v8

    if-eq v2, v0, :cond_8

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    if-ne v1, v0, :cond_a

    :cond_8
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v7, v0, :cond_9

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_a

    :cond_9
    const-string/jumbo v0, "true"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    return-object v0

    :cond_a
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/16 v0, 0x66

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_b

    const/16 v0, 0x46

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_b
    const/16 v0, 0x61

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_c

    const/16 v0, 0x41

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_c
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_d

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_10

    :cond_d
    const/16 v0, 0x73

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_e

    const/16 v0, 0x53

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_e
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    if-eq v7, v0, :cond_f

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_10

    :cond_f
    const-string v0, "false"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    return-object v0

    :cond_10
    iget-object v0, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    invoke-virtual {v0, v1, v2, v3}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    iget v2, p0, Landroid/util/JsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonReader;->decodeNumber([CII)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private decodeNumber([CII)Landroid/util/JsonToken;
    .locals 6

    move v0, p2

    aget-char v1, p1, v0

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    :cond_0
    const/16 v3, 0x39

    const/16 v4, 0x30

    if-ne v1, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_1

    :cond_1
    const/16 v5, 0x31

    if-lt v1, v5, :cond_a

    if-gt v1, v3, :cond_a

    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    :goto_0
    if-lt v1, v4, :cond_2

    if-gt v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    :goto_2
    if-lt v1, v4, :cond_3

    if-gt v1, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_2

    :cond_3
    const/16 v5, 0x65

    if-eq v1, v5, :cond_4

    const/16 v5, 0x45

    if-ne v1, v5, :cond_7

    :cond_4
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_5

    if-ne v1, v2, :cond_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    :cond_6
    if-lt v1, v4, :cond_9

    if-gt v1, v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    :goto_3
    if-lt v1, v4, :cond_7

    if-gt v1, v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_3

    :cond_7
    add-int v2, p2, p3

    if-ne v0, v2, :cond_8

    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    return-object v2

    :cond_8
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2

    :cond_9
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2

    :cond_a
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2
.end method

.method private expect(Landroid/util/JsonToken;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuffer(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    iget v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    iput v3, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    goto :goto_1

    :cond_0
    iget v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->limit:I

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->limit:I

    invoke-static {v1, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    iput v0, p0, Landroid/util/JsonReader;->limit:I

    :goto_2
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    :cond_3
    iget-object v1, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    iget-object v5, p0, Landroid/util/JsonReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Landroid/util/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    move v2, v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->limit:I

    iget v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-lez v1, :cond_4

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v1, v1, v0

    const v4, 0xfeff

    if-ne v1, v4, :cond_4

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    :cond_4
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-lt v1, p1, :cond_3

    return v3

    :cond_5
    return v0
.end method

.method private getColumnNumber()I
    .locals 4

    iget v0, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getLineNumber()I
    .locals 4

    iget v0, p0, Landroid/util/JsonReader;->bufferStartLine:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private nextInArray(Z)Landroid/util/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5d

    const/16 v1, 0x3b

    const/16 v2, 0x2c

    if-eqz p1, :cond_0

    sget-object v3, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v3

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_2

    if-ne v3, v0, :cond_1

    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    :cond_1
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    :cond_3
    nop

    :goto_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v3

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_5

    if-eq v3, v0, :cond_4

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    :cond_5
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0
.end method

.method private nextInObject(Z)Landroid/util/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7d

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    :cond_1
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_3

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    :cond_2
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    nop

    :goto_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_6

    const/16 v1, 0x27

    if-eq v0, v1, :cond_5

    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    iget-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_5
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    :cond_6
    int-to-char v1, v0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    nop

    :goto_1
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->valuePos:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/util/JsonReader;->valueLength:I

    move-object v2, v0

    move v0, v1

    :cond_0
    :goto_0
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v4, v0

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    :sswitch_1
    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v0, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    aput-char v1, v3, v4

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    :cond_4
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    nop

    :goto_1
    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    iput v1, p0, Landroid/util/JsonReader;->valuePos:I

    const/4 v1, 0x0

    :goto_2
    goto :goto_3

    :cond_5
    iget-boolean v1, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "skipped!"

    goto :goto_2

    :cond_6
    if-nez v2, :cond_7

    iget-object v1, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v1, v3, v4, v0}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    const/16 v1, 0x23

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    return v0

    :cond_2
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_5

    if-eq v3, v1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    goto :goto_0

    :cond_5
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    const-string v1, "*/"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_0

    :cond_6
    const-string v1, "Unterminated comment"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_7
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    goto :goto_0

    :cond_8
    :pswitch_0
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    :goto_1
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/util/JsonReader;->pos:I

    aget-char v2, v2, v3

    if-ne v2, p1, :cond_2

    iget-boolean v3, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "skipped!"

    return-object v3

    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v5, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v6, v1

    sub-int/2addr v6, v4

    invoke-virtual {v3, v5, v1, v6}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4

    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    :cond_3
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/util/JsonReader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    :cond_4
    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    :cond_6
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const-string v1, "Unterminated string"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private nextValue()Landroid/util/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    invoke-direct {p0}, Landroid/util/JsonReader;->readLiteral()Landroid/util/JsonToken;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    :cond_1
    sget-object v1, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    :cond_2
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    :cond_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1
.end method

.method private objectValue()Landroid/util/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_0

    :cond_1
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    nop

    :cond_3
    :goto_0
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private peekStack()Landroid/util/JsonScope;
    .locals 2

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private pop()Landroid/util/JsonScope;
    .locals 2

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private push(Landroid/util/JsonScope;)V
    .locals 1

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readEscapeCharacter()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x62

    if-eq v0, v1, :cond_7

    const/16 v1, 0x66

    if-eq v0, v1, :cond_6

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x72

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    return v0

    :pswitch_0
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    const/4 v2, 0x4

    add-int/2addr v1, v2

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    if-le v1, v3, :cond_3

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "Unterminated escape sequence"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    return v2

    :pswitch_1
    const/16 v1, 0x9

    return v1

    :cond_4
    const/16 v1, 0xd

    return v1

    :cond_5
    const/16 v1, 0xa

    return v1

    :cond_6
    const/16 v1, 0xc

    return v1

    :cond_7
    const/16 v1, 0x8

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readLiteral()Landroid/util/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/util/JsonReader;->decodeLiteral()Landroid/util/JsonToken;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    :cond_1
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private replaceTop(Landroid/util/JsonScope;)V
    .locals 2

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    :goto_1
    nop

    :goto_2
    move v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v1, v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_2

    nop

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method private skipToEndOfLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/util/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/util/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLenient()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    const-string/jumbo v1, "true"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-wide v0
.end method

.method public nextInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v3, v1

    int-to-double v4, v3

    cmpl-double v4, v4, v1

    if-nez v4, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return v0

    :cond_2
    new-instance v4, Ljava/lang/NumberFormatException;

    iget-object v5, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v3, v1

    long-to-double v5, v3

    cmpl-double v5, v5, v1

    if-nez v5, :cond_2

    move-wide v0, v3

    :goto_1
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-wide v0

    :cond_2
    new-instance v5, Ljava/lang/NumberFormatException;

    iget-object v6, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public nextName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-object v0
.end method

.method public peek()Landroid/util/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    :cond_0
    sget-object v0, Landroid/util/JsonReader$1;->$SwitchMap$android$util$JsonScope:[I

    invoke-direct {p0}, Landroid/util/JsonReader;->peekStack()Landroid/util/JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    :try_start_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    iget-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "Expected EOF"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    :pswitch_2
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-direct {p0}, Landroid/util/JsonReader;->objectValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_7
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    iget-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/util/JsonReader;->lenient:Z

    return-void
.end method

.method public skipValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_5

    move v1, v0

    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_3

    sget-object v3, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2

    sget-object v3, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_4

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_1
    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    nop

    return-void

    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No element left to skip"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/util/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
