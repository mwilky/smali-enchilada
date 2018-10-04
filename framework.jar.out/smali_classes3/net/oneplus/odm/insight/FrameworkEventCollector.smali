.class public Lnet/oneplus/odm/insight/FrameworkEventCollector;
.super Ljava/lang/Object;
.source "FrameworkEventCollector.java"


# static fields
.field public static final MSG_SUBMIT:I = 0x1

.field private static final MSG_SUBMIT_WITH_APPID:I = 0x2

.field private static final RECORD_INSTALL_UNINSTALL_APPID:Ljava/lang/String; = "7554P2RV0X"

.field private static final TAG:Ljava/lang/String; = "FrameworkEventCollector"

.field private static final TAG_VALUES:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDiagnoseManager:Landroid/os/OPDiagnoseManager;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mNeedRecordLogTagSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mSystemAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "system_server_crash"

    const-string v1, "system_server_anr"

    const-string v2, "system_server_watchdog"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->TAG_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lnet/oneplus/odm/insight/FrameworkEventCollector;->TAG_VALUES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mNeedRecordLogTagSet:Ljava/util/HashSet;

    iput-object p1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initHandler()V

    const-string v0, "opdiagnose"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/OPDiagnoseManager;

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/odm/insight/FrameworkEventCollector;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 0

    iput-object p1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getVersionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "FrameworkEventCollector"

    const-string v3, "PackageManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    return-object v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "FrameworkEventCollector"

    const-string v4, "PackageInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    return-object v3

    :cond_1
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "FrameworkEventCollector"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "FrameworkEventCollector"

    const-string v3, "PackageManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    return-object v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "FrameworkEventCollector"

    const-string v4, "PackageInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    return-object v3

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "FrameworkEventCollector"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private initHandler()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameworkEventCollector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;-><init>(Lnet/oneplus/odm/insight/FrameworkEventCollector;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initSystemAppList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-array v1, v0, [I

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Neither O2 or H2."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private isForeground(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private recordDiagnoseEvent(I)V
    .locals 2

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/OPDiagnoseManager;->addIssueCount(II)Z

    goto :goto_0

    :cond_0
    const-string v0, "FrameworkEventCollector"

    const-string v1, "mDiagnoseManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private recordSystemAppAnr(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "system_app_anr"

    invoke-direct {p0, v0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private recordSystemAppCrash(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordSystemAppCrash: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fg"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->isForeground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "system_app_crash"

    invoke-direct {p0, v1, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private recordThirdPartyAnr(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "anr"

    invoke-direct {p0, v0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private recordThirdpatyCrash(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordThirdpartyCrash: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fg"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->isForeground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crash"

    invoke-direct {p0, v1, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private recordWatchDog(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/mdm/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FrameworkEventCollector"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private submit(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string v1, "ro"

    invoke-static {}, Lnet/oneplus/odm/common/Util;->isRooted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hashmap"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private submit(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hashmap"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "appId"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public recordAppAnr(Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordSystemAppAnr: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initSystemAppList()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fg"

    xor-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordSystemAppAnr(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordThirdPartyAnr(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public recordAppCrash(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordSystemAppCrash: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initSystemAppList()V

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordSystemAppCrash(Ljava/lang/String;)V

    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_APP:I

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordThirdpatyCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public recordInstallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install time is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: package version is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez p5, :cond_3

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: package installer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ts"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pn"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pvc"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iug"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "src"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "install"

    const-string v2, "7554P2RV0X"

    invoke-direct {p0, v1, v0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public recordSystemError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mNeedRecordLogTagSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "system_server_watchdog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordWatchDog(Ljava/lang/String;)V

    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_BLOCK_SYSTEM_SERVER:I

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    return-void

    :cond_0
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_SYSTEM_SERVER:I

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public recordUninstallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install time is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: package version is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ts"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pn"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pvc"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uninstall"

    const-string v2, "7554P2RV0X"

    invoke-direct {p0, v1, v0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
