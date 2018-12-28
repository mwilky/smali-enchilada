.class Lcom/android/server/preload/OneplusAppPreload$FreezeTask;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreezeTask"
.end annotation


# instance fields
.field private mCreateTime:J

.field private mPackage:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/OneplusAppPreload;ILjava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->mUid:I

    iput-object p3, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->mPackage:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->mCreateTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->access$2100(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-wide v1, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->mCreateTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->mCreateTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->mUid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_1

    :try_start_0
    const-string/jumbo v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->mPackage:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$400(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->mPackage:Ljava/lang/String;

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->makePackageIdle(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$500(Lcom/android/server/preload/OneplusAppPreload;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/preload/OneplusAppPreload;->clearAppAlarms(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$500(Lcom/android/server/preload/OneplusAppPreload;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/preload/OneplusAppPreload;->clearAppWakeLocks(Landroid/content/Context;Ljava/util/ArrayList;)V

    const-string v2, "OneplusAppPreload"

    const-string v3, "Finish FreezeTask"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_1
    const-string v1, "OneplusAppPreload"

    const-string/jumbo v2, "package is not in preload stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
