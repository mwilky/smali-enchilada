.class public Lcom/android/server/storage/AppFuseBridge;
.super Ljava/lang/Object;
.source "AppFuseBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/AppFuseBridge$MountScope;
    }
.end annotation


# static fields
.field private static final APPFUSE_MOUNT_NAME_TEMPLATE:Ljava/lang/String; = "/mnt/appfuse/%d_%d"

.field public static final TAG:Ljava/lang/String; = "AppFuseBridge"


# instance fields
.field private mNativeLoop:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mScopes:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/storage/AppFuseBridge$MountScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    return-void
.end method

.method private native native_add_bridge(JII)I
.end method

.method private native native_delete(J)V
.end method

.method private native native_new()J
.end method

.method private native native_start_loop(J)V
.end method

.method private declared-synchronized onClosed(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->setMountResultLocked(Z)V

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v1, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onMount(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->setMountResultLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {p1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->open()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/storage/AppFuseBridge;->native_add_bridge(JII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v1

    :cond_2
    new-instance v0, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public openFile(IIII)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    if-eqz v0, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->pid:I

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/storage/AppFuseBridge$MountScope;->waitForMount()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountPoint:Ljava/io/File;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, p4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    new-instance v3, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v3, p2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v3

    :cond_0
    new-instance v2, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v2, p2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "PID does not match"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_2
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v1, p2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_start_loop(J)V

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_delete(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
