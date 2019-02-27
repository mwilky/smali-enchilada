.class public final Landroid/content/res/AssetManager$AssetInputStream;
.super Ljava/io/InputStream;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AssetInputStream"
.end annotation


# instance fields
.field private mAssetNativePtr:J

.field private mLength:J

.field private mMarkPos:J

.field final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;J)V
    .locals 2

    iput-object p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-wide p2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {p2, p3}, Landroid/content/res/AssetManager;->access$500(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;J)V

    return-void
.end method

.method private ensureOpen()V
    .locals 4

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AssetInputStream is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->access$900(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    :goto_0
    return v2
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->access$1000(J)V

    iput-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/res/AssetManager;->access$1100(Landroid/content/res/AssetManager;J)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    return-void
.end method

.method public final getAssetInt()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getNativeAsset()J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    return-wide v0
.end method

.method public final mark(I)V
    .locals 5

    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->access$800(JJI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->access$600(J)I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    const-string v0, "b"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Landroid/content/res/AssetManager;->access$700(J[BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    const-string v0, "b"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->access$700(J[BII)I

    move-result v0

    return v0
.end method

.method public final reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->access$800(JJI)J

    return-void
.end method

.method public final skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Landroid/content/res/AssetManager;->access$800(JJI)J

    move-result-wide v0

    add-long v5, v0, p1

    iget-wide v7, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    iget-wide v5, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    sub-long p1, v5, v0

    :cond_0
    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    iget-wide v3, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v3, v4, p1, p2, v2}, Landroid/content/res/AssetManager;->access$800(JJI)J

    :cond_1
    return-wide p1
.end method
