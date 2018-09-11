.class public abstract Lcom/google/common/io/BaseEncoding;
.super Ljava/lang/Object;
.source "BaseEncoding.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;,
        Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;,
        Lcom/google/common/io/BaseEncoding$Alphabet;,
        Lcom/google/common/io/BaseEncoding$DecodingException;
    }
.end annotation


# static fields
.field private static final BASE16:Lcom/google/common/io/BaseEncoding;

.field private static final BASE32:Lcom/google/common/io/BaseEncoding;

.field private static final BASE32_HEX:Lcom/google/common/io/BaseEncoding;

.field private static final BASE64:Lcom/google/common/io/BaseEncoding;

.field private static final BASE64_URL:Lcom/google/common/io/BaseEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 345
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    const-string v1, "base64()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 346
    const/16 v3, 0x3d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    .line 365
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    const-string v1, "base64Url()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 366
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE64_URL:Lcom/google/common/io/BaseEncoding;

    .line 386
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    const-string v1, "base32()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 387
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE32:Lcom/google/common/io/BaseEncoding;

    .line 406
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    const-string v1, "base32Hex()"

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 407
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE32_HEX:Lcom/google/common/io/BaseEncoding;

    .line 425
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE16:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base16()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 443
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE16:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base32()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 403
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE32:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base32Hex()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 422
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE32_HEX:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base64()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 362
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base64Url()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 383
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE64_URL:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method private static extract([BI)[B
    .locals 2
    .param p0, "result"    # [B
    .param p1, "length"    # I

    .line 208
    array-length v0, p0

    if-ne p1, v0, :cond_0

    .line 209
    return-object p0

    .line 211
    :cond_0
    new-array v0, p1, [B

    .line 212
    .local v0, "trunc":[B
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    return-object v0
.end method

.method static ignoringInput(Lcom/google/common/io/GwtWorkarounds$CharInput;Lcom/google/common/base/CharMatcher;)Lcom/google/common/io/GwtWorkarounds$CharInput;
    .locals 1
    .param p0, "delegate"    # Lcom/google/common/io/GwtWorkarounds$CharInput;
    .param p1, "toIgnore"    # Lcom/google/common/base/CharMatcher;

    .line 757
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    new-instance v0, Lcom/google/common/io/BaseEncoding$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$3;-><init>(Lcom/google/common/io/GwtWorkarounds$CharInput;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method static separatingOutput(Lcom/google/common/io/GwtWorkarounds$CharOutput;Ljava/lang/String;I)Lcom/google/common/io/GwtWorkarounds$CharOutput;
    .locals 1
    .param p0, "delegate"    # Lcom/google/common/io/GwtWorkarounds$CharOutput;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "afterEveryChars"    # I

    .line 778
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 781
    new-instance v0, Lcom/google/common/io/BaseEncoding$4;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/common/io/BaseEncoding$4;-><init>(ILjava/lang/String;Lcom/google/common/io/GwtWorkarounds$CharOutput;)V

    return-object v0
.end method


# virtual methods
.method public final decode(Ljava/lang/CharSequence;)[B
    .locals 2
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->decodeChecked(Ljava/lang/CharSequence;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "badInput":Lcom/google/common/io/BaseEncoding$DecodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final decodeChecked(Ljava/lang/CharSequence;)[B
    .locals 6
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {p1}, Lcom/google/common/io/GwtWorkarounds;->asCharInput(Ljava/lang/CharSequence;)Lcom/google/common/io/GwtWorkarounds$CharInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;

    move-result-object v0

    .line 242
    .local v0, "decodedInput":Lcom/google/common/io/GwtWorkarounds$ByteInput;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/io/BaseEncoding;->maxDecodedSize(I)I

    move-result v1

    new-array v1, v1, [B

    .line 243
    .local v1, "tmp":[B
    const/4 v2, 0x0

    .line 245
    .local v2, "index":I
    :try_start_0
    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteInput;->read()I

    move-result v3
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v3, "i":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 246
    add-int/lit8 v4, v2, 0x1

    .local v4, "index":I
    int-to-byte v5, v3

    :try_start_1
    aput-byte v5, v1, v2

    .line 245
    .end local v2    # "index":I
    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteInput;->read()I

    move-result v2
    :try_end_1
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v2

    move v2, v4

    goto :goto_0

    .line 250
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 248
    :catch_1
    move-exception v2

    goto :goto_2

    .line 252
    .end local v4    # "index":I
    .restart local v2    # "index":I
    :cond_0
    nop

    .line 253
    invoke-static {v1, v2}, Lcom/google/common/io/BaseEncoding;->extract([BI)[B

    move-result-object v3

    return-object v3

    .line 250
    :catch_2
    move-exception v3

    move v4, v2

    move-object v2, v3

    .line 251
    .local v2, "impossible":Ljava/io/IOException;
    .restart local v4    # "index":I
    :goto_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 248
    .end local v4    # "index":I
    .local v2, "index":I
    :catch_3
    move-exception v3

    move v4, v2

    move-object v2, v3

    .line 249
    .local v2, "badInput":Lcom/google/common/io/BaseEncoding$DecodingException;
    .restart local v4    # "index":I
    :goto_2
    throw v2
.end method

.method public final decodingSource(Lcom/google/common/io/CharSource;)Lcom/google/common/io/ByteSource;
    .locals 1
    .param p1, "encodedSource"    # Lcom/google/common/io/CharSource;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "ByteSource,CharSource"
    .end annotation

    .line 272
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Lcom/google/common/io/BaseEncoding$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$2;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSource;)V

    return-object v0
.end method

.method abstract decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;
.end method

.method public final decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Reader,InputStream"
    .end annotation

    .line 263
    invoke-static {p1}, Lcom/google/common/io/GwtWorkarounds;->asCharInput(Ljava/io/Reader;)Lcom/google/common/io/GwtWorkarounds$CharInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/GwtWorkarounds;->asInputStream(Lcom/google/common/io/GwtWorkarounds$ByteInput;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # [B

    .line 158
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/common/io/BaseEncoding;->encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encode([BII)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 166
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 168
    invoke-virtual {p0, p3}, Lcom/google/common/io/BaseEncoding;->maxEncodedSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/io/GwtWorkarounds;->stringBuilderOutput(I)Lcom/google/common/io/GwtWorkarounds$CharOutput;

    move-result-object v0

    .line 169
    .local v0, "result":Lcom/google/common/io/GwtWorkarounds$CharOutput;
    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->encodingStream(Lcom/google/common/io/GwtWorkarounds$CharOutput;)Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    move-result-object v1

    .line 171
    .local v1, "byteOutput":Lcom/google/common/io/GwtWorkarounds$ByteOutput;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 172
    add-int v3, p2, v2

    :try_start_0
    aget-byte v3, p1, v3

    invoke-interface {v1, v3}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->write(B)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "i":I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 174
    :cond_0
    invoke-interface {v1}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    nop

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 175
    :goto_1
    nop

    .line 176
    .local v2, "impossible":Ljava/io/IOException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "impossible"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public final encodingSink(Lcom/google/common/io/CharSink;)Lcom/google/common/io/ByteSink;
    .locals 1
    .param p1, "encodedSink"    # Lcom/google/common/io/CharSink;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "ByteSink,CharSink"
    .end annotation

    .line 196
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Lcom/google/common/io/BaseEncoding$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$1;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSink;)V

    return-object v0
.end method

.method abstract encodingStream(Lcom/google/common/io/GwtWorkarounds$CharOutput;)Lcom/google/common/io/GwtWorkarounds$ByteOutput;
.end method

.method public final encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Writer,OutputStream"
    .end annotation

    .line 188
    invoke-static {p1}, Lcom/google/common/io/GwtWorkarounds;->asCharOutput(Ljava/io/Writer;)Lcom/google/common/io/GwtWorkarounds$CharOutput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->encodingStream(Lcom/google/common/io/GwtWorkarounds$CharOutput;)Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/GwtWorkarounds;->asOutputStream(Lcom/google/common/io/GwtWorkarounds$ByteOutput;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract lowerCase()Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method abstract maxDecodedSize(I)I
.end method

.method abstract maxEncodedSize(I)I
.end method

.method public abstract omitPadding()Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method abstract padding()Lcom/google/common/base/CharMatcher;
.end method

.method public abstract upperCase()Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method
