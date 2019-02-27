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

    .line 38
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
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lnet/oneplus/odm/insight/FrameworkEventCollector;->TAG_VALUES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mNeedRecordLogTagSet:Ljava/util/HashSet;

    .line 51
    iput-object p1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initHandler()V

    .line 53
    const-string v0, "opdiagnose"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/OPDiagnoseManager;

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 30
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/odm/insight/FrameworkEventCollector;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;
    .param p1, "x1"    # Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 30
    iput-object p1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 30
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getVersionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 335
    const-string v0, ""

    .line 336
    .local v0, "version":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 337
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 338
    const-string v2, "FrameworkEventCollector"

    const-string v3, "PackageManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v2, ""

    return-object v2

    .line 342
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 343
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 344
    const-string v3, "FrameworkEventCollector"

    const-string v4, "PackageInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v3, ""

    return-object v3

    .line 347
    :cond_1
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 350
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "FrameworkEventCollector"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v0
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 315
    const-string v0, ""

    .line 316
    .local v0, "version":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 317
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 318
    const-string v2, "FrameworkEventCollector"

    const-string v3, "PackageManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v2, ""

    return-object v2

    .line 322
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 323
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 324
    const-string v3, "FrameworkEventCollector"

    const-string v4, "PackageInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v3, ""

    return-object v3

    .line 327
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 330
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 328
    :catch_0
    move-exception v2

    .line 329
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "FrameworkEventCollector"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v0
.end method

.method private initHandler()V
    .locals 2

    .line 262
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameworkEventCollector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 263
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 264
    new-instance v0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;-><init>(Lnet/oneplus/odm/insight/FrameworkEventCollector;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    .line 294
    return-void
.end method

.method private initSystemAppList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 298
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
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

    .line 300
    :cond_0
    new-array v1, v0, [I

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    goto :goto_0

    .line 303
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Neither O2 or H2."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_2
    :goto_0
    return-void
.end method

.method private isForeground(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 310
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 311
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
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
    .param p1, "event"    # I

    .line 136
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/OPDiagnoseManager;->addIssueCount(II)Z

    goto :goto_0

    .line 139
    :cond_0
    const-string v0, "FrameworkEventCollector"

    const-string v1, "mDiagnoseManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
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

    .line 219
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "system_app_anr"

    invoke-direct {p0, v0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private recordSystemAppCrash(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 161
    if-nez p1, :cond_0

    .line 162
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordSystemAppCrash: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 166
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "fg"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->isForeground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "system_app_crash"

    invoke-direct {p0, v1, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
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

    .line 227
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "anr"

    invoke-direct {p0, v0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private recordThirdpatyCrash(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 144
    if-nez p1, :cond_0

    .line 145
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordThirdpartyCrash: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 149
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "fg"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->isForeground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "crash"

    invoke-direct {p0, v1, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private recordWatchDog(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/mdm/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "watchDogFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "FrameworkEventCollector"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private submit(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
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

    .line 234
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 235
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    if-eqz p2, :cond_0

    .line 237
    const-string v1, "ro"

    invoke-static {}, Lnet/oneplus/odm/common/Util;->isRooted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "fs"

    const-string v2, "vold.datafs.type"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "hashmap"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 243
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method

.method private submit(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
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

    .line 249
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 250
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    if-eqz p2, :cond_0

    .line 252
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "hashmap"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 254
    const-string v2, "appId"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 257
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    return-void
.end method


# virtual methods
.method public recordAppAnr(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isBgAnr"    # Z

    .line 196
    if-nez p1, :cond_0

    .line 197
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordSystemAppAnr: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 201
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initSystemAppList()V

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "fg"

    xor-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordSystemAppAnr(Ljava/util/HashMap;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordThirdPartyAnr(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public recordAppCrash(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 178
    if-nez p1, :cond_0

    .line 179
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordSystemAppCrash: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 183
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initSystemAppList()V

    .line 184
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordSystemAppCrash(Ljava/lang/String;)V

    .line 186
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_APP:I

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordThirdpatyCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public recordInstallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "ts"    # Ljava/lang/String;
    .param p2, "pn"    # Ljava/lang/String;
    .param p3, "pvc"    # Ljava/lang/String;
    .param p4, "iug"    # Z
    .param p5, "src"    # Ljava/lang/String;

    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install time is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 62
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 65
    :cond_1
    if-nez p3, :cond_2

    .line 66
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: package version is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 69
    :cond_2
    if-nez p5, :cond_3

    .line 70
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: package installer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 74
    :cond_3
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ts"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "pn"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "pvc"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "iug"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "src"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "install"

    const-string v2, "7554P2RV0X"

    invoke-direct {p0, v1, v0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public recordSystemError(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mNeedRecordLogTagSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "system_server_watchdog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordWatchDog(Ljava/lang/String;)V

    .line 115
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_BLOCK_SYSTEM_SERVER:I

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    .line 116
    return-void

    .line 118
    :cond_0
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_SYSTEM_SERVER:I

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 122
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public recordUninstallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ts"    # Ljava/lang/String;
    .param p2, "pn"    # Ljava/lang/String;
    .param p3, "pvc"    # Ljava/lang/String;

    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install time is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 95
    :cond_1
    if-nez p3, :cond_2

    .line 96
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: package version is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 100
    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ts"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "pn"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "pvc"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "uninstall"

    const-string v2, "7554P2RV0X"

    invoke-direct {p0, v1, v0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
