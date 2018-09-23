.class Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryRecord"
.end annotation


# instance fields
.field private mChargePlug:I

.field private mCharging:Z

.field private mLevel:I

.field private mTemp:I

.field private mTimeElapsed:J

.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;II)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mLevel:I

    iput p3, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTemp:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTimeElapsed:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;IIZI)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mLevel:I

    iput p3, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTemp:I

    iput p5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mChargePlug:I

    iput-boolean p4, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mCharging:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTimeElapsed:J

    return-void
.end method


# virtual methods
.method convertPlugToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "USB"

    return-object v0

    :pswitch_1
    const-string v0, "AC"

    return-object v0

    :cond_0
    const-string v0, "FAST_CHARGE"

    return-object v0

    :cond_1
    const-string v0, "WIRELESS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method convertToRTC(J)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    add-long v2, v0, p1

    return-wide v2
.end method

.method getChargeType()I
    .locals 1

    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mChargePlug:I

    return v0
.end method

.method getTemp()I
    .locals 1

    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTemp:I

    return v0
.end method

.method getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTimeElapsed:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTimeElapsed:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BatteryRecord {time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OverHeatingDiagnosis;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", temp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,charging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", plug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mChargePlug:I

    invoke-virtual {p0, v2}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->convertPlugToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
