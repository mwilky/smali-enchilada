.class public abstract Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "AbnormalRingerConditionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase$RingerModeChangeReceiver;
    }
.end annotation


# instance fields
.field protected final mAudioManager:Landroid/media/AudioManager;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase$RingerModeChangeReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase$RingerModeChangeReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase$RingerModeChangeReceiver;-><init>(Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->mReceiver:Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase$RingerModeChangeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->mReceiver:Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase$RingerModeChangeReceiver;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->refreshState()V

    return-void
.end method

.method public onPrimaryClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SOUND_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
