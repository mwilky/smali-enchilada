.class public Landroid/media/SoundPool;
.super Landroid/media/PlayerBase;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$Builder;,
        Landroid/media/SoundPool$EventHandler;,
        Landroid/media/SoundPool$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SAMPLE_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundPool"


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private mEventHandler:Landroid/media/SoundPool$EventHandler;

.field private mHasAppOpsPlayAudio:Z

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "soundpool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "SoundPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    const-string v0, "SoundPool"

    const-string v1, "SoundPool()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILandroid/media/AudioAttributes;)V
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1, p2}, Landroid/media/SoundPool;->native_setup(Ljava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Landroid/media/SoundPool;->baseRegisterPlayer()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Native setup failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    return-void
.end method

.method private final native _load(Ljava/io/FileDescriptor;JJI)I
.end method

.method private final native _mute(Z)V
.end method

.method private final native _play(IFFIIF)I
.end method

.method private final native _setVolume(IFF)V
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/media/SoundPool;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .locals 1

    iget-object v0, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;ILjava/lang/Object;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SoundPool;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/SoundPool$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final native autoPause()V
.end method

.method public final native autoResume()V
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, p0

    move v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    return v1
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 9

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, v7

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 1

    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object v3, p0

    move v9, p2

    invoke-direct/range {v3 .. v9}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v3

    move v0, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SoundPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public final native pause(I)V
.end method

.method public final play(IFFIIF)I
    .locals 1

    invoke-virtual {p0}, Landroid/media/SoundPool;->baseStart()V

    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_play(IFFIIF)I

    move-result v0

    return v0
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method playerPause()V
    .locals 0

    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method playerSetVolume(ZFF)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/SoundPool;->_mute(Z)V

    return-void
.end method

.method playerStart()V
    .locals 0

    return-void
.end method

.method playerStop()V
    .locals 0

    return-void
.end method

.method public final release()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/SoundPool;->baseRelease()V

    invoke-direct {p0}, Landroid/media/SoundPool;->native_release()V

    return-void
.end method

.method public final native resume(I)V
.end method

.method public final native setLoop(II)V
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 4

    iget-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v3}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v3}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    :goto_1
    iput-object p1, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final native setPriority(II)V
.end method

.method public final native setRate(IF)V
.end method

.method public setVolume(IF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    return-void
.end method

.method public final setVolume(IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/SoundPool;->_setVolume(IFF)V

    return-void
.end method

.method public final native stop(I)V
.end method

.method public final native unload(I)Z
.end method
