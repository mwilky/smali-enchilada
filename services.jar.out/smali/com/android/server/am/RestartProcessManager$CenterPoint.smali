.class final Lcom/android/server/am/RestartProcessManager$CenterPoint;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CenterPoint"
.end annotation


# instance fields
.field public mX:D

.field public mY:D

.field public mZ:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iput-wide p3, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iput-wide p5, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 4

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Point X : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", Y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", Z : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
