.class final Lcom/android/server/OnePlusPowerController$IdleItem;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdleItem"
.end annotation


# instance fields
.field mDuration:Ljava/time/Duration;

.field mLocalEndTime:Ljava/time/LocalDateTime;

.field mLocalStartTime:Ljava/time/LocalDateTime;

.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0

    .line 1715
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    sget-object p1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1712
    sget-object p1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1713
    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1716
    return-void
.end method

.method constructor <init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$IdleItem;)V
    .locals 0
    .param p2, "item"    # Lcom/android/server/OnePlusPowerController$IdleItem;

    .line 1718
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    sget-object p1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1712
    sget-object p1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1713
    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1719
    if-eqz p2, :cond_0

    .line 1720
    invoke-virtual {p2}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalStartTime()Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1721
    invoke-virtual {p2}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalEndTime()Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1722
    invoke-virtual {p2}, Lcom/android/server/OnePlusPowerController$IdleItem;->getDuration()Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1724
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/OnePlusPowerController;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V
    .locals 2
    .param p2, "start"    # Ljava/time/LocalDateTime;
    .param p3, "end"    # Ljava/time/LocalDateTime;

    .line 1726
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    sget-object p1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1712
    sget-object p1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1713
    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1727
    iput-object p2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1728
    iput-object p3, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1729
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-eqz p3, :cond_1

    move p1, v0

    nop

    :cond_1
    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    .line 1730
    invoke-static {p2, p3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1732
    :cond_2
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1769
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController$IdleItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    return-void
.end method

.method getDuration()Ljava/time/Duration;
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    return-object v0
.end method

.method getLocalEndTime()Ljava/time/LocalDateTime;
    .locals 1

    .line 1739
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method getLocalStartTime()Ljava/time/LocalDateTime;
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method setDuration(Ljava/time/Duration;)V
    .locals 0
    .param p1, "duration"    # Ljava/time/Duration;

    .line 1755
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1756
    return-void
.end method

.method setLocalEndTime(Ljava/time/LocalDateTime;)V
    .locals 0
    .param p1, "time"    # Ljava/time/LocalDateTime;

    .line 1751
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1752
    return-void
.end method

.method setLocalStartTime(Ljava/time/LocalDateTime;)V
    .locals 0
    .param p1, "time"    # Ljava/time/LocalDateTime;

    .line 1747
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1748
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1759
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1760
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "IdleItem {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v3, v3, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v3, v3, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
