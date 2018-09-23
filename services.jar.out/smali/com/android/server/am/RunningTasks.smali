.class Lcom/android/server/am/RunningTasks;
.super Ljava/lang/Object;
.source "RunningTasks.java"


# static fields
.field private static final LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

.field private final mTmpSortedSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpStackTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/am/-$$Lambda$RunningTasks$BGar3HlUsTw-0HzSmfkEWly0moY;->INSTANCE:Lcom/android/server/am/-$$Lambda$RunningTasks$BGar3HlUsTw-0HzSmfkEWly0moY;

    sput-object v0, Lcom/android/server/am/RunningTasks;->LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v0}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RunningTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/android/server/am/RunningTasks;->LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/am/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private createRunningTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/RunningTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->getNumRunningActivities(Lcom/android/server/am/TaskRecord$TaskActivitiesReport;)V

    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    iget-object v1, p0, Lcom/android/server/am/RunningTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/RunningTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-wide v1, p1, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/am/RunningTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    iget-object v1, p0, Lcom/android/server/am/RunningTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    iput v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    iget v1, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iput v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method


# virtual methods
.method getTasks(ILjava/util/List;IILandroid/util/SparseArray;IZ)V
    .locals 14
    .param p3    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;II",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityDisplay;",
            ">;IZ)V"
        }
    .end annotation

    move-object v0, p0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    iget-object v2, v0, Lcom/android/server/am/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p5 .. p5}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    move-object/from16 v4, p5

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_1

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v13

    iget-object v8, v0, Lcom/android/server/am/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    move-object v7, v13

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->getRunningTasks(Ljava/util/List;IIIZ)V

    iget-object v7, v0, Lcom/android/server/am/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    iget-object v8, v0, Lcom/android/server/am/RunningTasks;->mTmpStackTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v4, p5

    iget-object v3, v0, Lcom/android/server/am/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, p1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    invoke-direct {v0, v5}, Lcom/android/server/am/RunningTasks;->createRunningTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    move-object/from16 v7, p2

    return-void
.end method
