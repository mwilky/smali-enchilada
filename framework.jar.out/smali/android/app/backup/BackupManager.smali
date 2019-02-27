.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;,
        Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;,
        Landroid/app/backup/BackupManager$BackupObserverWrapper;
    }
.end annotation


# static fields
.field public static final ERROR_AGENT_FAILURE:I = -0x3eb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ERROR_BACKUP_CANCELLED:I = -0x7d3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ERROR_BACKUP_NOT_ALLOWED:I = -0x7d1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ERROR_PACKAGE_NOT_FOUND:I = -0x7d2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ERROR_TRANSPORT_ABORTED:I = -0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ERROR_TRANSPORT_INVALID:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ERROR_TRANSPORT_PACKAGE_REJECTED:I = -0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ERROR_TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ERROR_TRANSPORT_UNAVAILABLE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_BACKUP_SERVICES_AVAILABLE:Ljava/lang/String; = "backup_services_available"

.field public static final FLAG_NON_INCREMENTAL_BACKUP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field private static sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static checkServiceBinder()V
    .locals 1

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    :cond_0
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public backupNow()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public beginRestoreSession()Landroid/app/backup/RestoreSession;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/app/backup/RestoreSession;

    iget-object v3, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BackupManager"

    const-string v3, "beginRestoreSession() couldn\'t connect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public cancelBackups()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->cancelBackups()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "cancelBackups() couldn\'t connect."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public dataChanged()V
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "getAvailableRestoreToken() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "getConfigurationIntent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "getCurrentTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "getDataManagementIntent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "getDataManagementLabel() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "getDestinationString() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "isAppEligibleForBackup(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBackupEnabled()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBackupServiceActive(Landroid/os/UserHandle;)Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupServiceActive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string/jumbo v2, "listAllTransports() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/backup/BackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    nop

    move-object v1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;

    invoke-direct {v0, p0, p3}, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/app/backup/BackupManagerMonitor;)V

    :goto_1
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v1, v0, p4}, Landroid/app/backup/IBackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string/jumbo v2, "requestBackup() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupManager;->requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "BackupManager"

    const-string/jumbo v1, "requestRestore(): Since Android P app can no longer request restoring of its backup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string/jumbo v2, "selectBackupTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public selectBackupTransport(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/SelectBackupTransportCallback;)V

    :goto_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, v0}, Landroid/app/backup/IBackupManager;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string/jumbo v2, "selectBackupTransportAsync() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public setAutoRestore(Z)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string/jumbo v2, "setAutoRestore() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setBackupEnabled(Z)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string/jumbo v2, "setBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/app/backup/IBackupManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManager"

    const-string v2, "describeTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
