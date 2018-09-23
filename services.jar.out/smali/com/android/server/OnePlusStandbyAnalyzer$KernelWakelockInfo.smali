.class public Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelWakelockInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mCount_End:I

.field public mCount_Start:I

.field public mHolding:J

.field public mHolding_End:J

.field public mHolding_Start:J

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iput p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    iput p7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    iput-wide p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# kwl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
