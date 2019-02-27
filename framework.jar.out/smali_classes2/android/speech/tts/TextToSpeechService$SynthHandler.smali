.class Landroid/speech/tts/TextToSpeechService$SynthHandler;
.super Landroid/os/Handler;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthHandler"
.end annotation


# instance fields
.field private mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

.field private mFlushAll:I

.field private mFlushedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    return-void
.end method

.method static synthetic access$100(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/speech/tts/TextToSpeechService$SynthHandler;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->endFlushingSpeechItems(Ljava/lang/Object;)V

    return-void
.end method

.method private endFlushingSpeechItems(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .locals 3

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private startFlushingSpeechItems(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    :cond_0
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isValid()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, -0x8

    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    :cond_1
    return v2

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I

    :cond_4
    :goto_0
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;

    invoke-direct {v1, p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x0

    return v2

    :cond_5
    const-string v4, "TextToSpeechService"

    const-string v5, "SynthThread has quit"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    const/4 v4, -0x4

    invoke-interface {v0, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    :cond_6
    return v2
.end method

.method public isSpeaking()Z
    .locals 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public quit()V
    .locals 1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    :cond_0
    return-void
.end method

.method public stopAll()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop()V

    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;)V

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    return v2
.end method

.method public stopForApp(Ljava/lang/Object;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    :cond_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/speech/tts/AudioPlaybackHandler;->stopForApp(Ljava/lang/Object;)V

    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;

    invoke-direct {v1, p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    return v2
.end method
