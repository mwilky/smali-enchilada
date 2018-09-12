.class public Lcom/oneplus/aod/ForegroundServiceControllerImpl;
.super Ljava/lang/Object;
.source "ForegroundServiceControllerImpl.java"

# interfaces
.implements Lcom/oneplus/aod/ForegroundServiceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final FG_SERVICE_GRACE_MILLIS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "FgServiceController"


# instance fields
.field private final mMutex:Ljava/lang/Object;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    .line 47
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;I)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "importance"    # I

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 61
    return-void
.end method

.method public isDungeonNeededForUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 51
    iget-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;

    .line 53
    .local v1, "services":Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 54
    :cond_0
    invoke-virtual {v1}, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->isDungeonNeeded()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 55
    .end local v1    # "services":Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 113
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 65
    iget-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;

    .line 67
    .local v1, "userServices":Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 69
    const-string v3, "FgServiceController"

    const-string v4, "user %d with no known notifications got removeNotification for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object p1, v5, v2

    .line 69
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    monitor-exit v0

    return v7

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->setRunningServices([Ljava/lang/String;J)V

    .line 79
    monitor-exit v0

    return v2

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->removeNotification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 84
    .end local v1    # "userServices":Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 165
    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;I)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "newImportance"    # I

    .line 89
    iget-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;

    .line 91
    .local v1, "userServices":Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;
    if-nez v1, :cond_0

    .line 92
    new-instance v2, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;-><init>(Lcom/oneplus/aod/ForegroundServiceControllerImpl$1;)V

    move-object v1, v2

    .line 93
    iget-object v2, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 97
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 98
    const-string v3, "android.foregroundApps"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "svcs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->setRunningServices([Ljava/lang/String;J)V

    .line 101
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "svcs":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->removeNotification(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-le p2, v2, :cond_3

    .line 105
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->addNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v1    # "userServices":Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;
    :cond_3
    :goto_0
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
