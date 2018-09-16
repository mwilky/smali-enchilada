.class Lcom/android/server/pm/PackageManagerService$28;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackage(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 24093
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$28;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$28;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$28;->val$volumeUuid:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$28;->val$moveId:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$28;->val$callingUid:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$28;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 24097
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$28;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$28;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$28;->val$volumeUuid:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$28;->val$moveId:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$28;->val$callingUid:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$28;->val$user:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$7000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24101
    goto :goto_0

    .line 24098
    :catch_0
    move-exception v0

    .line 24099
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$28;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24100
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$28;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$28;->val$moveId:I

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7200(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 24102
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_0
    return-void
.end method
