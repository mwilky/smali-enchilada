.class public Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;
.super Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;
.source "ThreeKeyAudioPolicy2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ThreeKeyAudioPolicy2"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mInitFlag:Z

.field private mMuteMediaFlag:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;

.field private mThreeKeyManager:Lcom/oneplus/three_key/ThreeKeyManager;

.field private final mThreeKeySettingsLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeySettingsLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mInitFlag:Z

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "threekey"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/ThreeKeyManager;

    iput-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeyManager:Lcom/oneplus/three_key/ThreeKeyManager;

    new-instance v1, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;-><init>(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)V

    iput-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->observe()V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_zen_media_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mMuteMediaFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Lcom/oneplus/three_key/ThreeKeyManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeyManager:Lcom/oneplus/three_key/ThreeKeyManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mMuteMediaFlag:Z

    return p1
.end method

.method private cleanAbnormalState()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method private muteSpeakerMediaVolume()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, -0x64

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->threeKeySetStreamVolume(IIII)V

    return-void
.end method

.method private restoreSpeakerMediaVolume()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->threeKeySetStreamVolume(IIII)V

    return-void
.end method


# virtual methods
.method public setDown()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->restoreSpeakerMediaVolume()V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "three_Key_mode"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "ThreeKeyAudioPolicy2"

    const-string/jumbo v2, "setDown"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInitMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mInitFlag:Z

    return-void
.end method

.method public setMiddle()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->restoreSpeakerMediaVolume()V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "three_Key_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "ThreeKeyAudioPolicy2"

    const-string/jumbo v2, "setMiddle"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUp()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mMuteMediaFlag:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->muteSpeakerMediaVolume()V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "three_Key_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    const-string v2, "ThreeKeyAudioPolicy2"

    const-string/jumbo v3, "setUp"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
