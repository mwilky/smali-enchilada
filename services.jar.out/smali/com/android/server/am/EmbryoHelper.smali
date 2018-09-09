.class Lcom/android/server/am/EmbryoHelper;
.super Ljava/lang/Object;
.source "EmbryoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmbryoHelper"

.field private static sInstance:Lcom/android/server/am/EmbryoHelper;


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mCompInfoForPackageMethod:Ljava/lang/reflect/Method;

.field private mGetCommonServicesMethod:Ljava/lang/reflect/Method;

.field private mPms:Landroid/content/pm/IPackageManager;

.field private mStartProcessMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mStartProcessMethod:Ljava/lang/reflect/Method;

    .line 44
    iput-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mGetCommonServicesMethod:Ljava/lang/reflect/Method;

    .line 45
    iput-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mCompInfoForPackageMethod:Ljava/lang/reflect/Method;

    .line 54
    iput-object p1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 55
    sput-object p0, Lcom/android/server/am/EmbryoHelper;->sInstance:Lcom/android/server/am/EmbryoHelper;

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/EmbryoHelper;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/server/am/EmbryoHelper;->sInstance:Lcom/android/server/am/EmbryoHelper;

    return-object v0
.end method


# virtual methods
.method public checkIfNewPackageIsLaunchable(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 159
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/EmbryoHelper;->checkIfPackageIsLaunchable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkIfPackageIsLaunchable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 167
    const-string v0, "EmbryoHelper"

    const-string v2, "PM not ready."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v1

    .line 171
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    .line 177
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 176
    invoke-interface {v2, v0, v3, v1, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 178
    .local v2, "apps":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v4, v3, :cond_2

    move v1, v3

    nop

    :cond_2
    return v1

    .line 179
    .end local v2    # "apps":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "EmbryoHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfPackageIsLaunchable failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public checkIfProcessExist(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 186
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 187
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 188
    .local v1, "pr":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 189
    .end local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 5
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 116
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mCompInfoForPackageMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 117
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmbryoHelper"

    const-string v2, "compatibilityInfoForPackageLocked failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAMS()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 142
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 146
    const-string v0, "EmbryoHelper"

    const-string v2, "PM not ready."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v1

    .line 151
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmbryoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationInfo failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public getCommonServicesLocked(Z)Landroid/util/ArrayMap;
    .locals 6
    .param p1, "isolated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 105
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mGetCommonServicesMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 106
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmbryoHelper"

    const-string v2, "getCommonServicesLocked failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 194
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 195
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method initEnvironment()Z
    .locals 7

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "startProcessLocked"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/android/server/am/ProcessRecord;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mStartProcessMethod:Ljava/lang/reflect/Method;

    .line 62
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mStartProcessMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 63
    const-string v1, "EmbryoHelper"

    const-string v2, "Embryo initEnvironment failed. step 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mStartProcessMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 68
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCommonServicesLocked"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mGetCommonServicesMethod:Ljava/lang/reflect/Method;

    .line 70
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mGetCommonServicesMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 71
    const-string v1, "EmbryoHelper"

    const-string v2, "Embryo initEnvironment failed. step 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mGetCommonServicesMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 76
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "compatibilityInfoForPackageLocked"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/pm/ApplicationInfo;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mCompInfoForPackageMethod:Ljava/lang/reflect/Method;

    .line 79
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mCompInfoForPackageMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 80
    const-string v1, "EmbryoHelper"

    const-string v2, "Embryo initEnvironment failed. step 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return v0

    .line 84
    :cond_2
    return v5

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EmbryoHelper"

    const-string v3, "Embryo initEnvironment failed. final"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    return v0
.end method

.method public isPackageAvailable(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 125
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 129
    const-string v0, "EmbryoHelper"

    const-string v2, "PM not ready."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v1

    .line 134
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmbryoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPackageAvailable failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public isStartProcAsync()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    return v0
.end method

.method public isValidUserId(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 200
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 201
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;
    .param p3, "hostingNameStr"    # Ljava/lang/String;

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 94
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mStartProcessMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmbryoHelper"

    const-string/jumbo v2, "startProcessLocked failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
