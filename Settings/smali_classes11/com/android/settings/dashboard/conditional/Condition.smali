.class public abstract Lcom/android/settings/dashboard/conditional/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# static fields
.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_LAST_STATE:Ljava/lang/String; = "last_state"

.field private static final KEY_SILENCE:Ljava/lang/String; = "silence"


# instance fields
.field private mIsActive:Z

.field private mIsSilenced:Z

.field private mLastStateChange:J

.field protected final mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

.field protected final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field protected mReceiverRegistered:Z


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 46
    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;
    .param p2, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 51
    iput-object p2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 52
    return-void
.end method


# virtual methods
.method public abstract getActions()[Ljava/lang/CharSequence;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method getLastChange()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    return-wide v0
.end method

.method public abstract getMetricsConstant()I
.end method

.method protected getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSummary()Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public isActive()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    return v0
.end method

.method public isSilenced()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->notifyChanged(Lcom/android/settings/dashboard/conditional/Condition;)V

    .line 79
    return-void
.end method

.method public abstract onActionClick(I)V
.end method

.method public onPause()V
    .locals 0

    .line 152
    return-void
.end method

.method public abstract onPrimaryClick()V
.end method

.method public onResume()V
    .locals 0

    .line 149
    return-void
.end method

.method onSilenceChanged(Z)V
    .locals 3
    .param p1, "silenced"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    .line 116
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    if-nez v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    .line 120
    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    if-nez v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    goto :goto_0

    .line 125
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    .line 130
    :cond_2
    :goto_0
    return-void
.end method

.method public abstract refreshState()V
.end method

.method restoreState(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 55
    const-string v0, "silence"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 56
    const-string v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    .line 57
    const-string v0, "last_state"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    .line 58
    return-void
.end method

.method saveState(Landroid/os/PersistableBundle;)Z
    .locals 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 67
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "silence"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "active"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    const-string v0, "last_state"

    iget-wide v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 74
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-ne v0, p1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/Condition;->onSilenceChanged(Z)V

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->notifyChanged()V

    .line 100
    return-void
.end method

.method public setSilenced()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 63
    return-void
.end method

.method public shouldShow()Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->isSilenced()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public silence()V
    .locals 4

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v2, 0x174

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v3

    .line 106
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 108
    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/Condition;->onSilenceChanged(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->notifyChanged()V

    .line 111
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method
