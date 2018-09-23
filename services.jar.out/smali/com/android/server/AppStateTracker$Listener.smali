.class public abstract Lcom/android/server/AppStateTracker$Listener;
.super Ljava/lang/Object;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker$Listener;->onUidActiveStateChanged(Lcom/android/server/AppStateTracker;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker$Listener;->onUidForegroundStateChanged(Lcom/android/server/AppStateTracker;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppStateTracker$Listener;->onRunAnyAppOpsChanged(Lcom/android/server/AppStateTracker;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$Listener;->onPowerSaveUnwhitelisted(Lcom/android/server/AppStateTracker;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$Listener;->onPowerSaveWhitelistedChanged(Lcom/android/server/AppStateTracker;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$Listener;->onTempPowerSaveWhitelistChanged(Lcom/android/server/AppStateTracker;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$Listener;->onExemptChanged(Lcom/android/server/AppStateTracker;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$Listener;->onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTracker;)V

    return-void
.end method

.method private onExemptChanged(Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    return-void
.end method

.method private onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTracker;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    invoke-virtual {p1}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    :cond_0
    return-void
.end method

.method private onPowerSaveUnwhitelisted(Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    return-void
.end method

.method private onPowerSaveWhitelistedChanged(Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    return-void
.end method

.method private onRunAnyAppOpsChanged(Lcom/android/server/AppStateTracker;ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/AppStateTracker$Listener;->updateJobsForUidPackage(ILjava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/AppStateTracker;->areAlarmsRestricted(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTracker$Listener;->unblockAlarmsForUidPackage(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/AppStateTracker;->areAlarmsRestricted(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    :cond_1
    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTracker;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AppStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " toggled into fg service restriction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTracker$Listener;->stopForegroundServicesForUidPackage(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private onTempPowerSaveWhitelistChanged(Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    return-void
.end method

.method private onUidActiveStateChanged(Lcom/android/server/AppStateTracker;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/AppStateTracker$Listener;->updateJobsForUid(IZ)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/AppStateTracker$Listener;->unblockAlarmsForUid(I)V

    :cond_0
    return-void
.end method

.method private onUidForegroundStateChanged(Lcom/android/server/AppStateTracker;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTracker;->isUidInForeground(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/AppStateTracker$Listener;->onUidForeground(IZ)V

    return-void
.end method


# virtual methods
.method public onUidForeground(IZ)V
    .locals 0

    return-void
.end method

.method public stopForegroundServicesForUidPackage(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unblockAlarmsForUid(I)V
    .locals 0

    return-void
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unblockAllUnrestrictedAlarms()V
    .locals 0

    return-void
.end method

.method public updateAllJobs()V
    .locals 0

    return-void
.end method

.method public updateJobsForUid(IZ)V
    .locals 0

    return-void
.end method

.method public updateJobsForUidPackage(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method
