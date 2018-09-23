.class public abstract Lcom/android/server/storage/AppFuseBridge$MountScope;
.super Ljava/lang/Object;
.source "AppFuseBridge.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/AppFuseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MountScope"
.end annotation


# instance fields
.field private mMountResult:Z

.field private final mMounted:Ljava/util/concurrent/CountDownLatch;

.field public final mountId:I

.field public final mountPoint:Ljava/io/File;

.field public final pid:I

.field public final uid:I


# direct methods
.method public constructor <init>(III)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    iput p1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    iput p2, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->pid:I

    iput p3, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/appfuse/%d_%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountPoint:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abstract open()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation
.end method

.method setMountResultLocked(Z)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AppFuseBridge.this"
    .end annotation

    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method waitForMount()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-boolean v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    return v0
.end method
