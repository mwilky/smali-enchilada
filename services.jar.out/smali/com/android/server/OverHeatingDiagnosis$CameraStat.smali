.class final Lcom/android/server/OverHeatingDiagnosis$CameraStat;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CameraStat"
.end annotation


# instance fields
.field mAvailable:Z

.field mCameraId:I

.field mCanUpdate:Z

.field mIdleTime:J

.field mLastUpdateTime:J

.field mUseTime:J

.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCameraId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    return-void
.end method


# virtual methods
.method getId()I
    .locals 1

    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCameraId:I

    return v0
.end method

.method getIdleTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    return-wide v0
.end method

.method getState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    return v0
.end method

.method getUseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    return-wide v0
.end method

.method init()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    return-void
.end method

.method update(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    sub-long v2, v0, v2

    iget-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    if-eq v4, p1, :cond_1

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    :goto_0
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    :cond_3
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    return-void
.end method
