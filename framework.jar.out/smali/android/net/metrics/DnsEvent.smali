.class public final Landroid/net/metrics/DnsEvent;
.super Ljava/lang/Object;
.source "DnsEvent.java"


# static fields
.field private static final SIZE_LIMIT:I = 0x4e20


# instance fields
.field public eventCount:I

.field public eventTypes:[B

.field public latenciesMs:[I

.field public final netId:I

.field public returnCodes:[B

.field public successCount:I

.field public final transports:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    iput-wide p2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    new-array v0, p4, [B

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    new-array v0, p4, [B

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    new-array v0, p4, [I

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    return-void
.end method


# virtual methods
.method addResult(BBI)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    const/16 v3, 0x4e20

    if-lt v2, v3, :cond_1

    return v1

    :cond_1
    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    iget-object v3, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    array-length v3, v3

    if-ne v2, v3, :cond_2

    const-wide v2, 0x3ff6666666666666L    # 1.4

    iget v4, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p0, v2}, Landroid/net/metrics/DnsEvent;->resize(I)V

    :cond_2
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput-byte p1, v2, v3

    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput-byte p2, v2, v3

    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput p3, v2, v3

    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    if-eqz v1, :cond_3

    iget v2, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    :cond_3
    return v1
.end method

.method public resize(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DnsEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/metrics/DnsEvent;->transports:J

    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-static {v5}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "%d events, "

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%d success)"

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
