.class final Lcom/android/server/preload/OneplusAppPreload$SingleRecord;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleRecord"
.end annotation


# instance fields
.field public isRecordDone:Z

.field public mDeadTime:J

.field public mPreloadTime:J

.field public mRealStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    iput-wide p1, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    iput-wide p3, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iput-wide p5, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    return-void
.end method
