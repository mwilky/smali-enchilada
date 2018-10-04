.class public final Landroid/media/audiofx/DynamicsProcessing$Config;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    }
.end annotation


# instance fields
.field private final mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

.field private final mChannelCount:I

.field private final mLimiterInUse:Z

.field private final mMbcBandCount:I

.field private final mMbcInUse:Z

.field private final mPostEqBandCount:I

.field private final mPostEqInUse:Z

.field private final mPreEqBandCount:I

.field private final mPreEqInUse:Z

.field private final mPreferredFrameDuration:F

.field private final mVariant:I


# direct methods
.method public constructor <init>(IFIZIZIZIZ[Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mVariant:I

    iput p2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreferredFrameDuration:F

    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    iput-boolean p4, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqInUse:Z

    iput p5, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    iput-boolean p6, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcInUse:Z

    iput p7, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    iput-boolean p8, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqInUse:Z

    iput p9, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    iput-boolean p10, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mLimiterInUse:Z

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    new-array v0, v0, [Landroid/media/audiofx/DynamicsProcessing$Channel;

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    if-ge v0, v1, :cond_1

    array-length v1, p11

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v3, p11, v0

    invoke-direct {v2, v3}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(ILandroid/media/audiofx/DynamicsProcessing$Config;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mVariant:I

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mVariant:I

    iget v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreferredFrameDuration:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreferredFrameDuration:F

    iget v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    iget-boolean v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqInUse:Z

    iput-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqInUse:Z

    iget v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    iget-boolean v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcInUse:Z

    iput-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcInUse:Z

    iget v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    iget-boolean v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqInUse:Z

    iput-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqInUse:Z

    iget v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    iget-boolean v0, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mLimiterInUse:Z

    iput-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mLimiterInUse:Z

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    iget-object v1, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    new-array v1, p1, [Landroid/media/audiofx/DynamicsProcessing$Channel;

    iput-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v3, Landroid/media/audiofx/DynamicsProcessing$Channel;

    iget-object v4, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object v3, v2, v1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v3, Landroid/media/audiofx/DynamicsProcessing$Channel;

    iget-object v4, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    iget v5, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    sub-int/2addr v5, v0

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channel resizing less than 1 not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration channel counts differ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " !="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$Config;)V
    .locals 1

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    invoke-direct {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;-><init>(ILandroid/media/audiofx/DynamicsProcessing$Config;)V

    return-void
.end method

.method private checkChannel(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ChannelIndex out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getChannelByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Channel;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getInputGainByChannelIndex(I)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getInputGain()F

    move-result v0

    return v0
.end method

.method public getLimiterByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getLimiter()Landroid/media/audiofx/DynamicsProcessing$Limiter;

    move-result-object v0

    return-object v0
.end method

.method public getMbcBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbcBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object v0

    return-object v0
.end method

.method public getMbcBandCount()I
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    return v0
.end method

.method public getMbcByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v0

    return-object v0
.end method

.method public getPostEqBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v0

    return-object v0
.end method

.method public getPostEqBandCount()I
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    return v0
.end method

.method public getPostEqByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    return-object v0
.end method

.method public getPreEqBandByChannelIndex(II)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object v0

    return-object v0
.end method

.method public getPreEqBandCount()I
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    return v0
.end method

.method public getPreEqByChannelIndex(I)Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredFrameDuration()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreferredFrameDuration:F

    return v0
.end method

.method public getVariant()I
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mVariant:I

    return v0
.end method

.method public isLimiterInUse()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mLimiterInUse:Z

    return v0
.end method

.method public isMbcInUse()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcInUse:Z

    return v0
.end method

.method public isPostEqInUse()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqInUse:Z

    return v0
.end method

.method public isPreEqInUse()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqInUse:Z

    return v0
.end method

.method public setAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Channel;

    invoke-direct {v1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object v1, v0, p1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MbcBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputGainAllChannelsTo(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInputGainByChannelIndex(IF)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    return-void
.end method

.method public setLimiterAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    return-void
.end method

.method public setMbcAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMbcBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbcBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMbcBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbcBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    return-void
.end method

.method public setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    return-void
.end method

.method public setPostEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPostEqBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPostEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    return-void
.end method

.method public setPreEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreEqBandAllChannelsTo(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreEqBandByChannelIndex(IILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config;->checkChannel(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variant: %d\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mVariant:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PreferredFrameDuration: %f\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreferredFrameDuration:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ChannelCount: %d\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannelCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PreEq inUse: %b, bandCount:%d\n"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqInUse:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    iget v6, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPreEqBandCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Mbc inUse: %b, bandCount: %d\n"

    new-array v4, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcInUse:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    iget v6, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mMbcBandCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PostEq inUse: %b, bandCount: %d\n"

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqInUse:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mPostEqBandCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Limiter inUse: %b\n"

    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mLimiterInUse:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v5

    :goto_0
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    const-string v3, "==Channel %d\n"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Config;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/media/audiofx/DynamicsProcessing$Channel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
