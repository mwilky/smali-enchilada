.class Landroid/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPosition:J

.field final synthetic this$0:Landroid/media/ExifInterface;

.field final synthetic val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;


# direct methods
.method constructor <init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/ExifInterface;

    .line 2574
    iput-object p1, p0, Landroid/media/ExifInterface$1;->this$0:Landroid/media/ExifInterface;

    iput-object p2, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2578
    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2607
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2583
    if-nez p5, :cond_0

    .line 2584
    const/4 v0, 0x0

    return v0

    .line 2586
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, -0x1

    if-gez v0, :cond_1

    .line 2587
    return v1

    .line 2590
    :cond_1
    :try_start_0
    iget-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2

    .line 2591
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2592
    iput-wide p1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 2595
    :cond_2
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p3, p4, p5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v0

    .line 2596
    .local v0, "bytesRead":I
    if-ltz v0, :cond_3

    .line 2597
    iget-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2598
    return v0

    .line 2600
    .end local v0    # "bytesRead":I
    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    .line 2601
    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 2602
    return v1
.end method
