.class final Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimerEntry"
.end annotation


# instance fields
.field mCount:I

.field mName:Ljava/lang/String;

.field mTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    iget-object v0, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    iget v0, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    iput p4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->updateData(JI)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->toMDM(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    iget v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method private handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    iget v1, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private toMDM(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"name\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "unknow"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\",\"count\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateData(JI)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimerEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
