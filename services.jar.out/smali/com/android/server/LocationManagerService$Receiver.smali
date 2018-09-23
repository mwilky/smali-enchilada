.class final Lcom/android/server/LocationManagerService$Receiver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mAllowedResolutionLevel:I

.field final mHideFromAppOps:Z

.field final mIdentity:Lcom/android/server/LocationManagerService$Identity;

.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/location/ILocationListener;

.field mOpHighPowerMonitoring:Z

.field mOpMonitoring:Z

.field mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    :goto_0
    invoke-static {p1, p4, p5}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    new-instance v0, Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {v0, p5, p4, p6}, Lcom/android/server/LocationManagerService$Identity;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    if-eqz p7, :cond_1

    invoke-virtual {p7}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p7, 0x0

    :cond_1
    iput-object p7, p0, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    iput-boolean p8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object p1

    const-string v1, "*location*"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p7, :cond_2

    new-instance p1, Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v0, v0, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    move-object p7, p1

    :cond_2
    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method private decrementPendingBroadcastsLocked()V
    .locals 1

    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .locals 2

    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private updateMonitoring(ZZI)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v2, v2, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v2, v2, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v2, v2, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationManagerService"

    const-string v1, "Location listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1, p0}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v2}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "location"

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v5, v6}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    move-object v5, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    nop

    :goto_0
    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v2

    return v1
.end method

.method public callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    return v2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "providerEnabled"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v7, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v6, v7}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    move-object v6, v1

    move-object v7, p0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    nop

    :goto_2
    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    return v2
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v5, v6}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    move-object v5, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    nop

    :goto_0
    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v2

    return v1
.end method

.method public clearPendingBroadcastsLocked()V
    .locals 1

    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getListener()Landroid/location/ILocationListener;
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingIntent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reciever["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_0

    const-string v1, " listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateMonitoring(Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v5, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    iget v6, v5, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    iget-object v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    goto :goto_0

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    const/16 v3, 0x29

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    const/16 v4, 0x2a

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    if-eq v3, v2, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4
    return-void
.end method
