.class public Lcom/android/server/notification/AlertRateLimiter;
.super Ljava/lang/Object;
.source "AlertRateLimiter.java"


# static fields
.field static final ALLOWED_ALERT_INTERVAL:J = 0x3e8L


# instance fields
.field private mLastNotificationMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/notification/AlertRateLimiter;->mLastNotificationMillis:J

    return-void
.end method


# virtual methods
.method shouldRateLimitAlert(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/notification/AlertRateLimiter;->mLastNotificationMillis:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/android/server/notification/AlertRateLimiter;->mLastNotificationMillis:J

    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method
