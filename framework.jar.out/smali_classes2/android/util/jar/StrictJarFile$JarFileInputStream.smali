.class final Landroid/util/jar/StrictJarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private count:J

.field private done:Z

.field private final entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;


# direct methods
.method constructor <init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    iput-object p4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_3

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1, v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write(I)V

    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    goto :goto_0

    :cond_1
    iput-wide v4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    :goto_0
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_2

    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    :cond_2
    return v0

    :cond_3
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    iget-object v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    return v1
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_4

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    if-eq v0, v1, :cond_2

    move v1, v0

    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    int-to-long v8, v1

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    long-to-int v1, v6

    :cond_1
    iget-object v3, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v3, p1, p2, v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->write([BII)V

    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    int-to-long v8, v1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    goto :goto_0

    :cond_2
    iput-wide v4, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    :goto_0
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->count:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_3

    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    iget-object v1, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v1}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    :cond_3
    return v0

    :cond_4
    iput-boolean v2, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->done:Z

    iget-object v0, p0, Landroid/util/jar/StrictJarFile$JarFileInputStream;->entry:Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-virtual {v0}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verify()V

    return v1
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
