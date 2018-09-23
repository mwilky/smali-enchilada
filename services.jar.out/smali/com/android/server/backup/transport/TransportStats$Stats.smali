.class public final Lcom/android/server/backup/transport/TransportStats$Stats;
.super Ljava/lang/Object;
.source "TransportStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/transport/TransportStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stats"
.end annotation


# instance fields
.field public average:D

.field public max:J

.field public min:J

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    return-void
.end method

.method private constructor <init>(IDJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    iput-wide p2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    iput-wide p4, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    iput-wide p6, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    return-void
.end method

.method private constructor <init>(Lcom/android/server/backup/transport/TransportStats$Stats;)V
    .locals 8

    iget v1, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    iget-wide v2, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    iget-wide v4, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    iget-wide v6, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>(IDJJ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/transport/TransportStats$Stats;Lcom/android/server/backup/transport/TransportStats$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>(Lcom/android/server/backup/transport/TransportStats$Stats;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/transport/TransportStats$Stats;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/transport/TransportStats$Stats;->register(J)V

    return-void
.end method

.method public static merge(Lcom/android/server/backup/transport/TransportStats$Stats;Lcom/android/server/backup/transport/TransportStats$Stats;)Lcom/android/server/backup/transport/TransportStats$Stats;
    .locals 11

    new-instance v8, Lcom/android/server/backup/transport/TransportStats$Stats;

    iget v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    iget v1, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    add-int/2addr v1, v0

    iget-wide v2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    iget v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    iget-wide v4, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    iget v0, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    int-to-double v6, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    iget v4, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    add-int/2addr v0, v4

    int-to-double v4, v0

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    iget-wide v6, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    iget-wide v9, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>(IDJJ)V

    return-object v8
.end method

.method private register(J)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    iget v2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p1

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    iget v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    return-void
.end method
