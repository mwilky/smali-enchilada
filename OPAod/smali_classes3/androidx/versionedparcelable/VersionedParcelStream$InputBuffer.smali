.class Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;
.super Ljava/lang/Object;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/VersionedParcelStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputBuffer"
.end annotation


# instance fields
.field private final mFieldId:I

.field private final mInputStream:Ljava/io/DataInputStream;

.field private final mSize:I


# direct methods
.method constructor <init>(IILjava/io/DataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mSize:I

    iput p1, p0, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mFieldId:I

    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mSize:I

    new-array v0, v0, [B

    invoke-virtual {p3, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mInputStream:Ljava/io/DataInputStream;

    return-void
.end method

.method static synthetic access$100(Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;)Ljava/io/DataInputStream;
    .locals 1

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mInputStream:Ljava/io/DataInputStream;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;)I
    .locals 1

    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mFieldId:I

    return v0
.end method
