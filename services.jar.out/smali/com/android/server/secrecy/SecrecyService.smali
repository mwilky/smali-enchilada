.class public Lcom/android/server/secrecy/SecrecyService;
.super Lcom/android/server/SystemService;
.source "SecrecyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/SecrecyService$LocalService;,
        Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;,
        Lcom/android/server/secrecy/SecrecyService$ClientRecord;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final SECRECY_SUPPORT_FEATURE:Ljava/lang/String; = "oem.secrecy.support"

.field public static final TAG:Ljava/lang/String; = "SecrecyService"


# instance fields
.field private mActivityEncryptWork:Lcom/android/server/secrecy/work/ActivityEncryptWork;

.field private final mClientRecordMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/secrecy/SecrecyService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLogEncryptWork:Lcom/android/server/secrecy/work/LogEncryptWork;

.field private mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

.field private mSecrecySupport:Z

.field private final mServiceThread:Lcom/android/server/ServiceThread;

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mClientRecordMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "SecrecyService"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mServiceThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.secrecy.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/secrecy/SecrecyService;->setSecrecySupport(Z)V

    invoke-direct {p0}, Lcom/android/server/secrecy/SecrecyService;->initPolicy()V

    invoke-direct {p0}, Lcom/android/server/secrecy/SecrecyService;->initWorks()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/secrecy/SecrecyService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mClientRecordMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/secrecy/SecrecyService;)Lcom/android/server/secrecy/policy/PolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/secrecy/SecrecyService;Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/secrecy/SecrecyService;->isInActivityConfig(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/secrecy/SecrecyService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/secrecy/SecrecyService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/secrecy/SecrecyService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, p3

    if-ge v1, v2, :cond_d

    aget-object v2, p3, v1

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "secrecy service dump options:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  [-h] [cmd] ..."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  cmd may be one of:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    l[log]: dynamically adjust secrecy log "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "-import_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "This device do not support secrecy dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    array-length v4, p3

    if-ge v1, v4, :cond_4

    aget-object v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v4}, Lcom/android/server/secrecy/policy/PolicyManager;->getDecryptTool()Lcom/android/server/secrecy/policy/DecryptTool;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lcom/android/server/secrecy/policy/DecryptTool;->verifyKey(Ljava/io/PrintWriter;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v5, v3}, Lcom/android/server/secrecy/policy/PolicyManager;->importRC4Key(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "ERROR: The key contains NOT hex."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v4, "ERROR: Key argument is missing."

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v3, "-config"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "This device do not support secrecy dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/lit8 v3, v1, 0x1

    array-length v4, p3

    if-ge v3, v4, :cond_7

    aget-object v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v5}, Lcom/android/server/secrecy/policy/PolicyManager;->getDecryptTool()Lcom/android/server/secrecy/policy/DecryptTool;

    move-result-object v5

    invoke-virtual {v5, p2, v3, v4}, Lcom/android/server/secrecy/policy/DecryptTool;->config(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    array-length v3, p3

    if-ge v1, v3, :cond_8

    aget-object v3, p3, v1

    iget-object v4, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v4}, Lcom/android/server/secrecy/policy/PolicyManager;->getDecryptTool()Lcom/android/server/secrecy/policy/DecryptTool;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lcom/android/server/secrecy/policy/DecryptTool;->config(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v3, "ERROR: Config or Signature argument is missing."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_9
    const-string v3, "-imei"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "This device do not support secrecy dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v3, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v3}, Lcom/android/server/secrecy/policy/PolicyManager;->getImei()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMEI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string v3, "-status"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/secrecy/policy/PolicyManager;->status(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_10

    aget-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v3, "log"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "l"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_3

    :cond_e
    const-string v3, "debug_switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  all="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/secrecy/SecrecyService;->dynamicallyConfigLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "This device do not support secrecy dump"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSystemReady       = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/secrecy/SecrecyService;->mSystemReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSecrecySupport       = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/secrecy/SecrecyService;->mSecrecySupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG    = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/secrecy/policy/util/LogUtil;->getLevelString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const-string v3, ""

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/secrecy/policy/PolicyManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyService;->mActivityEncryptWork:Lcom/android/server/secrecy/work/ActivityEncryptWork;

    const-string v3, ""

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/secrecy/work/ActivityEncryptWork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_12
    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyService;->mLogEncryptWork:Lcom/android/server/secrecy/work/LogEncryptWork;

    const-string v3, ""

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/secrecy/work/LogEncryptWork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method private initPolicy()V
    .locals 3

    invoke-static {}, Lcom/android/server/secrecy/policy/PolicyManager;->getInstance()Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/secrecy/policy/PolicyManager;->setSecrecyService(Landroid/content/Context;Lcom/android/server/secrecy/SecrecyService;Landroid/os/Looper;)V

    return-void
.end method

.method private initWorks()V
    .locals 2

    new-instance v0, Lcom/android/server/secrecy/work/ActivityEncryptWork;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/secrecy/work/ActivityEncryptWork;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mActivityEncryptWork:Lcom/android/server/secrecy/work/ActivityEncryptWork;

    new-instance v0, Lcom/android/server/secrecy/work/LogEncryptWork;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/secrecy/work/LogEncryptWork;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mLogEncryptWork:Lcom/android/server/secrecy/work/LogEncryptWork;

    return-void
.end method

.method private isInActivityConfig(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mActivityEncryptWork:Lcom/android/server/secrecy/work/ActivityEncryptWork;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/work/ActivityEncryptWork;->preWork(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mActivityEncryptWork:Lcom/android/server/secrecy/work/ActivityEncryptWork;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/work/ActivityEncryptWork;->doWork(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected dynamicallyConfigLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigLogTag, args.length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigLogTag, args["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const-string v2, "********** Invalid argument! Get detail help as bellow: **********"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/SecrecyService;->logoutTagConfigHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    aget-object v0, p2, v2

    const-string v2, "1"

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigLogTag, tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "all"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v1, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    invoke-static {v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->dynamicallyConfigLog(Z)V

    :cond_2
    return-void
.end method

.method public isSecrecySupportLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/secrecy/SecrecyService;->mSecrecySupport:Z

    return v0
.end method

.method protected logoutTagConfigHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "********************** Help begin:**********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "1. open all log in SecrecyService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys secrecy log all 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public notifySecrecyState(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mClientRecordMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/secrecy/SecrecyService$ClientRecord;

    :try_start_0
    iget-object v2, v1, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->mReceiver:Landroid/secrecy/ISecrecyServiceReceiver;

    invoke-interface {v2, p1}, Landroid/secrecy/ISecrecyServiceReceiver;->onSecrecyStateChanged(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v1}, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->binderDied()V

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "SecrecyService"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "secrecy"

    new-instance v1, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;-><init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/SecrecyService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/SecrecyService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/secrecy/SecrecyManagerInternal;

    new-instance v1, Lcom/android/server/secrecy/SecrecyService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/secrecy/SecrecyService$LocalService;-><init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/SecrecyService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/SecrecyService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setSecrecySupport(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/secrecy/SecrecyService;->mSecrecySupport:Z

    const-string v0, "SecrecyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecrecySupport mSecrecySupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/SecrecyService;->mSecrecySupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public systemReady()V
    .locals 2

    const-string v0, "SecrecyService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/secrecy/SecrecyService;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    iget-boolean v1, p0, Lcom/android/server/secrecy/SecrecyService;->mSecrecySupport:Z

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->systemReady(Z)V

    return-void
.end method
