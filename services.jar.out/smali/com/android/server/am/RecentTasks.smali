.class Lcom/android/server/am/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;,
        Lcom/android/server/am/RecentTasks$Callbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field private static final MOVE_AFFILIATED_TASKS_TO_FRONT:Z = false

.field private static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field private static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field private static final RECENT_TASK_LOCKED_LIST:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TASK_ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIMMED:Z = true

.field private static final URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;


# instance fields
.field private mActiveTasksSessionDurationMs:J

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RecentTasks$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mGlobalMaxNumTasks:I

.field private mHasVisibleRecentTasks:Z

.field private mLockedTasksContentObserver:Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;

.field private mLockedTasksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxNumVisibleTasks:I

.field private mMinNumVisibleTasks:I

.field private mNumObservedLockedTasks:I

.field private final mPersistedTaskIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsComponent:Landroid/content/ComponentName;

.field private mRecentsUid:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTaskPersister:Lcom/android/server/am/TaskPersister;

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

.field private final mUserController:Lcom/android/server/am/UserController;

.field private final mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;->INSTANCE:Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;

    sput-object v0, Lcom/android/server/am/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    const-string v0, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/RecentTasks;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    new-instance v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    new-instance v2, Lcom/android/server/am/TaskPersister;

    invoke-direct {v2, v0, p2, p1, p0}, Lcom/android/server/am/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    const v2, 0x112007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    new-instance v2, Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;-><init>(Lcom/android/server/am/RecentTasks;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksContentObserver:Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v3, Lcom/android/server/am/RecentTasks$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/RecentTasks$1;-><init>(Lcom/android/server/am/RecentTasks;)V

    const-class v4, Lcom/android/server/am/RecentTasks;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskPersister;Lcom/android/server/am/UserController;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    new-instance v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/RecentTasks;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->updateLockedTaskInfo()V

    return-void
.end method

.method private canAddTaskWithoutTrim(Lcom/android/server/am/TaskRecord;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget v7, v1, Lcom/android/server/am/TaskRecord;->maxRecents:I

    sub-int/2addr v7, v5

    move v8, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_e

    iget-object v9, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    if-eq v1, v9, :cond_d

    invoke-direct {v0, v1, v9}, Lcom/android/server/am/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget v10, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iget v11, v9, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v10, v11, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v5

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v10}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v5

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v14

    const/high16 v15, 0x10080000

    and-int/2addr v15, v14

    if-eqz v15, :cond_4

    const/high16 v15, 0x8000000

    and-int/2addr v15, v14

    if-eqz v15, :cond_4

    const/4 v13, 0x1

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_5

    move v15, v5

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    if-eqz v6, :cond_6

    if-eqz v15, :cond_6

    move/from16 v16, v5

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    if-nez v11, :cond_7

    if-nez v12, :cond_7

    if-nez v16, :cond_7

    goto :goto_7

    :cond_7
    if-eqz v16, :cond_b

    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_8

    iget-object v4, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    if-lez v8, :cond_a

    add-int/lit8 v8, v8, -0x1

    if-eqz v12, :cond_c

    if-eqz v13, :cond_a

    goto :goto_7

    :cond_a
    goto :goto_8

    :cond_b
    if-nez v6, :cond_c

    if-eqz v15, :cond_d

    nop

    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_d
    :goto_8
    return v7

    :cond_e
    const/4 v4, -0x1

    return v4
.end method

.method private hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z
    .locals 12

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v7

    if-nez v6, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    if-nez v7, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v2

    :goto_3
    if-eq v0, v6, :cond_5

    if-nez v4, :cond_5

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move v10, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v10, v3

    :goto_5
    if-eq v1, v7, :cond_7

    if-nez v5, :cond_7

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move v11, v2

    goto :goto_7

    :cond_7
    :goto_6
    move v11, v3

    :goto_7
    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    move v2, v3

    nop

    :cond_8
    return v2
.end method

.method private isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isActiveRecentTask: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " globalMax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    const-string v2, "\tisQuietProfileTask=true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, v2, :cond_4

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/RecentTasks;->isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v2, :cond_3

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\taffiliatedWithTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z
    .locals 8

    nop

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityManager"

    const-string v4, "\texcludeFromRecents=true"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne p2, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/am/RecentTasks;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksContentObserver:Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->updateLockedTaskInfo()V

    :cond_4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/RecentTasks;->isRecentTaskLocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "ActivityManager"

    const-string v5, "Exception while checking recent task locked state"

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    iget v4, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    add-int/2addr v1, v4

    if-gt p2, v1, :cond_6

    return v3

    :cond_6
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz v1, :cond_8

    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    iget v4, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    add-int/2addr v1, v4

    if-gt p2, v1, :cond_7

    move v2, v3

    nop

    :cond_7
    return v2

    :cond_8
    iget-wide v4, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_9

    return v3

    :cond_9
    return v2
.end method

.method private isRecentTaskLocked(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "task_user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVisibleRecentTask: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " minVis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " maxVis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " inactiveDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " activityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intentFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    return v1

    :pswitch_1
    return v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ttop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-ne v2, p1, :cond_3

    return v1

    :pswitch_3
    return v1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/LockTaskController;->getRootTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic lambda$static$0(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 2

    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded persisted task ids for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v1, p1

    move-object v2, v1

    move v1, p2

    :goto_0
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    if-lez v1, :cond_0

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_1

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRecent: adding affilliates starting at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from intial "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v3, v2, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    move v4, v1

    move v7, v4

    move-object v4, v2

    :goto_2
    if-ge v7, v0, :cond_d

    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v9, :cond_3

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRecent: looking at next chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v9, -0x1

    if-ne v8, v2, :cond_5

    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_4

    iget v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v10, v9, :cond_6

    :cond_4
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": first task has next affiliate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_5
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v10, v4, :cond_c

    iget v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iget v11, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v10, v11, :cond_6

    goto/16 :goto_3

    :cond_6
    iget v10, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v10, v9, :cond_8

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_7

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": last task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has previous affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_7
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v9, :cond_d

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRecent: end of chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_9

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has previous affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " but should be id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_9
    iget v9, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v10, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v9, v10, :cond_a

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has affiliated id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " but should be "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    move-object v4, v8

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v0, :cond_b

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain ran off index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": last task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_4

    :cond_b
    goto/16 :goto_2

    :cond_c
    :goto_3
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": middle task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has bad next affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    nop

    :cond_d
    :goto_4
    if-eqz v3, :cond_e

    if-ge v7, p2, :cond_e

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": did not extend to task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_e
    if-eqz v3, :cond_12

    move v5, v1

    :goto_5
    if-gt v5, v7, :cond_10

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_f

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: moving affiliated "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v10, v5, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v10, v5, v1

    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_10
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_11

    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addRecent: done moving tasks  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v6

    :cond_12
    return v5
.end method

.method private notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/am/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/am/TaskRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/server/am/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseLockedStr(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v1, "\\}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    const-string/jumbo v4, "{"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ActivityManager"

    const-string v3, "Exception while parsing recent task locked info"

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_0

    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    add-int/lit8 v2, p1, 0x1

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_0
    if-lt v2, p1, :cond_2

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v5, v4, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v5, v1, :cond_1

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/am/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iput-boolean v3, v2, Lcom/android/server/am/TaskRecord;->inRecents:Z

    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Link error 1 first.next="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_3
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v4

    :goto_1
    add-int/lit8 v8, v5, -0x1

    if-ge v7, v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v10, v9, :cond_4

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 2 next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, v8, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_4
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v10, v8, :cond_5

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 3 prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v8}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, v9, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_5
    iput-boolean v3, v9, Lcom/android/server/am/TaskRecord;->inRecents:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_7

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 4 last.prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v6}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_7
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int v4, p1, v5

    return v4
.end method

.method private removeForAddTask(Lcom/android/server/am/TaskRecord;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_1

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trimming task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for addition of task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    return-void
.end method

.method private removeTasksForUserLocked(I)V
    .locals 5

    if-gtz p1, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remove recent task on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_2

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove RecentTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when finishing user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private syncPersistentTaskIdsLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-static {v2}, Lcom/android/server/am/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No task ids found for userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mPersistedTaskIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private trimInactiveRecentTasks()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    add-int/lit8 v0, v0, -0x1

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trimming over max-recents task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    aget v6, v1, v5

    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v7, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v8, :cond_3

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " quiet="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    iput v4, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    move v5, v3

    move v3, v4

    :goto_2
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_d

    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/RecentTasks;->isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v7, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v6, v5}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0, v6}, Lcom/android/server/am/RecentTasks;->isTrimmable(Lcom/android/server/am/TaskRecord;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v7, :cond_a

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trimming out-of-range visible task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v7, :cond_a

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trimming inactive task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    nop

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_b

    move v7, v2

    goto :goto_5

    :cond_b
    move v7, v4

    :goto_5
    if-nez v7, :cond_c

    move v8, v2

    goto :goto_6

    :cond_c
    move v8, v4

    :goto_6
    invoke-direct {p0, v6, v8}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    invoke-virtual {p0, v6, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method private updateLockedTaskInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/RecentTasks;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(Lcom/android/server/am/TaskRecord;)V
    .locals 9

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_4

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_3

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRecent: not adding voice interaction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_6

    if-lez v1, :cond_6

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_6

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_5

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRecent: already at top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    if-eqz v0, :cond_8

    if-lez v1, :cond_8

    iget-boolean v4, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_8

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v4, v5, :cond_8

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_7

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRecent: affiliated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at top when adding "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_b

    nop

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_9

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRecent: moving to top "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->frontPkgChangedEvent(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task with inRecent not in recents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_c
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_d

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecent: trimming tasks for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->removeForAddTask(Lcom/android/server/am/TaskRecord;)V

    iput-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_17

    if-eqz v4, :cond_e

    goto/16 :goto_4

    :cond_e
    if-eqz v0, :cond_19

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    :cond_f
    if-eqz v2, :cond_15

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_13

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_10

    add-int/lit8 v5, v3, 0x1

    goto :goto_2

    :cond_10
    move v5, v3

    :goto_2
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_11

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: new affiliated task added at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-eqz v6, :cond_12

    return-void

    :cond_12
    const/4 v4, 0x1

    goto :goto_3

    :cond_13
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_14

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecent: couldn\'t find other affiliation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v3, 0x1

    move v4, v3

    :goto_3
    goto :goto_5

    :cond_15
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_16

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRecent: adding affiliated task without next/prev:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v4, 0x1

    goto :goto_5

    :cond_17
    :goto_4
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_18

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRecent: adding "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->frontPkgChangedEvent(Ljava/lang/String;)V

    :cond_19
    :goto_5
    if-eqz v4, :cond_1b

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_1a

    const-string v2, "ActivityManager"

    const-string v3, "addRecent: regrouping affiliations"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->trimInactiveRecentTasks()V

    return-void
.end method

.method addToBottom(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    const/4 v0, 0x1

    return v0
.end method

.method cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, p3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string v8, "disabled-package"

    invoke-virtual {v6, v7, v4, v1, v8}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method cleanupLocked(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_10

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, p1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-boolean v4, v3, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing auto-remove without activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_4

    :try_start_0
    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const v7, 0x10000400

    invoke-interface {v1, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    nop

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    :cond_3
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v5

    goto/16 :goto_5

    :cond_4
    :goto_1
    sget-object v6, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const/high16 v7, 0x800000

    if-ne v4, v6, :cond_a

    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_6

    :try_start_1
    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-interface {v1, v8, v9, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v8

    nop

    if-nez v6, :cond_5

    sget-object v6, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    :cond_5
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v5

    goto/16 :goto_5

    :cond_6
    :goto_2
    sget-object v8, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v6, v8, :cond_9

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_8

    iget-boolean v7, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v7, :cond_8

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making recent unavailable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_5

    :cond_9
    :goto_3
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing no longer valid recent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_a
    iget-boolean v6, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_d

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_d

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v7

    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v5, :cond_c

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making recent available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto :goto_5

    :cond_d
    :goto_4
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_e

    iget-boolean v6, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v6, :cond_e

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making recent unavailable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    :cond_f
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v2, v0, :cond_11

    invoke-direct {p0, v2}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v2

    goto :goto_6

    :cond_11
    return-void
.end method

.method containsTaskId(II)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 9

    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_0
    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-wide v1, p1, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    iput-boolean v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    iget v2, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iput v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->getNumRunningActivities(Lcom/android/server/am/TaskRecord$TaskActivitiesReport;)V

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget v2, v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    iput-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    nop

    :cond_3
    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isTopAppLocked:Z

    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->topFullscreen:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->topFullscreen:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->topFullscreen:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2

    :cond_4
    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-string v7, "com.oneplus.applocker"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v8, 0x3f

    invoke-virtual {v7, v8, v3, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPassedPackageList:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    goto :goto_4

    :cond_7
    :goto_3
    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isTopAppLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_9

    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppLocker: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isTopAppLocked:Z

    if-eqz v7, :cond_8

    const-string v7, " locked"

    goto :goto_5

    :cond_8
    const-string v7, " unlocked"

    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " top="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_9
    :goto_6
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 7

    const-string v0, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRecentsUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRecentsComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v1

    move v1, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_4

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    if-eqz p3, :cond_1

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    const-string v6, "  Recent tasks:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v1, 0x1

    :cond_2
    const-string v6, "  * Recent #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    const-string v6, "    "

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    const-string v0, "  (nothing)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "  Locked recent tasks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_2
    move v0, v3

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    const-string v3, "  * Recent #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method flush()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->flush()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget v4, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v4, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/AppTaskImpl;

    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-direct {v6, v7, v8, p1}, Lcom/android/server/am/AppTaskImpl;-><init>(Lcom/android/server/am/ActivityManagerService;II)V

    invoke-virtual {v6}, Lcom/android/server/am/AppTaskImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getPersistableTaskIds(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method getRawTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .locals 7

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    nop

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v4}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v4, v2}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getRecentTasks(IIZZII)Landroid/content/pm/ParceledListSlice;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p5

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, v0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x4

    invoke-virtual {v4, v1, v5}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is still locked. Cannot load recents"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V

    iget-object v4, v0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4, v1}, Lcom/android/server/am/UserController;->getProfileIds(I)Ljava/util/Set;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    iput v3, v0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    nop

    :goto_1
    if-ge v3, v6, :cond_f

    iget-object v8, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    invoke-direct {v0, v8}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v9

    if-eqz v9, :cond_c

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v0, v8, v7}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v10, p1

    if-lt v9, v10, :cond_2

    goto/16 :goto_2

    :cond_2
    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v9, :cond_d

    const-string v9, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping, not user: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eqz v9, :cond_4

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v9, :cond_d

    const-string v9, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping, activity suspended: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v11, 0x800000

    and-int/2addr v9, v11

    if-nez v9, :cond_d

    :cond_5
    if-nez p3, :cond_6

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v11

    if-nez v11, :cond_6

    iget v11, v8, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move/from16 v12, p6

    if-eq v11, v12, :cond_7

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v11, :cond_e

    const-string v11, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping, not allowed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_6
    move/from16 v12, p6

    :cond_7
    iget-boolean v11, v8, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v11, :cond_8

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-nez v11, :cond_8

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v11, :cond_e

    const-string v11, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping, auto-remove without activity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    and-int/lit8 v11, p2, 0x2

    if-eqz v11, :cond_9

    iget-boolean v11, v8, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v11, :cond_9

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v11, :cond_e

    const-string v11, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping, unavail real act: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    iget-boolean v11, v8, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    if-nez v11, :cond_a

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v11, :cond_e

    const-string v11, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping, user setup not complete: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v8}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v11

    if-nez p4, :cond_b

    iget-object v14, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v15, 0x0

    move-object v0, v15

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v14, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_b
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    move/from16 v10, p1

    :cond_d
    :goto_2
    move/from16 v12, p6

    :cond_e
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_f
    move/from16 v10, p1

    move/from16 v12, p6

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method getRecentsComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method getRecentsComponentUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    return v0
.end method

.method getTask(I)Lcom/android/server/am/TaskRecord;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method isCallerRecents(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method isRecentsComponent(Landroid/content/ComponentName;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRecentsComponentHomeActivity(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isTrimmable(Lcom/android/server/am/TaskRecord;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    return v5

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v4

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v6

    if-ge v4, v6, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    return v2
.end method

.method loadParametersFromResources(Landroid/content/res/Resources;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10e0063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e005b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ro.recents.grid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x10e0062

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e005a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    :cond_1
    const v0, 0x10e0061

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e0059

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    :goto_0
    const v0, 0x10e0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v0, :cond_2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    :goto_1
    iput-wide v1, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    return-void
.end method

.method loadRecentsComponent(Landroid/content/res/Resources;)V
    .locals 6

    const v0, 0x1040174

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load application info for recents component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method loadUserRecentsLocked(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_1

    invoke-static {v2}, Lcom/android/server/am/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading recents for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " into memory."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    :cond_3
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/TaskPersister;->wakeup(Lcom/android/server/am/TaskRecord;Z)V

    return-void
.end method

.method onLockTaskModeStateChanged(II)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    move v0, v1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/LockTaskController;->isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    :cond_1
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eq v4, p2, :cond_1

    iput-boolean p2, v3, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v7, "suspended-package"

    invoke-virtual {v5, v6, v4, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onSystemReadyLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->startPersisting()V

    return-void
.end method

.method registerCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method remove(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    return-void
.end method

.method removeTasksByPackageName(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    nop

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v6, "remove-package-task"

    invoke-virtual {v4, v5, v1, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method setGlobalMaxNumTasks(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    return-void
.end method

.method setParameters(IIJ)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    iput p2, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    iput-wide p3, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    return-void
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unloading recents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->removeTasksForUserLocked(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->unloadUserDataFromMemory(I)V

    return-void
.end method

.method unregisterCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    aput v3, v0, v1

    move v1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2

    :cond_2
    return-object v0
.end method
