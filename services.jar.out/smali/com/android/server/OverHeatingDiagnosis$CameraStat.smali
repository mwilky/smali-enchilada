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
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "cameraId"    # I

    .line 1231
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCameraId:I

    .line 1233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    .line 1235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    .line 1236
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    .line 1237
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    .line 1238
    return-void
.end method


# virtual methods
.method getId()I
    .locals 1

    .line 1287
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCameraId:I

    return v0
.end method

.method getIdleTime()J
    .locals 2

    .line 1308
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    return-wide v0
.end method

.method getState()Z
    .locals 1

    .line 1294
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    return v0
.end method

.method getUseTime()J
    .locals 2

    .line 1301
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    return-wide v0
.end method

.method init()V
    .locals 2

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    .line 1245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    .line 1246
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    .line 1248
    return-void
.end method

.method stop()V
    .locals 1

    .line 1254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    .line 1255
    return-void
.end method

.method update(Z)V
    .locals 6
    .param p1, "available"    # Z

    .line 1261
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    if-eqz v0, :cond_3

    .line 1262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1263
    .local v0, "current":J
    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    sub-long v2, v0, v2

    .line 1265
    .local v2, "delta":J
    iget-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    if-eq v4, p1, :cond_1

    .line 1266
    if-eqz p1, :cond_0

    .line 1267
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    goto :goto_0

    .line 1269
    :cond_0
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    goto :goto_0

    .line 1272
    :cond_1
    if-eqz p1, :cond_2

    .line 1273
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    goto :goto_0

    .line 1275
    :cond_2
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    .line 1278
    :goto_0
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    .line 1280
    .end local v0    # "current":J
    .end local v2    # "delta":J
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    .line 1281
    return-void
.end method
