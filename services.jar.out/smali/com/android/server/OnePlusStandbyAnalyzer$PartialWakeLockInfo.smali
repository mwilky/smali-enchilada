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
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .line 1668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1665
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding_End:J

    .line 1666
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding_Start:J

    .line 1667
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding:J

    .line 1669
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mName:Ljava/lang/String;

    .line 1670
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding:J

    .line 1671
    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding_Start:J

    .line 1672
    iput-wide p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding_End:J

    .line 1673
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1676
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
