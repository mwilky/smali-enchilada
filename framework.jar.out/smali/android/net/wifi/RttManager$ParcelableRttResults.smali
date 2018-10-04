.class public Landroid/net/wifi/RttManager$ParcelableRttResults;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableRttResults"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/RttManager$ParcelableRttResults;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResults:[Landroid/net/wifi/RttManager$RttResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttResults$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/RttManager$RttResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", burstNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", measurementFrameNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", successMeasurementFrameNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", frameNumberPerBurstPeer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", requestType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->requestType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", measurementType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", retryAfterDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", ts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->ts:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rssi_spread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rssi_spread:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rssiSpread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", tx_rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->tx_rate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", txRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rxRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->rxRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rtt_ns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rtt_ns:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rtt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rtt_sd_ns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rtt_sd_ns:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rttStandardDeviation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rtt_spread_ns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rtt_spread_ns:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rttSpread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-wide v3, v3, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", distance_cm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance_cm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", distance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", distance_sd_cm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance_sd_cm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", distanceStandardDeviation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", distance_spread_cm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distance_spread_cm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", distanceSpread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", burstDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", negotiatedBurstNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", LCI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", LCR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", secure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->status:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->ts:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->distance:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    array-length v4, v4

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    if-eq v4, v5, :cond_1

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    array-length v4, v4

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    iget-boolean v4, v3, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    return-void
.end method
