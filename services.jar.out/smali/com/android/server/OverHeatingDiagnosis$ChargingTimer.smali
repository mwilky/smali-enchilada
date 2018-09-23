.class Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargingTimer"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ChargingTimer"


# instance fields
.field mIsCharging:Z

.field mStopwatch:Lcom/android/server/OverHeatingDiagnosis$Stopwatch;

.field mTime:J

.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method private constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;

    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;-><init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mStopwatch:Lcom/android/server/OverHeatingDiagnosis$Stopwatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mTime:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-string v0, "ChargingTimer"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mIsCharging:Z

    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mStopwatch:Lcom/android/server/OverHeatingDiagnosis$Stopwatch;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->reset()V

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "ChargingTimer"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mIsCharging:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mIsCharging:Z

    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mStopwatch:Lcom/android/server/OverHeatingDiagnosis$Stopwatch;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->start()Lcom/android/server/OverHeatingDiagnosis$Stopwatch;

    return-void
.end method

.method public stop()V
    .locals 4

    const-string v0, "ChargingTimer"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mIsCharging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mIsCharging:Z

    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mTime:J

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mStopwatch:Lcom/android/server/OverHeatingDiagnosis$Stopwatch;

    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->stop()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mTime:J

    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mStopwatch:Lcom/android/server/OverHeatingDiagnosis$Stopwatch;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->reset()V

    const-string v0, "ChargingTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
