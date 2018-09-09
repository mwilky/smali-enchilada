.class public Lcom/android/server/am/OnePlusBGController$mAhRecord;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "mAhRecord"
.end annotation


# instance fields
.field public mTimestamp:J

.field public mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

.field public mmAh:D


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;JD)V
    .locals 0
    .param p1, "type"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .param p2, "timestamp"    # J
    .param p4, "mAh"    # D

    .line 1924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1925
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1926
    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mTimestamp:J

    .line 1927
    iput-wide p4, p0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    .line 1928
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# mAhRecord ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
