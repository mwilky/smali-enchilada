.class public Landroid/media/audiopolicy/AudioMix$Builder;
.super Ljava/lang/Object;
.source "AudioMix.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCallbackFlags:I

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceSystemType:I

.field private mFormat:Landroid/media/AudioFormat;

.field private mRouteFlags:I

.field private mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/media/audiopolicy/AudioMix;
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    :cond_0
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v0

    if-gtz v0, :cond_1

    const v0, 0xac44

    :cond_1
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    iput-object v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    :cond_2
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    const v3, -0x7fffff00

    const v4, 0x8000

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    if-eq v0, v4, :cond_5

    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported device on non-playback mix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have audio device without flag ROUTE_FLAG_RENDER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_9

    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    and-int/2addr v0, v2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    if-nez v0, :cond_6

    iput v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    if-ne v0, v5, :cond_7

    iput v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown mixing rule type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_0
    new-instance v0, Landroid/media/audiopolicy/AudioMix;

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget-object v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v5, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    iget v6, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    iget v7, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    iget-object v8, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/media/audiopolicy/AudioMix$1;)V

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have flag ROUTE_FLAG_RENDER without an audio device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported route behavior combination 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCallbackFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal callback flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    return-object p0
.end method

.method setDevice(ILjava/lang/String;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 0

    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setDevice(Landroid/media/AudioDeviceInfo;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported device type on mix, not a sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioDeviceInfo argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown route flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "when configuring an AudioMix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid route flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "when configuring an AudioMix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal empty route flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
