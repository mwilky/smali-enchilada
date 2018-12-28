.class public Lcom/android/settings/notification/RingVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "RingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;,
        Lcom/android/settings/notification/RingVolumePreferenceController$H;
    }
.end annotation


# static fields
.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final TAG:Ljava/lang/String; = "RingVolumeController"


# instance fields
.field private final mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$H;

.field private mMuteIcon:I

.field private final mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

.field private mRingerMode:I

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ring_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/RingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    new-instance v0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    new-instance v0, Lcom/android/settings/notification/RingVolumePreferenceController$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$H;

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/RingVolumePreferenceController;)Lcom/android/settings/notification/RingVolumePreferenceController$H;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$H;

    return-object v0
.end method

.method private updateEffectsSuppressor()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/notification/SuppressorHelper;->getSuppressionText(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updatePreferenceIcon()V

    return-void
.end method

.method private updatePreferenceIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f080271

    iput v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mMuteIcon:I

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    if-nez v0, :cond_1

    const v0, 0x7f0801fa

    iput v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mMuteIcon:I

    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const v1, 0x7f0801f9

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateRingerMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result v0

    iget v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updatePreferenceIcon()V

    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mMuteIcon:I

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ring_volume"

    return-object v0
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ring_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->register(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateEffectsSuppressor()V

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updatePreferenceIcon()V

    return-void
.end method
