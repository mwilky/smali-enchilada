.class final Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;
.super Landroid/secrecy/ISecrecyService$Stub;
.source "SecrecyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/SecrecyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecrecyServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/secrecy/SecrecyService;


# direct methods
.method private constructor <init>(Lcom/android/server/secrecy/SecrecyService;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-direct {p0}, Landroid/secrecy/ISecrecyService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/SecrecyService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/secrecy/SecrecyService;
    .param p2, "x1"    # Lcom/android/server/secrecy/SecrecyService$1;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;-><init>(Lcom/android/server/secrecy/SecrecyService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 230
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 231
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {v1}, Lcom/android/server/secrecy/SecrecyService;->access$300(Lcom/android/server/secrecy/SecrecyService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump secrecy from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/secrecy/SecrecyService;->access$400(Lcom/android/server/secrecy/SecrecyService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public getSecrecyKey([B)Z
    .locals 1
    .param p1, "key"    # [B

    .line 200
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyService;->access$100(Lcom/android/server/secrecy/SecrecyService;)Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/policy/PolicyManager;->getSecrecyKey([B)Z

    move-result v0

    return v0
.end method

.method public getSecrecyState(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 194
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyService;->access$100(Lcom/android/server/secrecy/SecrecyService;)Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v0

    return v0
.end method

.method public isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .line 224
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {v0, p1}, Lcom/android/server/secrecy/SecrecyService;->access$200(Lcom/android/server/secrecy/SecrecyService;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isSecrecySupport()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v0

    return v0
.end method

.method public registerSecrecyServiceReceiver(Landroid/secrecy/ISecrecyServiceReceiver;)Z
    .locals 3
    .param p1, "receiver"    # Landroid/secrecy/ISecrecyServiceReceiver;

    .line 206
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    invoke-interface {p1}, Landroid/secrecy/ISecrecyServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 210
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/secrecy/SecrecyService$ClientRecord;

    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-direct {v1, v2, v0, p1}, Lcom/android/server/secrecy/SecrecyService$ClientRecord;-><init>(Lcom/android/server/secrecy/SecrecyService;Landroid/os/IBinder;Landroid/secrecy/ISecrecyServiceReceiver;)V

    .line 211
    .local v1, "client":Lcom/android/server/secrecy/SecrecyService$ClientRecord;
    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {v2}, Lcom/android/server/secrecy/SecrecyService;->access$000(Lcom/android/server/secrecy/SecrecyService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const/4 v2, 0x1

    return v2
.end method
