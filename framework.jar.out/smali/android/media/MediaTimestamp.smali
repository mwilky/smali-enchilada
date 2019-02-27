.class public final Landroid/media/MediaTimestamp;
.super Ljava/lang/Object;
.source "MediaTimestamp.java"


# static fields
.field public static final TIMESTAMP_UNKNOWN:Landroid/media/MediaTimestamp;


# instance fields
.field public final clockRate:F

.field public final mediaTimeUs:J

.field public final nanoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Landroid/media/MediaTimestamp;

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaTimestamp;-><init>(JJF)V

    sput-object v6, Landroid/media/MediaTimestamp;->TIMESTAMP_UNKNOWN:Landroid/media/MediaTimestamp;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/MediaTimestamp;->clockRate:F

    return-void
.end method

.method constructor <init>(JJF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    iput-wide p3, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    iput p5, p0, Landroid/media/MediaTimestamp;->clockRate:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/MediaTimestamp;

    iget-wide v3, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    iget-wide v5, v2, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    iget-wide v5, v2, Landroid/media/MediaTimestamp;->nanoTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/media/MediaTimestamp;->clockRate:F

    iget v4, v2, Landroid/media/MediaTimestamp;->clockRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAnchorMediaTimeUs()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    return-wide v0
.end method

.method public getAnchorSytemNanoTime()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public getMediaClockRate()F
    .locals 1

    iget v0, p0, Landroid/media/MediaTimestamp;->clockRate:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{AnchorMediaTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AnchorSystemNanoTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " clockRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/MediaTimestamp;->clockRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
