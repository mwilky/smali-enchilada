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

    .line 1301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    .line 1303
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    .line 1304
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    .line 1305
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1308
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    .line 1309
    iput-wide p3, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    .line 1310
    iput-wide p5, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    .line 1311
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 4

    .line 1314
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

    .line 1315
    return-void
.end method
