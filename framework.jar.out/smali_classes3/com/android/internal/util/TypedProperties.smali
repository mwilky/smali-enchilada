.class public Lcom/android/internal/util/TypedProperties;
.super Ljava/util/HashMap;
.source "TypedProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/TypedProperties$TypeException;,
        Lcom/android/internal/util/TypedProperties$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final NULL_STRING:Ljava/lang/String;

.field public static final STRING_NOT_SET:I = -0x1

.field public static final STRING_NULL:I = 0x0

.field public static final STRING_SET:I = 0x1

.field public static final STRING_TYPE_MISMATCH:I = -0x2

.field static final TYPE_BOOLEAN:I = 0x5a

.field static final TYPE_BYTE:I = 0x149

.field static final TYPE_DOUBLE:I = 0x846

.field static final TYPE_ERROR:I = -0x1

.field static final TYPE_FLOAT:I = 0x446

.field static final TYPE_INT:I = 0x449

.field static final TYPE_LONG:I = 0x849

.field static final TYPE_SHORT:I = 0x249

.field static final TYPE_STRING:I = 0x734c

.field static final TYPE_UNSET:I = 0x78


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "<TypedProperties:NULL_STRING>"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method static initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;
    .locals 3

    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->resetSyntax()V

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x5f

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->slashStarComments(Z)V

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    return-object v0
.end method

