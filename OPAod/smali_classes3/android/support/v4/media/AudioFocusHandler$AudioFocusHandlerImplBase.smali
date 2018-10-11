.class Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"

# interfaces
.implements Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/AudioFocusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFocusHandlerImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;,
        Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;
    }
.end annotation


# static fields
.field private static final VOLUME_DUCK_FACTOR:F = 0.2f


# instance fields
.field private mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBecomingNoisyIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mHasAudioFocus:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mHasRegisteredReceiver:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLock:Ljava/lang/Object;

.field private mResumeWhenAudioFocusGain:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSession:Landroid/support/v4/media/MediaSession2;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/MediaSession2;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;-><init>(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;Landroid/support/v4/media/AudioFocusHandler$1;)V

    iput-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;-><init>(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;Landroid/support/v4/media/AudioFocusHandler$1;)V

    iput-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private abandonAudioFocusLocked()V
    .locals 2
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasAudioFocus:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasAudioFocus:Z

    iput-boolean v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasRegisteredReceiver:Z

    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/AudioAttributesCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    return v0
.end method

.method static synthetic access$602(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    return p1
.end method

.method private convertAudioAttributesToFocusGainLocked()I
    .locals 3
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompat;->getUsage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    const/4 v1, 0x2

    return v1

    :pswitch_2
    const/4 v1, 0x1

    return v1

    :pswitch_3
    const/4 v1, 0x3

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private registerReceiverLocked()V
    .locals 3
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasRegisteredReceiver:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasRegisteredReceiver:Z

    return-void
.end method

.method private requestAudioFocusLocked()Z
    .locals 6
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->convertAudioAttributesToFocusGainLocked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v4, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/AudioAttributesCompat;->getVolumeControlStream()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    iput-boolean v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasAudioFocus:Z

    goto :goto_0

    :cond_1
    const-string v1, "AudioFocusHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAudioFocus("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") failed (return="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") playback wouldn\'t start."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasAudioFocus:Z

    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    iget-boolean v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasAudioFocus:Z

    return v1
.end method

.method private unregisterReceiverLocked()V
    .locals 2
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasRegisteredReceiver:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasRegisteredReceiver:Z

    return-void
.end method

.method private updateAudioAttributesIfNeeded()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->getVolumeProvider()Landroid/support/v4/media/VolumeProviderCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->getPlayer()Landroid/support/v4/media/BaseMediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/BaseMediaPlayer;->getAudioAttributes()Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v1

    :goto_0
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    invoke-static {v0, v2}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    iput-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    iget-boolean v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasAudioFocus:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->requestAudioFocusLocked()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasAudioFocus:Z

    iget-boolean v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasAudioFocus:Z

    if-nez v2, :cond_3

    const-string v2, "AudioFocusHandler"

    const-string v3, "Failed to regain audio focus."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->unregisterReceiverLocked()V

    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->abandonAudioFocusLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPauseRequested()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPlayRequested()Z
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->updateAudioAttributesIfNeeded()V

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->requestAudioFocusLocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPlayerStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->abandonAudioFocusLocked()V

    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->unregisterReceiverLocked()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->updateAudioAttributesIfNeeded()V

    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->registerReceiverLocked()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->updateAudioAttributesIfNeeded()V

    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->unregisterReceiverLocked()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->abandonAudioFocusLocked()V

    nop

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
