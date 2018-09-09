.class Lcom/android/server/am/ConnorData;
.super Ljava/lang/Object;
.source "ConnorData.java"


# instance fields
.field protected mSbPackageName:Ljava/lang/StringBuilder;

.field protected mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ConnorData;->mSbPackageName:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public setData(Ljava/lang/String;J)V
    .locals 2
    .param p1, "strPackageName"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 21
    iget-object v0, p0, Lcom/android/server/am/ConnorData;->mSbPackageName:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 22
    iget-object v0, p0, Lcom/android/server/am/ConnorData;->mSbPackageName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iput-wide p2, p0, Lcom/android/server/am/ConnorData;->mTimeStamp:J

    .line 24
    return-void
.end method
