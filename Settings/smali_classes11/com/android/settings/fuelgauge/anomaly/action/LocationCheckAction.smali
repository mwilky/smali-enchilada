.class public Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;
.super Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;
.source "LocationCheckAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationCheckAction"


# instance fields
.field private final mRuntimePermissionPresenter:Landroid/content/pm/permission/RuntimePermissionPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/content/pm/permission/RuntimePermissionPresenter;->getInstance(Landroid/content/Context;)Landroid/content/pm/permission/RuntimePermissionPresenter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;-><init>(Landroid/content/Context;Landroid/content/pm/permission/RuntimePermissionPresenter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/permission/RuntimePermissionPresenter;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->mRuntimePermissionPresenter:Landroid/content/pm/permission/RuntimePermissionPresenter;

    const/16 v0, 0x3fd

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->mActionMetricKey:I

    return-void
.end method

.method private isPermissionGranted(Lcom/android/settings/fuelgauge/anomaly/Anomaly;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    iget-object v2, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v0, p2, v3, v1, v2}, Landroid/support/v4/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->mRuntimePermissionPresenter:Landroid/content/pm/permission/RuntimePermissionPresenter;

    iget-object v1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->mRuntimePermissionPresenter:Landroid/content/pm/permission/RuntimePermissionPresenter;

    iget-object v1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->isPermissionGranted(Lcom/android/settings/fuelgauge/anomaly/Anomaly;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->isPermissionGranted(Lcom/android/settings/fuelgauge/anomaly/Anomaly;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
