.class public abstract Lcom/oneplus/screenshot/longshot/util/MovePoint;
.super Landroid/graphics/Point;
.source "MovePoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MovePoint"


# instance fields
.field private mDistance:I

.field private mDownTime:J

.field private mEnd:Landroid/graphics/Point;

.field private mStart:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(ILandroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mEnd:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDistance:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDownTime:J

    iput p1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDistance:I

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mEnd:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->reset()V

    return-void
.end method


# virtual methods
.method public MoveTo(II)V
    .locals 0

    return-void
.end method

.method public abstract canMove()Z
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDistance:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDownTime:J

    return-wide v0
.end method

.method public getEnd()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mEnd:Landroid/graphics/Point;

    return-object v0
.end method

.method public getStart()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract isNext()Z
.end method

.method public abstract move()V
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    return-void
.end method

.method public setDownTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mDownTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mEnd:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateStart(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->mStart:Landroid/graphics/Point;

    return-void
.end method
