.class Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioOutputParams"
.end annotation


# instance fields
.field public final mAudioAttributes:Landroid/media/AudioAttributes;

.field public final mPan:F

.field public final mSessionId:I

.field public final mVolume:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method constructor <init>(IFFLandroid/media/AudioAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    iput p2, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    iput p3, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    iput-object p4, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method static createFromParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .locals 6

    if-nez p0, :cond_0

    new-instance v0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "audioAttributes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    if-nez v0, :cond_2

    const-string/jumbo v1, "streamType"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    :cond_2
    new-instance v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    const-string/jumbo v2, "sessionId"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "volume"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const-string/jumbo v4, "pan"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;-><init>(IFFLandroid/media/AudioAttributes;)V

    return-object v1
.end method
