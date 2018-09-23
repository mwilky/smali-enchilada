.class public Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartialWakeLockInfo"
.end annotation


# instance fields
.field public mHolding:J

.field public mHolding_End:J

.field public mHolding_Start:J

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding_End:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding_Start:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding:J

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding:J

    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding_Start:J

    iput-wide p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding_End:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# wl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding_Start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding_End:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
