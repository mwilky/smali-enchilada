.class final Lcom/android/server/power/PowerManagerService$ProfilePowerState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProfilePowerState"
.end annotation


# instance fields
.field mLastUserActivityTime:J

.field mLockingNotified:Z

.field mScreenOffTimeout:J

.field final mUserId:I

.field mWakeLockSummary:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    return-void
.end method