.method static interpretType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "unset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x78

    return v0

    :cond_0
    const-string v0, "boolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5a

    return v0

    :cond_1
    const-string v0, "byte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x149

    return v0

    :cond_2
    const-string v0, "short"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x249

    return v0

    :cond_3
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x449

    return v0

    :cond_4
    const-string v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x849

    return v0

    :cond_5
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x446

    return v0

    :cond_6
    const-string v0, "double"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x846

    return v0

    :cond_7
    const-string v0, "String"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x734c

    return v0

    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method static parse(Ljava/io/Reader;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/TypedProperties$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/util/TypedProperties;->initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;

    move-result-object v0

    const-string v1, "[a-zA-Z_$][0-9a-zA-Z_$]*"

    const-string v2, "([a-zA-Z_$][0-9a-zA-Z_$]*\\.)*[a-zA-Z_$][0-9a-zA-Z_$]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    :goto_0
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    nop

    return-void

    :cond_0
    const/4 v5, -0x3

    if-ne v3, v5, :cond_c

    iget-object v6, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/util/TypedProperties;->interpretType(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v4, :cond_b

    const/4 v4, 0x0

    iput-object v4, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    const/16 v7, 0x78

    if-ne v6, v7, :cond_2

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    const/16 v8, 0x28

    if-ne v3, v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v5, "\'(\'"

    invoke-direct {v4, v0, v5}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    if-ne v3, v5, :cond_a

    iget-object v5, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_9

    iput-object v4, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    if-ne v6, v7, :cond_4

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_3

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v7, "\')\'"

    invoke-direct {v4, v0, v7}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_8

    invoke-static {v0, v6}, Lcom/android/internal/util/TypedProperties;->parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_5

    goto :goto_2

    :cond_5
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v9, "(property previously declared as a different type)"

    invoke-direct {v8, v0, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    :cond_6
    :goto_2
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v7, "\';\'"

    invoke-direct {v4, v0, v7}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :cond_8
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v7, "\'=\'"

    invoke-direct {v4, v0, v7}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :cond_9
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v7, "valid property name"

    invoke-direct {v4, v0, v7}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :cond_a
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v5, "property name"

    invoke-direct {v4, v0, v5}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :cond_b
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v5, "valid type name"

    invoke-direct {v4, v0, v5}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :cond_c
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v5, "type name"

    invoke-direct {v4, v0, v5}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4
.end method

.method static parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v0

    const/4 v1, -0x3

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_3

    if-ne v0, v1, :cond_2

    const-string v1, "true"

    iget-object v2, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    :cond_0
    const-string v1, "false"

    iget-object v2, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v2, "boolean constant"

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v2, "boolean constant"

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v1

    :cond_3
    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0x49

    const/4 v4, 0x4

    if-ne v2, v3, :cond_b

    if-ne v0, v1, :cond_a

    :try_start_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v4, :cond_8

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    packed-switch v3, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal error; unexpected integer type width "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    const-wide/16 v4, -0x8000

    cmp-long v4, v1, v4

    if-ltz v4, :cond_4

    const-wide/16 v4, 0x7fff

    cmp-long v4, v1, v4

    if-gtz v4, :cond_4

    new-instance v4, Ljava/lang/Short;

    long-to-int v5, v1

    int-to-short v5, v5

    invoke-direct {v4, v5}, Ljava/lang/Short;-><init>(S)V

    return-object v4

    :cond_4
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v5, "16-bit integer constant"

    invoke-direct {v4, p0, v5}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :pswitch_1
    const-wide/16 v4, -0x80

    cmp-long v4, v1, v4

    if-ltz v4, :cond_5

    const-wide/16 v4, 0x7f

    cmp-long v4, v1, v4

    if-gtz v4, :cond_5

    new-instance v4, Ljava/lang/Byte;

    long-to-int v5, v1

    int-to-byte v5, v5

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    return-object v4

    :cond_5
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v5, "8-bit integer constant"

    invoke-direct {v4, p0, v5}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :cond_6
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v1, v4

    if-ltz v4, :cond_7

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v1, v4

    if-gtz v4, :cond_7

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    :cond_7
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v5, "64-bit integer constant"

    invoke-direct {v4, p0, v5}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :cond_8
    const-wide/32 v4, -0x80000000

    cmp-long v4, v1, v4

    if-ltz v4, :cond_9

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gtz v4, :cond_9

    new-instance v4, Ljava/lang/Integer;

    long-to-int v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    return-object v4

    :cond_9
    new-instance v4, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v5, "32-bit integer constant"

    invoke-direct {v4, p0, v5}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v3, "integer constant"

    invoke-direct {v2, p0, v3}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v2

    :cond_a
    new-instance v1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v2, "integer constant"

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v1

    :cond_b
    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0x46

    if-ne v2, v3, :cond_10

    if-ne v0, v1, :cond_f

    :try_start_1
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    nop

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v4, :cond_e

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_d

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_d

    const-wide/high16 v5, 0x36a0000000000000L    # 1.401298464324817E-45

    cmpg-double v5, v3, v5

    if-ltz v5, :cond_c

    const-wide v5, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v5, v3, v5

    if-gtz v5, :cond_c

    goto :goto_0

    :cond_c
    new-instance v5, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v6, "32-bit float constant"

    invoke-direct {v5, p0, v6}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v5

    :cond_d
    :goto_0
    new-instance v5, Ljava/lang/Float;

    double-to-float v6, v1

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    return-object v5

    :cond_e
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v3

    :catch_1
    move-exception v1

    new-instance v2, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v3, "float constant"

    invoke-direct {v2, p0, v3}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v2

    :cond_f
    new-instance v1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v2, "float constant"

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v1

    :cond_10
    const/16 v2, 0x734c

    if-ne p1, v2, :cond_13

    const/16 v2, 0x22

    if-ne v0, v2, :cond_11

    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    return-object v1

    :cond_11
    if-ne v0, v1, :cond_12

    const-string v1, "null"

    iget-object v2, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    return-object v1

    :cond_12
    new-instance v1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v2, "double-quoted string or \'null\'"

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v1

    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error; unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "boolean"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 3

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1

    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "byte"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 3

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "double"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "float"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "int"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "long"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 3

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1

    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "short"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_2
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v2, "string"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getStringInfo(Ljava/lang/String;)I
    .locals 2

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, -0x2

    return v1
.end method

.method public load(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/android/internal/util/TypedProperties;->parse(Ljava/io/Reader;Ljava/util/Map;)V

    return-void
.end method
