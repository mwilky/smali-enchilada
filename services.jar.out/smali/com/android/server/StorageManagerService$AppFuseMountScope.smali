.class Lcom/android/server/StorageManagerService$AppFuseMountScope;
.super Lcom/android/server/storage/AppFuseBridge$MountScope;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppFuseMountScope"
.end annotation


# instance fields
.field opened:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;III)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/storage/AppFuseBridge$MountScope;-><init>(III)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->uid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget v3, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mountId:I

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IVold;->unmountAppFuse(III)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    :cond_0
    return-void
.end method

.method public open()Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v1

    iget v2, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->uid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iget v4, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mountId:I

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IVold;->mountAppFuse(III)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    const-string v2, "Failed to mount"

    invoke-direct {v1, v2, v0}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
