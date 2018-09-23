.class Lcom/android/server/pm/PackageManagerService$11;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installerPackage:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$installerPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v4, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_1

    const-string v3, "PackageManager"

    const-string/jumbo v4, "notifyFirstLaunch # run # pkg is null. error."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v0

    :goto_1
    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    aget v5, v5, v3

    if-ne v4, v5, :cond_3

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v0, :cond_2

    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " being restored so deferring FIRST_LAUNCH"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v1, :cond_6

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sending normal FIRST_LAUNCH"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/PackageManagerService;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3900()[I

    move-result-object v2

    goto :goto_3

    :cond_7
    new-array v2, v3, [I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    aput v4, v2, v0

    :goto_3
    if-eqz v1, :cond_8

    new-array v3, v3, [I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    aput v4, v3, v0

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3900()[I

    move-result-object v3

    :goto_4
    move-object v0, v3

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$11;->val$installerPackage:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[I[I)V

    return-void
.end method
