.class final Lcom/android/server/audio/AudioService$SoundPoolCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundPoolCallback"
.end annotation


# instance fields
.field mSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mStatus:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 3586
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3589
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mStatus:I

    .line 3590
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 3586
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SoundPoolCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .line 3606
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3607
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3608
    .local v1, "i":I
    if-ltz v1, :cond_0

    .line 3609
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3611
    :cond_0
    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3612
    :cond_1
    iput p3, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mStatus:I

    .line 3613
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 3615
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 3616
    return-void

    .line 3615
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSamples([I)V
    .locals 3
    .param p1, "samples"    # [I

    .line 3597
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3599
    aget v1, p1, v0

    if-lez v1, :cond_0

    .line 3600
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3597
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3603
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public status()I
    .locals 1

    .line 3593
    iget v0, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mStatus:I

    return v0
.end method
