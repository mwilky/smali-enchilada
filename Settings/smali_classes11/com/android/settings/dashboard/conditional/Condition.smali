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

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    iput-object p2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public abstract getActions()[Ljava/lang/CharSequence;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getLastChange()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    return-wide v0
.end method

.method public abstract getMetricsConstant()I
.end method

.method protected getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSummary()Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    return v0
.end method

.method public isSilenced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->notifyChanged(Lcom/android/settings/dashboard/conditional/Condition;)V

    return-void
.end method

.method public abstract onActionClick(I)V
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public abstract onPrimaryClick()V
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method onSilenceChanged(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mReceiverRegistered:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract refreshState()V
.end method

.method restoreState(Landroid/os/PersistableBundle;)V
    .locals 2

    const-string v0, "silence"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    const-string v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    const-string v0, "last_state"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    return-void
.end method

.method saveState(Landroid/os/PersistableBundle;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-eqz v0, :cond_0

    const-string v0, "silence"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-eqz v0, :cond_1

    const-string v0, "active"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "last_state"

    iget-wide v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

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

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/Condition;->onSilenceChanged(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->notifyChanged()V

    return-void
.end method

.method public setSilenced()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    return-void
.end method

.method public shouldShow()Z
    .locals 1

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

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v2, 0x174

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/Condition;->onSilenceChanged(Z)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->notifyChanged()V

    :cond_0
    return-void
.end method
