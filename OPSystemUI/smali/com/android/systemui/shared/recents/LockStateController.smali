.class public Lcom/android/systemui/shared/recents/LockStateController;
.super Ljava/lang/Object;
.source "LockStateController.java"


# static fields
.field private static mReloaded:Z

.field private static sInstance:Lcom/android/systemui/shared/recents/LockStateController;

.field private static time:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TASK_LOCK_LIST_KEY:Ljava/lang/String;

.field private final TASK_LOCK_LIST_KEY_WITH_USERID:Ljava/lang/String;

.field private final TASK_LOCK_STATE:Ljava/lang/String;

.field private final mBGThread:Landroid/os/HandlerThread;

.field private final mBGThreadHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mLockedListWithUserId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedPackageNameListWithUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/shared/recents/LockStateController;->sInstance:Lcom/android/systemui/shared/recents/LockStateController;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/shared/recents/LockStateController;->mReloaded:Z

    sput v0, Lcom/android/systemui/shared/recents/LockStateController;->time:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LockStateController"

    iput-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "tasklockstate"

    iput-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->TASK_LOCK_STATE:Ljava/lang/String;

    const-string/jumbo v0, "task_lock_list"

    iput-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->TASK_LOCK_LIST_KEY:Ljava/lang/String;

    const-string/jumbo v0, "task_lock_list_with_userid"

    iput-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->TASK_LOCK_LIST_KEY_WITH_USERID:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/LockStateController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Recents-LockStateController"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->mBGThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->mBGThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/LockStateController;->mBGThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->mBGThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/LockStateController;->initPackageNameList(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/recents/LockStateController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private appendUserWithBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private appendUserWithoutBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildPkgNameList()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    aget-object v5, v2, v5

    invoke-direct {p0, v5, v3}, Lcom/android/systemui/shared/recents/LockStateController;->appendUserWithoutBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/LockStateController;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/recents/LockStateController;->sInstance:Lcom/android/systemui/shared/recents/LockStateController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/shared/recents/LockStateController;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/LockStateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/shared/recents/LockStateController;->sInstance:Lcom/android/systemui/shared/recents/LockStateController;

    :cond_0
    sget-object v0, Lcom/android/systemui/shared/recents/LockStateController;->sInstance:Lcom/android/systemui/shared/recents/LockStateController;

    return-object v0
.end method

.method private getLockedListFromProvider(I)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/LockStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com_oneplus_systemui_recent_task_locked_bk"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LockStateController"

    const-string/jumbo v3, "writeLockedListToProvider error : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "done"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sput-boolean v3, Lcom/android/systemui/shared/recents/LockStateController;->mReloaded:Z

    return v1

    :cond_1
    const-string v2, "\\}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    nop

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v4, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    aget-object v5, v2, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shared/recents/LockStateController;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "task_lock_list_with_userid"

    iget-object v5, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/shared/recents/LockStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com_oneplus_systemui_recent_task_locked_bk"

    const-string v6, "done"

    invoke-static {v4, v5, v6, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    const-string v5, "LockStateController"

    const-string/jumbo v6, "writeLockedListToProvider error : "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v3
.end method

.method private writeToProvider()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/shared/recents/LockStateController;->writeLockedListToProvider(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getTaskLockState(Ljava/lang/String;I)Z
    .locals 4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/recents/LockStateController;->appendUserWithBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public initPackageNameList(Z)V
    .locals 7

    sget-boolean v0, Lcom/android/systemui/shared/recents/LockStateController;->mReloaded:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shared/recents/LockStateController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "tasklockstate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/recents/LockStateController;->mSp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/LockStateController;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "task_lock_list_with_userid"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedPackageNameListWithUserId:Ljava/util/List;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v1

    const-string v2, "LockStateController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init userId tasklock list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/systemui/shared/recents/LockStateController;->mReloaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/shared/recents/LockStateController;->mLockedListWithUserId:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/android/systemui/shared/recents/LockStateController;->getLockedListFromProvider(I)Z

    move-result v2

    const-string v4, "LockStateController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasbackup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/LockStateController;->buildPkgNameList()V

    :cond_3
    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/LockStateController;->buildPkgNameList()V

    sput-boolean v3, Lcom/android/systemui/shared/recents/LockStateController;->mReloaded:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/LockStateController;->writeToProvider()V

    sget v2, Lcom/android/systemui/shared/recents/LockStateController;->time:I

    add-int/2addr v2, v3

    sput v2, Lcom/android/systemui/shared/recents/LockStateController;->time:I

    sget v2, Lcom/android/systemui/shared/recents/LockStateController;->time:I

    const/4 v4, 0x5

    if-le v2, v4, :cond_5

    sput-boolean v3, Lcom/android/systemui/shared/recents/LockStateController;->mReloaded:Z

    :cond_5
    return-void
.end method

.method public writeLockedListToProvider(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController;->mBGThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/shared/recents/LockStateController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/shared/recents/LockStateController$2;-><init>(Lcom/android/systemui/shared/recents/LockStateController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
