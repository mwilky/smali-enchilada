.class public Landroid/os/DropBoxManager$Entry;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:[B

.field private final mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mFlags:I

.field private final mTag:Ljava/lang/String;

.field private final mTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/DropBoxManager$Entry$1;

    invoke-direct {v0}, Landroid/os/DropBoxManager$Entry$1;-><init>()V

    sput-object v0, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p4, :cond_1

    move v1, v2

    nop

    :cond_1
    if-ne v0, v1, :cond_2

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/File;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    const/high16 v0, 0x10000000

    invoke-static {p4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x2

    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;J[BI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p4, :cond_1

    move v1, v2

    nop

    :cond_1
    if-ne v0, v1, :cond_2

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :goto_1
    nop

    iget v1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 7

    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    iget-object v3, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    array-length v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_1
    move-object v0, v1

    :try_start_0
    invoke-virtual {p0}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    if-nez v0, :cond_3

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    :try_start_2
    new-array v3, p1, [B

    const/4 v4, 0x0

    move v5, v4

    move v4, v2

    :goto_1
    if-ltz v4, :cond_4

    add-int v6, v5, v4

    move v5, v6

    if-ge v6, p1, :cond_4

    sub-int v6, p1, v5

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v4, v6

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v2, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :cond_5
    :goto_2
    return-object v6

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    :cond_6
    :goto_3
    throw v1

    :catch_3
    move-exception v2

    nop

    if-eqz v0, :cond_7

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :cond_7
    :goto_4
    return-object v1
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    return-void
.end method
