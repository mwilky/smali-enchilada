.class public Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RPMMasterInfo"
.end annotation


# instance fields
.field public mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

.field public mEndRaw:Ljava/lang/String;

.field public mIsAsleep:Z

.field public mLastEntered:J

.field public mLastExited:J

.field public mSleepAccDuration:J

.field public mSleepAccDuration_Hrs:F

.field public mSleepCountDiff:J

.field public mStartRaw:Ljava/lang/String;

.field public mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mIsAsleep:Z

    const-string/jumbo v0, "na"

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mStartRaw:Ljava/lang/String;

    const-string/jumbo v0, "na"

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mStartRaw:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mIsAsleep:Z

    const-string/jumbo v0, "na"

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mStartRaw:Ljava/lang/String;

    const-string/jumbo v0, "na"

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    invoke-static {p3, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastEntered:J

    invoke-static {p4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastExited:J

    invoke-static {p5, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    return-void
.end method


# virtual methods
.method public setInEndRaw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    return-void
.end method

.method public setInEndRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastEntered:J

    invoke-static {p3, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastExited:J

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    invoke-static {p4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    const-wide/32 v2, 0x124f800

    div-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration_Hrs:F

    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration_Hrs:F

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration_Hrs:F

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastExited:J

    iget-wide v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mLastEntered:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mIsAsleep:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mIsAsleep:Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mIsAsleep:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->N:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->A:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    :goto_1
    iput-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    return-void
.end method

.method public toMDMString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration_Hrs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# RPMMasterInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration_Hrs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
