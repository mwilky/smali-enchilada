.class Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraUsageEvent"
.end annotation


# instance fields
.field public final mAPILevel:I

.field public final mCameraFacing:I

.field public final mClientName:Ljava/lang/String;

.field private mCompleted:Z

.field private mDurationOrStartTimeMs:J


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    iput-object p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public markCompleted()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    return-void
.end method
