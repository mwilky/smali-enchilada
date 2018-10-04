.class public final Landroid/net/wifi/WifiActivityEnergyInfo;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STACK_STATE_INVALID:I = 0x0

.field public static final STACK_STATE_STATE_ACTIVE:I = 0x1

.field public static final STACK_STATE_STATE_IDLE:I = 0x3

.field public static final STACK_STATE_STATE_SCANNING:I = 0x2


# instance fields
.field public mControllerEnergyUsed:J

.field public mControllerIdleTimeMs:J

.field public mControllerRxTimeMs:J

.field public mControllerScanTimeMs:J

.field public mControllerTxTimeMs:J

.field public mControllerTxTimePerLevelMs:[J

.field public mStackState:I

.field public mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiActivityEnergyInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiActivityEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIJ[JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    iput p3, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    iput-wide p4, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    iput-object p6, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    iput-wide p7, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    iput-wide p9, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    iput-wide p11, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    iput-wide p13, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getControllerEnergyUsed()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    return-wide v0
.end method

.method public getControllerIdleTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    return-wide v0
.end method

.method public getControllerRxTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    return-wide v0
.end method

.method public getControllerScanTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    return-wide v0
.end method

.method public getControllerTxTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    return-wide v0
.end method

.method public getControllerTxTimeMillisAtLevel(I)J
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    aget-wide v0, v0, p1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStackState()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiActivityEnergyInfo{ timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mStackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mControllerTxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerTxTimePerLevelMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mControllerRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerScanTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerEnergyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimePerLevelMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
