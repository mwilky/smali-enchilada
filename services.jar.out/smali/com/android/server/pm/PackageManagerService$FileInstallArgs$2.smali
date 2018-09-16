.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs$2;
.super Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCopyApkTheme(Lcom/android/internal/app/IMediaContainerService;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    .line 16796
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$2;->this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    invoke-direct {p0}, Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16800
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$2;->this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->access$5200(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16801
    .local v0, "file":Ljava/io/File;
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating theme package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16802
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 16803
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 16804
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 16806
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->O_RDWR:I

    sget v4, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v3, v4

    const/16 v4, 0x1a4

    invoke-static {v2, v3, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 16808
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 16809
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 16810
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "parent":Ljava/io/File;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 16811
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
