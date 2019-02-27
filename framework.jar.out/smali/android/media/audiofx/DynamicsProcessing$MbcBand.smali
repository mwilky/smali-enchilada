.class public final Landroid/media/audiofx/DynamicsProcessing$MbcBand;
.super Landroid/media/audiofx/DynamicsProcessing$BandBase;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MbcBand"
.end annotation


# instance fields
.field private mAttackTime:F

.field private mExpanderRatio:F

.field private mKneeWidth:F

.field private mNoiseGateThreshold:F

.field private mPostGain:F

.field private mPreGain:F

.field private mRatio:F

.field private mReleaseTime:F

.field private mThreshold:F


# direct methods
.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getCutoffFrequency()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return-void
.end method

.method public constructor <init>(ZFFFFFFFFFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    iput p4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    iput p5, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    iput p6, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    iput p7, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    iput p8, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    iput p9, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    iput p10, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    iput p11, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return-void
.end method


# virtual methods
.method public getAttackTime()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    return v0
.end method

.method public getExpanderRatio()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    return v0
.end method

.method public getKneeWidth()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    return v0
.end method

.method public getNoiseGateThreshold()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    return v0
.end method

.method public getPostGain()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return v0
.end method

.method public getPreGain()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    return v0
.end method

.method public getRatio()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    return v0
.end method

.method public getReleaseTime()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    return v0
.end method

.method public getThreshold()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    return v0
.end method

.method public setAttackTime(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    return-void
.end method

.method public setExpanderRatio(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    return-void
.end method

.method public setKneeWidth(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    return-void
.end method

.method public setNoiseGateThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    return-void
.end method

.method public setPostGain(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return-void
.end method

.method public setPreGain(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    return-void
.end method

.method public setReleaseTime(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AttackTime: %f (ms)\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ReleaseTime: %f (ms)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Ratio: 1:%f\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Threshold: %f (dB)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " NoiseGateThreshold: %f(dB)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ExpanderRatio: %f:1\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PreGain: %f (dB)\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PostGain: %f (dB)\n"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
