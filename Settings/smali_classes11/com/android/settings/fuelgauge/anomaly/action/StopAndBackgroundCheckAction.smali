.class public Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;
.super Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;
.source "StopAndBackgroundCheckAction.java"


# instance fields
.field mBackgroundCheckAction:Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mForceStopAction:Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;

    invoke-direct {v1, p1}, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;)V

    const/16 v0, 0x4d1

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mActionMetricKey:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mForceStopAction:Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mBackgroundCheckAction:Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mForceStopAction:Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mBackgroundCheckAction:Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    return-void
.end method

.method public isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mForceStopAction:Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mBackgroundCheckAction:Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
