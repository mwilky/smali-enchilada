.class public Landroid/util/PathParser$PathData;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathData"
.end annotation


# instance fields
.field mNativePathData:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {}, Landroid/util/PathParser;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    return-void
.end method

.method public constructor <init>(Landroid/util/PathParser$PathData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v0, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1}, Landroid/util/PathParser;->access$100(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Landroid/util/PathParser;->access$200(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v2, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pathData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1}, Landroid/util/PathParser;->access$400(J)V

    iput-wide v2, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    return-wide v0
.end method

.method public setPathData(Landroid/util/PathParser$PathData;)V
    .locals 4

    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1, v2, v3}, Landroid/util/PathParser;->access$300(JJ)V

    return-void
.end method
