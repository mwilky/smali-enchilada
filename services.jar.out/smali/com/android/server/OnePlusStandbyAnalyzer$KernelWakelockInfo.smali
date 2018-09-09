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

    .line 1633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1628
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1629
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1630
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1631
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1632
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1633
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J

    .line 1634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1628
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1629
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1630
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1631
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1632
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1635
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 1636
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1637
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J
    .param p4, "count"    # I

    .line 1644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1628
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1629
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1630
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1631
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1632
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1645
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 1646
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1647
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1648
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJII)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding_start"    # J
    .param p4, "holding_end"    # J
    .param p6, "count_start"    # I
    .param p7, "count_end"    # I

    .line 1649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1628
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1629
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1630
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1631
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1632
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1650
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 1651
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1652
    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1653
    iput p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1654
    iput p7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1655
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1656
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1657
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1628
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1629
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1630
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1631
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1632
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1639
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 1640
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1641
    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1642
    iput-wide p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1643
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1660
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
