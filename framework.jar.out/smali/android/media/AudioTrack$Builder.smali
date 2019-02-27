.class public Landroid/media/AudioTrack$Builder;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttributes:Landroid/media/AudioAttributes;

.field private mBufferSizeInBytes:I

.field private mFormat:Landroid/media/AudioFormat;

.field private mMode:I

.field private mOffload:Z

.field private mPerformanceMode:I

.field private mSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    iput v0, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    iput-boolean v0, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioTrack;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    :cond_0
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x100

    and-int/lit16 v2, v2, -0x201

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v3, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    iget v4, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    invoke-static {v0, v2, v3, v4}, Landroid/media/AudioTrack;->access$000(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :pswitch_2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    and-int/lit16 v2, v2, -0x101

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    :goto_0
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    :cond_2
    iget-boolean v0, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-static {v0}, Landroid/media/AudioSystem;->isOffloadSupported(Landroid/media/AudioFormat;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create AudioTrack, offload format not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create AudioTrack, offload requires USAGE_MEDIA"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    :cond_6
    new-instance v0, Landroid/media/AudioTrack;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v3, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v4, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    iget v5, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    iget v6, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    iget-boolean v7, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZLandroid/media/AudioTrack$1;)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot create AudioTrack"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p1, :cond_0

    iput p1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    return-object p0
.end method

.method public setPerformanceMode(I)Landroid/media/AudioTrack$Builder;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid performance mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    nop

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSessionId(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    return-object p0
.end method

.method public setTransferMode(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transfer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    nop

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
