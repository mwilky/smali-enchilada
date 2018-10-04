.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile mCompressedData:[B

.field private final mCount:I

.field private volatile mDecompressedSize:I

.field private volatile mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method

.method private static compress([B)[B
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    :try_start_2
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodSubtypeArray;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v3

    :catchall_0
    move-exception v3

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_0
    :try_start_6
    invoke-static {v4, v2}, Landroid/view/inputmethod/InputMethodSubtypeArray;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    move-object v3, v0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    :try_start_8
    invoke-static {v3, v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v1

    const-string v2, "InputMethodSubtypeArray"

    const-string v3, "Failed to compress the data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static decompress([BI)[B
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    :try_start_2
    new-array v3, p1, [B

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v6

    goto :goto_0

    :cond_1
    :goto_1
    if-eq p1, v4, :cond_2

    nop

    :try_start_3
    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodSubtypeArray;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :cond_2
    nop

    :try_start_5
    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodSubtypeArray;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    return-object v3

    :catchall_0
    move-exception v3

    move-object v4, v0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_2
    :try_start_8
    invoke-static {v4, v2}, Landroid/view/inputmethod/InputMethodSubtypeArray;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v2

    move-object v3, v0

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_3
    :try_start_a
    invoke-static {v3, v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    move-exception v1

    const-string v2, "InputMethodSubtypeArray"

    const-string v3, "Failed to decompress the data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_1
    throw v1
.end method

.method private static unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_1
    throw v1
.end method


# virtual methods
.method public get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    if-ltz p1, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-le v0, p1, :cond_3

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    move-object v0, v2

    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-static {v2, v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    const/4 v3, 0x0

    iput v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "InputMethodSubtypeArray"

    const-string v4, "Failed to decompress data. Returns null as fallback."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v3, v3, [Landroid/view/inputmethod/InputMethodSubtype;

    move-object v0, v3

    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_1
    aget-object v1, v0, p1

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 6

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    move-object v0, v3

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    move v1, v3

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v3

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    move-result-object v4

    move-object v0, v4

    if-nez v0, :cond_1

    const/4 v1, -0x1

    const-string v4, "InputMethodSubtypeArray"

    const-string v5, "Failed to compress data."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    array-length v4, v3

    move v1, v4

    :goto_0
    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    if-lez v1, :cond_4

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2

    :cond_4
    const-string v2, "InputMethodSubtypeArray"

    const-string v3, "Unexpected state. Behaving as an empty array."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return-void
.end method
