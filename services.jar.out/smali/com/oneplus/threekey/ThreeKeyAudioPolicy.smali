.class public Lcom/oneplus/threekey/ThreeKeyAudioPolicy;
.super Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;
.source "ThreeKeyAudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ThreeKeyAudioPolicy"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mInitFlag:Z

.field private mMuteMediaFlag:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOptionChangeFlag:Z

.field private mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

.field private mThreeKeyManager:Lcom/oneplus/three_key/ThreeKeyManager;

.field private final mThreeKeySettingsLock:Ljava/lang/Object;

.field private mVibrateFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeySettingsLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    .line 51
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 53
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    const-string/jumbo v1, "threekey"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/ThreeKeyManager;

    iput-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeyManager:Lcom/oneplus/three_key/ThreeKeyManager;

    .line 55
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;-><init>(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)V

    iput-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

    .line 56
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->observe()V

    .line 57
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_zen_media_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    .line 59
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_vibrate_under_silent"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    .line 62
    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    .line 29
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Lcom/oneplus/three_key/ThreeKeyManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    .line 29
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeyManager:Lcom/oneplus/three_key/ThreeKeyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    .line 29
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;
    .param p1, "x1"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;
    .param p1, "x1"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    return p1
.end method

.method static synthetic access$402(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;
    .param p1, "x1"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    return p1
.end method

.method private cleanAbnormalState()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 264
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 265
    return-void
.end method

.method private muteSpeakerMediaVolume(Z)V
    .locals 5
    .param p1, "init"    # Z

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "booting":I
    if-eqz p1, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/16 v3, -0x64

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/AudioManager;->threeKeySetStreamVolume(IIII)V

    .line 254
    return-void
.end method

.method private restoreSpeakerMediaVolume()V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->threeKeySetStreamVolume(IIII)V

    .line 259
    return-void
.end method


# virtual methods
.method public setDontDisturb()V
    .locals 5

    .line 152
    const-string v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mode dontdisturb, mVibrateFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMuteMediaFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 156
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->cleanAbnormalState()V

    .line 157
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "ThreeKeyAudioPolicy"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "zen_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "three_Key_mode"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->restoreSpeakerMediaVolume()V

    .line 166
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_0

    .line 167
    iput-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 168
    return-void

    .line 170
    :cond_0
    return-void
.end method

.method public setDown()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setRing()V

    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInitMode(Z)V
    .locals 0
    .param p1, "isInit"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    .line 94
    return-void
.end method

.method public setMiddle()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setDontDisturb()V

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRing()V
    .locals 4

    .line 173
    const-string v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mode ring, mVibrateFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMuteMediaFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 176
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "ThreeKeyAudioPolicy"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->restoreSpeakerMediaVolume()V

    .line 184
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "three_Key_mode"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_0

    .line 187
    iput-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 188
    return-void

    .line 190
    :cond_0
    return-void
.end method

.method public setSlientNoVibrate()V
    .locals 5

    .line 126
    const-string v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mode Slient No Vibrate, mVibrateFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMuteMediaFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 131
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->setOnePlusVibrateInSilentMode(Z)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "ThreeKeyAudioPolicy"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "zen_mode"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "three_Key_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_0

    .line 143
    iput-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 144
    return-void

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    if-eqz v0, :cond_1

    .line 147
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    invoke-direct {p0, v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->muteSpeakerMediaVolume(Z)V

    .line 149
    :cond_1
    return-void
.end method

.method public setSlientVibrate()V
    .locals 4

    .line 97
    const-string v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mode Slient Vibrate, mVibrateFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMuteMediaFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->setOnePlusVibrateInSilentMode(Z)V

    .line 102
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 103
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "ThreeKeyAudioPolicy"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 107
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "three_Key_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_0

    .line 117
    iput-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 118
    return-void

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    if-eqz v0, :cond_1

    .line 121
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    invoke-direct {p0, v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->muteSpeakerMediaVolume(Z)V

    .line 123
    :cond_1
    return-void
.end method

.method public setUp()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setSlientVibrate()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setSlientNoVibrate()V

    .line 74
    :goto_0
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
