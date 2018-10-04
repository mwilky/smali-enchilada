.class Landroid/util/jar/StrictJarManifestReader;
.super Ljava/lang/Object;
.source "StrictJarManifestReader.java"


# instance fields
.field private final attributeNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes$Name;",
            ">;"
        }
    .end annotation
.end field

.field private final buf:[B

.field private consecutiveLineBreaks:I

.field private final endOfMainSection:I

.field private name:Ljava/util/jar/Attributes$Name;

.field private pos:I

.field private value:Ljava/lang/String;

.field private final valueBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>([BLjava/util/jar/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    iput-object p1, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    :goto_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iput v0, p0, Landroid/util/jar/StrictJarManifestReader;->endOfMainSection:I

    return-void
.end method

.method private readHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iput v2, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    return v2

    :cond_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readName()V

    iput v2, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readValue()V

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private readName()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    :goto_0
    iget v1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v1, v1, v2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v0, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v2, v2, v3

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    :try_start_0
    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Attributes$Name;

    iput-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/jar/Attributes$Name;

    invoke-direct {v2, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    nop

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "Invalid value for attribute \'%s\'"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-void
.end method

.method private readValue()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_0
    iget v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    array-length v4, v4

    if-ge v3, v4, :cond_7

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v3, v3, v4

    if-eqz v3, :cond_6

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    sub-int v6, v2, v1

    invoke-virtual {v4, v5, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget v1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    const/4 v4, 0x0

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-lt v4, v5, :cond_2

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    goto :goto_2

    :cond_2
    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    add-int/2addr v4, v5

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    add-int/2addr v4, v5

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "NUL character in a manifest"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    :goto_2
    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    sub-int v5, v2, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEndOfMainSection()I
    .locals 1

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->endOfMainSection:I

    return v0
.end method

.method public readEntries(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    :goto_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Attributes;

    if-nez v2, :cond_0

    new-instance v3, Ljava/util/jar/Attributes;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/util/jar/Attributes;-><init>(I)V

    move-object v2, v3

    :cond_0
    :goto_1
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/util/jar/StrictJarManifest$Chunk;

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    invoke-direct {v3, v0, v4}, Landroid/util/jar/StrictJarManifest$Chunk;-><init>(II)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "A jar verifier does not support more than one entry with the same name"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_2
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Entry is not named"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    return-void
.end method
