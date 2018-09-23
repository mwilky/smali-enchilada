.class Lcom/android/server/OverHeatingDiagnosis$UidStat;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidStat"
.end annotation


# instance fields
.field mLastUpdate:J

.field mState:I

.field final mStats:Landroid/util/SparseLongArray;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mUid:I

    const/16 p1, 0x13

    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mLastUpdate:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;II)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mUid:I

    iput p3, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mLastUpdate:J

    iget-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method


# virtual methods
.method dump()V
    .locals 7

    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " foreground="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->getTotalTimeInForeground()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->getTotalTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    const-string v4, "OverHeatingDiagnosis"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getState()I
    .locals 1

    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    return v0
.end method

.method getTotalTime()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method getTotalTimeInForeground()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4, v3}, Lcom/android/server/OverHeatingDiagnosis;->isProcessStateForeground(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    add-long/2addr v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method update(I)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    const-wide/16 v3, 0x0

    const/16 v5, 0x13

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mLastUpdate:J

    sub-long v5, v0, v5

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    iget v7, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    invoke-virtual {v2, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    iget v9, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    invoke-virtual {v2, v9, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mLastUpdate:J

    return-void
.end method
