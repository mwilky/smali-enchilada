.class public Landroid/renderscript/Sampler$Builder;
.super Ljava/lang/Object;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroid/renderscript/Sampler$Value;

.field mMin:Landroid/renderscript/Sampler$Value;

.field mRS:Landroid/renderscript/RenderScript;

.field mWrapR:Landroid/renderscript/Sampler$Value;

.field mWrapS:Landroid/renderscript/Sampler$Value;

.field mWrapT:Landroid/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Sampler;
    .locals 8

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v1, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    iget v2, v0, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    iget v3, v0, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    iget v4, v0, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    iget v5, v0, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    iget v6, v0, Landroid/renderscript/Sampler$Value;->mID:I

    iget v7, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nSamplerCreate(IIIIIF)J

    move-result-wide v0

    new-instance v2, Landroid/renderscript/Sampler;

    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Sampler;-><init>(JLandroid/renderscript/RenderScript;)V

    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    iput-object v3, v2, Landroid/renderscript/Sampler;->mMin:Landroid/renderscript/Sampler$Value;

    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    iput-object v3, v2, Landroid/renderscript/Sampler;->mMag:Landroid/renderscript/Sampler$Value;

    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    iput-object v3, v2, Landroid/renderscript/Sampler;->mWrapS:Landroid/renderscript/Sampler$Value;

    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    iput-object v3, v2, Landroid/renderscript/Sampler;->mWrapT:Landroid/renderscript/Sampler$Value;

    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    iput-object v3, v2, Landroid/renderscript/Sampler;->mWrapR:Landroid/renderscript/Sampler$Value;

    iget v3, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    iput v3, v2, Landroid/renderscript/Sampler;->mAniso:F

    return-object v2
.end method

.method public setAnisotropy(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMagnification(Landroid/renderscript/Sampler$Value;)V
    .locals 2

    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    return-void
.end method

.method public setMinification(Landroid/renderscript/Sampler$Value;)V
    .locals 2

    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    return-void
.end method

.method public setWrapS(Landroid/renderscript/Sampler$Value;)V
    .locals 2

    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    return-void
.end method

.method public setWrapT(Landroid/renderscript/Sampler$Value;)V
    .locals 2

    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    return-void
.end method
