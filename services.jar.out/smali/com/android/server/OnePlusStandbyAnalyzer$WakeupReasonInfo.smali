.class public Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeupReasonInfo"
.end annotation


# instance fields
.field public mAverage_Count:F

.field public mCount:I

.field public mCount_End:I

.field public mCount_Start:I

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1681
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    .line 1682
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    .line 1683
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    .line 1685
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 1686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1681
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    .line 1682
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    .line 1683
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    .line 1687
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    .line 1688
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    .line 1689
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 1690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1681
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    .line 1682
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    .line 1683
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    .line 1691
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    .line 1692
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    .line 1693
    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    .line 1694
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    .line 1695
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# wr ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
