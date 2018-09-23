.class Lcom/android/server/StorageManagerService$MountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    iput-object p3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    return-void
.end method


# virtual methods
.method public handleExecute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/StorageManagerService$ObbException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$4600(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, v0, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    invoke-static {v1, v2, v3}, Lcom/android/server/StorageManagerService;->access$4700(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$4200(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$4300(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v3, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "none"

    const-string v3, ""

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v5, v0, Landroid/content/res/ObbInfo;->salt:[B

    const/16 v6, 0x400

    const/16 v7, 0x80

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v1, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    new-instance v5, Ljava/math/BigInteger;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>([B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    move-object v3, v6

    nop

    move-object v1, v6

    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v6, v6, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v7, v7, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    invoke-interface {v5, v6, v3, v7}, Landroid/os/IVold;->createObb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v5, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/os/IVold;->mount(Ljava/lang/String;II)V

    iget-object v4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$4200(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v5, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v6, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-static {v5, v6}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x1

    :try_start_4
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService$MountObbAction;->notifyObbStateChange(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    nop

    return-void

    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v4

    new-instance v5, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v6, 0x15

    invoke-direct {v5, v6, v4}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v1

    new-instance v3, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v1}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    :cond_1
    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v3, 0x18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    :cond_2
    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const/16 v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Denied attempt to mount OBB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " which is owned by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
