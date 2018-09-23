.class Lcom/android/server/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# static fields
.field static final sBinder:Landroid/os/Binder;


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/AppOpsService;

.field mToken:Landroid/os/IBinder;

.field mode:I

.field modeStr:Ljava/lang/String;

.field nonpackageUid:I

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iput-object p2, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    sget-object v1, Lcom/android/server/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    return v0
.end method

.method static strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 2

    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method private static strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {p0}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_3

    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    nop

    :cond_3
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_4

    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-gez v0, :cond_7

    return v1

    :cond_6
    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_3

    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v2, :cond_2

    iput-object v3, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_0

    iput-object v3, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    nop

    :cond_3
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v2, :cond_4

    const-string v0, "Error: Package name not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_4
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_5

    if-eqz p1, :cond_5

    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_5
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v2, :cond_7

    return v3

    :cond_6
    iput v3, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    :cond_7
    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    if-ne v2, v0, :cond_8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    :cond_8
    iput v3, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    const/4 v2, 0x0

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_e

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x75

    if-ne v0, v5, :cond_e

    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    move v0, v4

    :goto_2
    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-ge v0, v5, :cond_9

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_9

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v6, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    if-le v0, v4, :cond_e

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_e

    iget-object v5, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v8, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    add-int/lit8 v0, v0, 0x1

    move v9, v0

    :goto_3
    :try_start_2
    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_a

    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_a

    iget-object v10, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v6, :cond_a

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    if-le v9, v0, :cond_d

    iget-object v6, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x61

    if-ne v8, v10, :cond_b

    add-int/lit16 v10, v7, 0x2710

    invoke-static {v5, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    goto :goto_4

    :cond_b
    const/16 v10, 0x73

    if-ne v8, v10, :cond_c

    invoke-static {v5, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_c
    :goto_4
    goto :goto_5

    :catch_1
    move-exception v7

    :cond_d
    :goto_5
    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v5

    move v9, v0

    :cond_e
    :goto_6
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    if-eq v0, v3, :cond_f

    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/AppOpsService;->access$400(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_10

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    iget v5, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-interface {v0, v1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    :cond_10
    iget v0, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: No UID for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_11
    :goto_7
    return v2
.end method
