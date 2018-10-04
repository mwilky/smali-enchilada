.class public Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final captureAvailable:Z

.field public final captureDelayMs:I

.field public final captureFormat:Landroid/media/AudioFormat;

.field public final capturePreambleMs:I

.field public final captureSession:I

.field public final data:[B

.field public final soundModelHandle:I

.field public final status:I

.field public final triggerInData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZIIIZLandroid/media/AudioFormat;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iput-boolean p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iput p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iput p6, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iput-boolean p7, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iput-object p8, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    iput-object p9, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    return-void
.end method

.method protected static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v5, Landroid/media/AudioFormat$Builder;

    invoke-direct {v5}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    :cond_2
    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v16

    new-instance v17, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    move-object/from16 v0, v17

    move v1, v10

    move v2, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move-object v8, v15

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    return-object v17
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_7

    return v1

    :cond_7
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    if-eq v3, v4, :cond_8

    return v1

    :cond_8
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    if-eq v3, v4, :cond_9

    return v1

    :cond_9
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    if-eq v3, v4, :cond_a

    return v1

    :cond_a
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v3, :cond_b

    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v3, :cond_f

    return v1

    :cond_b
    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v3, :cond_c

    return v1

    :cond_c
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    if-eq v3, v4, :cond_d

    return v1

    :cond_d
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v4

    if-eq v3, v4, :cond_e

    return v1

    :cond_e
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v4

    if-eq v3, v4, :cond_f

    return v1

    :cond_f
    return v0
.end method

.method public getCaptureFormat()Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public getCaptureSession()I
    .locals 1

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    return v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-boolean v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    const/16 v5, 0x4d5

    const/16 v6, 0x4cf

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget-boolean v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    if-eqz v4, :cond_1

    move v5, v6

    nop

    :cond_1
    add-int/2addr v3, v5

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v1, :cond_2

    mul-int v1, v2, v3

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v4

    add-int v3, v1, v4

    :cond_2
    mul-int v1, v2, v3

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    add-int/2addr v2, v1

    return v2
.end method

.method public isCaptureAvailable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionEvent [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soundModelHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", captureAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", captureSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", captureDelayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capturePreambleMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", triggerInData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", encoding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", channelMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    array-length v1, v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    return-void
.end method
