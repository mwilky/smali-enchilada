.class Lcom/android/server/am/RestartProcessManager$Cluster;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cluster"
.end annotation


# instance fields
.field public mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

.field public mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDistance:D

.field public mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addData(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dump()V
    .locals 4

    const-string v0, "RestartProcessManager"

    const-string v1, "-----------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cluster "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v0}, Lcom/android/server/am/RestartProcessManager$CenterPoint;->dump()V

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Distance from 0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDistance:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RestartProcessManager"

    const-string v1, "All data : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->dump()V

    goto :goto_0

    :cond_0
    const-string v0, "RestartProcessManager"

    const-string v1, "-----------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

    return-object v0
.end method

.method public getDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mId:I

    return v0
.end method

.method public setCenterPoint(Lcom/android/server/am/RestartProcessManager$CenterPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

    return-void
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    return-void
.end method
