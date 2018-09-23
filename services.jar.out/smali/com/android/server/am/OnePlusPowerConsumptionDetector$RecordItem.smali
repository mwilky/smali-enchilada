.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecordItem"
.end annotation


# instance fields
.field public connectedBatLevel:I

.field public connectedWallTime:J

.field public diffTime:J

.field public disconnectedBatLevel:I

.field public disconnectedWallTime:J

.field public dozeInactiveTime:J

.field public screenOnTime:J


# direct methods
.method constructor <init>(JJJJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->diffTime:J

    iput p11, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedBatLevel:I

    iput p12, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedBatLevel:I

    iput-wide p3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->screenOnTime:J

    iput-wide p5, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->dozeInactiveTime:J

    iput-wide p7, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    iput-wide p9, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    return-void
.end method


# virtual methods
.method public getDiffBatLevel()I
    .locals 2

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedBatLevel:I

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedBatLevel:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toMDM()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"deq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedBatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"ceq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedBatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"dt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\",\"ct\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\",\"sot\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->screenOnTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\",\"doz\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->dozeInactiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordItem{start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1300()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1300()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",drained:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedBatLevel:I

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedBatLevel:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%,kept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1400(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",screenon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->screenOnTime:J

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1400(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
