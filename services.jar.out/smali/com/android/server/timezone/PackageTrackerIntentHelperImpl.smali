.class final Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;
.super Ljava/lang/Object;
.source "PackageTrackerIntentHelperImpl.java"

# interfaces
.implements Lcom/android/server/timezone/PackageTrackerIntentHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "timezone.PackageTrackerIntentHelperImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUpdaterAppPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/timezone/PackageTracker;)V
    .locals 7

    iput-object p1, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mUpdaterAppPackageName:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;

    const/4 v1, 0x0

    invoke-direct {v2, p3, v1}, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;-><init>(Lcom/android/server/timezone/PackageTracker;Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$1;)V

    iget-object v1, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public declared-synchronized scheduleReliabilityTrigger(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/timezone/TimeZoneUpdateIdler;->schedule(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendTriggerUpdateCheck(Lcom/android/server/timezone/CheckToken;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mUpdaterAppPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/timezone/CheckToken;->toByteArray()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/timezone/RulesUpdaterContract;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;[B)V

    invoke-virtual {p1}, Lcom/android/server/timezone/CheckToken;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneTriggerCheck(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized unscheduleReliabilityTrigger()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/timezone/TimeZoneUpdateIdler;->unschedule(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
