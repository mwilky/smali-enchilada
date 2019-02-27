.class public final Landroid/nfc/NdefRecord;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final FLAG_CF:B = 0x20t

.field private static final FLAG_IL:B = 0x8t

.field private static final FLAG_MB:B = -0x80t

.field private static final FLAG_ME:B = 0x40t

.field private static final FLAG_SR:B = 0x10t

.field private static final MAX_PAYLOAD_SIZE:I = 0xa00000

.field public static final RTD_ALTERNATIVE_CARRIER:[B

.field public static final RTD_ANDROID_APP:[B

.field public static final RTD_HANDOVER_CARRIER:[B

.field public static final RTD_HANDOVER_REQUEST:[B

.field public static final RTD_HANDOVER_SELECT:[B

.field public static final RTD_SMART_POSTER:[B

.field public static final RTD_TEXT:[B

.field public static final RTD_URI:[B

.field public static final TNF_ABSOLUTE_URI:S = 0x3s

.field public static final TNF_EMPTY:S = 0x0s

.field public static final TNF_EXTERNAL_TYPE:S = 0x4s

.field public static final TNF_MIME_MEDIA:S = 0x2s

.field public static final TNF_RESERVED:S = 0x7s

.field public static final TNF_UNCHANGED:S = 0x6s

.field public static final TNF_UNKNOWN:S = 0x5s

.field public static final TNF_WELL_KNOWN:S = 0x1s

.field private static final URI_PREFIX_MAP:[Ljava/lang/String;


# instance fields
.field private final mId:[B

.field private final mPayload:[B

.field private final mTnf:S

.field private final mType:[B


# direct methods
.method static constructor <clinit>()V
    .locals 39

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x54

    aput-byte v3, v1, v2

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v0, v0, [B

    const/16 v1, 0x55

    aput-byte v1, v0, v2

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const-string v0, "android.com:pkg"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const-string v3, ""

    const-string v4, "http://www."

    const-string v5, "https://www."

    const-string v6, "http://"

    const-string v7, "https://"

    const-string/jumbo v8, "tel:"

    const-string/jumbo v9, "mailto:"

    const-string v10, "ftp://anonymous:anonymous@"

    const-string v11, "ftp://ftp."

    const-string v12, "ftps://"

    const-string/jumbo v13, "sftp://"

    const-string/jumbo v14, "smb://"

    const-string/jumbo v15, "nfs://"

    const-string v16, "ftp://"

    const-string v17, "dav://"

    const-string/jumbo v18, "news:"

    const-string/jumbo v19, "telnet://"

    const-string v20, "imap:"

    const-string/jumbo v21, "rtsp://"

    const-string/jumbo v22, "urn:"

    const-string/jumbo v23, "pop:"

    const-string/jumbo v24, "sip:"

    const-string/jumbo v25, "sips:"

    const-string/jumbo v26, "tftp:"

    const-string v27, "btspp://"

    const-string v28, "btl2cap://"

    const-string v29, "btgoep://"

    const-string/jumbo v30, "tcpobex://"

    const-string v31, "irdaobex://"

    const-string v32, "file://"

    const-string/jumbo v33, "urn:epc:id:"

    const-string/jumbo v34, "urn:epc:tag:"

    const-string/jumbo v35, "urn:epc:pat:"

    const-string/jumbo v36, "urn:epc:raw:"

    const-string/jumbo v37, "urn:epc:"

    const-string/jumbo v38, "urn:nfc:"

    filled-new-array/range {v3 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    new-array v0, v2, [B

    sput-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    new-instance v0, Landroid/nfc/NdefRecord$1;

    invoke-direct {v0}, Landroid/nfc/NdefRecord$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 1
        0x53t
        0x70t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0x63t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x48t
        0x63t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x48t
        0x72t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x48t
        0x73t
    .end array-data
.end method

.method public constructor <init>(S[B[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    sget-object p2, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_1
    if-nez p4, :cond_2

    sget-object p4, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iput-short p1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iput-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    iput-object p3, p0, Landroid/nfc/NdefRecord;->mId:[B

    iput-object p4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/nfc/NdefRecord;->parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget-short v3, v3, Landroid/nfc/NdefRecord;->mTnf:S

    iput-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/nfc/NdefRecord;->mType:[B

    iput-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/nfc/NdefRecord;->mId:[B

    iput-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    aget-object v2, v1, v2

    iget-object v2, v2, Landroid/nfc/NdefRecord;->mPayload:[B

    iput-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    return-void

    :cond_0
    new-instance v2, Landroid/nfc/FormatException;

    const-string v3, "data too long"

    invoke-direct {v2, v3}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static bytesToString([B)Ljava/lang/StringBuilder;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x4

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 6

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v0

    const/16 v5, 0x3a

    aput-byte v5, v2, v3

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v3, Landroid/nfc/NdefRecord;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domain is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "type is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "domain is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 5

    if-eqz p0, :cond_3

    invoke-static {p0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    new-instance v2, Landroid/nfc/NdefRecord;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "mimeType must have minor type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "mimeType must have major type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mimeType is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mimeType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 9

    if-eqz p1, :cond_2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    :goto_0
    array-length v2, v1

    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    array-length v4, v0

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v4, v1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "language code is too long, must be <64 bytes."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .locals 8

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    sget-object v4, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    sget-object v4, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    int-to-byte v1, v3

    sget-object v4, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v1, v4, v5

    array-length v6, v3

    invoke-static {v3, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v7, 0x0

    invoke-direct {v5, v2, v6, v7, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "uri is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method private static ensureSanePayloadSize(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    const-wide/32 v0, 0xa00000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/nfc/FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "payload above max limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0xa00000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v9, v7

    move v7, v6

    move-object v6, v4

    move-object v4, v3

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_25

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit8 v11, v10, -0x80

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    move v11, v12

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    and-int/lit8 v13, v10, 0x40

    if-eqz v13, :cond_1

    move v13, v12

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    move v0, v13

    and-int/lit8 v13, v10, 0x20

    if-eqz v13, :cond_2

    move v13, v12

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    :goto_3
    and-int/lit8 v14, v10, 0x10

    if-eqz v14, :cond_3

    move v14, v12

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    :goto_4
    and-int/lit8 v15, v10, 0x8

    if-eqz v15, :cond_4

    goto :goto_5

    :cond_4
    const/4 v12, 0x0

    :goto_5
    and-int/lit8 v8, v10, 0x7

    int-to-short v8, v8

    if-nez v11, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_6

    if-nez v7, :cond_6

    if-eqz p1, :cond_5

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_6

    :cond_5
    move-object/from16 v16, v3

    new-instance v3, Landroid/nfc/FormatException;

    move-object/from16 v17, v4

    const-string v4, "expected MB flag"

    invoke-direct {v3, v4}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    :goto_6
    if-eqz v11, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    if-eqz v7, :cond_9

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    new-instance v3, Landroid/nfc/FormatException;

    const-string/jumbo v4, "unexpected MB flag"

    invoke-direct {v3, v4}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    :goto_7
    if-eqz v7, :cond_b

    if-nez v12, :cond_a

    goto :goto_8

    :cond_a
    new-instance v3, Landroid/nfc/FormatException;

    const-string/jumbo v4, "unexpected IL flag in non-leading chunk"

    invoke-direct {v3, v4}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    :goto_8
    if-eqz v13, :cond_d

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    new-instance v3, Landroid/nfc/FormatException;

    const-string/jumbo v4, "unexpected ME flag in non-trailing chunk"

    invoke-direct {v3, v4}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    :goto_9
    const/4 v3, 0x6

    if-eqz v7, :cond_f

    if-ne v8, v3, :cond_e

    goto :goto_a

    :cond_e
    new-instance v3, Landroid/nfc/FormatException;

    const-string v4, "expected TNF_UNCHANGED in non-leading chunk"

    invoke-direct {v3, v4}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    :goto_a
    if-nez v7, :cond_11

    if-eq v8, v3, :cond_10

    goto :goto_b

    :cond_10
    new-instance v3, Landroid/nfc/FormatException;

    const-string/jumbo v4, "unexpected TNF_UNCHANGED in first chunk or unchunked record"

    invoke-direct {v3, v4}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eqz v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    move/from16 v18, v9

    move/from16 v19, v10

    int-to-long v9, v4

    goto :goto_c

    :cond_12
    move/from16 v18, v9

    move/from16 v19, v10

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v9, v4

    const-wide v20, 0xffffffffL

    and-long v9, v9, v20

    :goto_c
    if-eqz v12, :cond_13

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_d

    :cond_13
    const/4 v4, 0x0

    :goto_d
    if-eqz v7, :cond_15

    if-nez v3, :cond_14

    move/from16 v22, v0

    move-object/from16 v23, v6

    goto :goto_e

    :cond_14
    move/from16 v22, v0

    new-instance v0, Landroid/nfc/FormatException;

    move-object/from16 v23, v6

    const-string v6, "expected zero-length type in non-leading chunk"

    invoke-direct {v0, v6}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move/from16 v22, v0

    move-object/from16 v23, v6

    :goto_e
    if-nez v7, :cond_18

    if-lez v3, :cond_16

    new-array v0, v3, [B

    goto :goto_f

    :cond_16
    sget-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :goto_f
    if-lez v4, :cond_17

    new-array v6, v4, [B

    goto :goto_10

    :cond_17
    sget-object v6, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :goto_10
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_11

    :cond_18
    move-object/from16 v0, v16

    move-object/from16 v6, v17

    :goto_11
    invoke-static {v9, v10}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    const-wide/16 v16, 0x0

    cmp-long v15, v9, v16

    if-lez v15, :cond_19

    move/from16 v24, v4

    long-to-int v4, v9

    new-array v4, v4, [B

    goto :goto_12

    :cond_19
    move/from16 v24, v4

    sget-object v4, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :goto_12
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v13, :cond_1c

    if-nez v7, :cond_1c

    if-nez v3, :cond_1b

    const/4 v1, 0x5

    if-ne v8, v1, :cond_1a

    move/from16 v25, v3

    goto :goto_13

    :cond_1a
    new-instance v1, Landroid/nfc/FormatException;

    move/from16 v25, v3

    const-string v3, "expected non-zero type length in first chunk"

    invoke-direct {v1, v3}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    move/from16 v25, v3

    :goto_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v1, v8

    goto :goto_14

    :cond_1c
    move/from16 v25, v3

    move/from16 v1, v18

    :goto_14
    if-nez v13, :cond_1d

    if-eqz v7, :cond_1e

    :cond_1d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    if-nez v13, :cond_21

    if-eqz v7, :cond_21

    const-wide/16 v9, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    move-object/from16 v26, v15

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v3, v26

    array-length v4, v3

    move-object/from16 v29, v3

    int-to-long v3, v4

    add-long/2addr v9, v3

    nop

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    goto :goto_15

    :cond_1f
    move-object/from16 v28, v4

    invoke-static {v9, v10}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    long-to-int v3, v9

    new-array v3, v3, [B

    const/4 v4, 0x0

    move/from16 v30, v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v31, v5

    move/from16 v5, v30

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    move-object/from16 v32, v15

    move-object/from16 v33, v4

    move/from16 v34, v7

    move-object/from16 v4, v32

    array-length v7, v4

    move/from16 v35, v8

    const/4 v8, 0x0

    invoke-static {v4, v8, v3, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v7, v4

    add-int/2addr v5, v7

    nop

    move-object/from16 v4, v33

    move/from16 v7, v34

    move/from16 v8, v35

    goto :goto_16

    :cond_20
    move/from16 v34, v7

    move/from16 v35, v8

    const/4 v8, 0x0

    move v4, v1

    goto :goto_17

    :cond_21
    move-object/from16 v28, v4

    move-object/from16 v31, v5

    move/from16 v34, v7

    move/from16 v35, v8

    const/4 v8, 0x0

    move-object/from16 v3, v28

    move/from16 v4, v35

    :goto_17
    if-eqz v13, :cond_22

    const/4 v7, 0x1

    nop

    :goto_18
    move v9, v1

    move-object v4, v6

    move-object/from16 v5, v31

    move-object/from16 v1, p0

    move-object v6, v3

    move-object v3, v0

    move/from16 v0, v22

    goto/16 :goto_0

    :cond_22
    const/4 v7, 0x0

    invoke-static {v4, v0, v6, v3}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_24

    new-instance v8, Landroid/nfc/NdefRecord;

    invoke-direct {v8, v4, v0, v6, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_23

    goto :goto_19

    :cond_23
    goto :goto_18

    :cond_24
    new-instance v8, Landroid/nfc/FormatException;

    invoke-direct {v8, v5}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_25
    :goto_19
    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/nfc/NdefRecord;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/nfc/FormatException;

    const-string v3, "expected more data"

    invoke-direct {v1, v3, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseWktUri()Landroid/net/Uri;
    .locals 6

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    sget-object v2, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v5, v5

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    :cond_2
    :goto_0
    return-object v1
.end method

.method private toUri(Z)Landroid/net/Uri;
    .locals 8

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vnd.android.nfc://ext/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    :try_start_0
    new-instance v0, Landroid/nfc/NdefMessage;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-direct {v0, v3}, Landroid/nfc/NdefMessage;-><init>([B)V

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-direct {v6, v2}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    move-result-object v7
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    return-object v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/nfc/NdefRecord;->parseWktUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v1

    nop

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    return-object v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static validateTnf(S[B[B[B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "unexpected tnf value: 0x%02x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "unexpected TNF_UNCHANGED in first chunk or logical record"

    return-object v0

    :pswitch_1
    array-length v1, p1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "unexpected type field in TNF_UNKNOWN or TNF_RESERVEd record"

    return-object v0

    :cond_0
    return-object v0

    :pswitch_2
    return-object v0

    :pswitch_3
    array-length v1, p1

    if-nez v1, :cond_2

    array-length v1, p2

    if-nez v1, :cond_2

    array-length v1, p3

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const-string/jumbo v0, "unexpected data in TNF_EMPTY record"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/nfc/NdefRecord;

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    iget-object v3, v1, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    iget-object v3, v1, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iget-short v3, v1, Landroid/nfc/NdefRecord;->mTnf:S

    if-eq v2, v3, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    iget-object v2, v1, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method getByteLength()I
    .locals 5

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    const/4 v1, 0x3

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v0, v0

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x100

    if-ge v0, v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-short v4, p0, Landroid/nfc/NdefRecord;->mTnf:S

    if-nez v4, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v4, v4

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_2
    move v2, v3

    if-nez v0, :cond_3

    add-int/lit8 v1, v1, 0x3

    :cond_3
    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    return v1
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getTnf()S
    .locals 1

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    return v0
.end method

.method public getType()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget-object v4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget-short v4, p0, Landroid/nfc/NdefRecord;->mTnf:S

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v2, v1

    return v2
.end method

.method public toByteArray()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getByteLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toMimeType()Ljava/lang/String;
    .locals 3

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "text/plain"

    return-object v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NdefRecord tnf=%X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v1}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v1}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, " payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v1}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V
    .locals 5

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-ge v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    if-nez v3, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v3, v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    if-eqz p2, :cond_3

    const/16 v3, -0x80

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    if-eqz p3, :cond_4

    const/16 v4, 0x40

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    or-int/2addr v3, v4

    if-eqz v0, :cond_5

    const/16 v4, 0x10

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    or-int/2addr v3, v4

    if-eqz v1, :cond_6

    const/16 v2, 0x8

    nop

    :cond_6
    or-int/2addr v2, v3

    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_7
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_6
    if-eqz v1, :cond_8

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_8
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
