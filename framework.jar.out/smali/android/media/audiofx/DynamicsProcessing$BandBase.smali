.class public Landroid/media/audiofx/DynamicsProcessing$BandBase;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandBase"
.end annotation


# instance fields
.field private mCutoffFrequency:F

.field private mEnabled:Z


# direct methods
.method public constructor <init>(ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    iput p2, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    return-void
.end method


# virtual methods
.method public getCutoffFrequency()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    return v0
.end method

.method public setCutoffFrequency(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Enabled: %b\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CutoffFrequency: %f\n"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

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
