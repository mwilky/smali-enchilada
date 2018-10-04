.class public final Landroid/media/audiofx/DynamicsProcessing$Limiter;
.super Landroid/media/audiofx/DynamicsProcessing$Stage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Limiter"
.end annotation


# instance fields
.field private mAttackTime:F

.field private mLinkGroup:I

.field private mPostGain:F

.field private mRatio:F

.field private mReleaseTime:F

.field private mThreshold:F


# direct methods
.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isInUse()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Stage;-><init>(ZZ)V

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    return-void
.end method

.method public constructor <init>(ZZIFFFFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Stage;-><init>(ZZ)V

    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    iput p4, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    iput p5, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    iput p6, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    iput p7, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    iput p8, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    return-void
.end method


# virtual methods
.method public getAttackTime()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    return v0
.end method

.method public getLinkGroup()I
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    return v0
.end method

.method public getPostGain()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    return v0
.end method

.method public getRatio()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    return v0
.end method

.method public getReleaseTime()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    return v0
.end method

.method public getThreshold()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    return v0
.end method

.method public setAttackTime(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    return-void
.end method

.method public setLinkGroup(I)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    return-void
.end method

.method public setPostGain(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    return-void
.end method

.method public setReleaseTime(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " LinkGroup: %d (group)\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AttackTime: %f (ms)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ReleaseTime: %f (ms)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Ratio: 1:%f\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Threshold: %f (dB)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PostGain: %f (dB)\n"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
