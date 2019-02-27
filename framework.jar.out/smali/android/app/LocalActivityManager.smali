.class public Landroid/app/LocalActivityManager;
.super Ljava/lang/Object;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocalActivityManager$LocalActivityRecord;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CREATED:I = 0x2

.field static final DESTROYED:I = 0x5

.field static final INITIALIZING:I = 0x1

.field static final RESTORED:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalActivityManager"

.field private static final localLOGV:Z = false


# instance fields
.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/app/ActivityThread;

.field private mCurState:I

.field private mFinishing:Z

.field private final mParent:Landroid/app/Activity;

.field private mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

.field private mSingleMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iput-object p1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    iput-boolean p2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    return-void
.end method

.method private moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    iget v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    if-eqz v1, :cond_e

    iget v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x1

    if-ne v1, v14, :cond_7

    iget-object v1, v0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLastNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v15

    const/4 v1, 0x0

    if-eqz v15, :cond_1

    iget-object v2, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    move-object v8, v1

    const/4 v1, 0x0

    if-eqz v8, :cond_2

    new-instance v2, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v2}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    move-object v1, v2

    iput-object v8, v1, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    :cond_2
    move-object/from16 v16, v1

    iget-object v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v2, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_3
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v2, v0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    iget-object v3, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v4, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    move-object v6, v9

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityThread;->startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    iget-object v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    iput-object v11, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, v9}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    iget-object v2, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_5

    new-instance v2, Landroid/app/servertransaction/PendingTransactionActions;

    invoke-direct {v2}, Landroid/app/servertransaction/PendingTransactionActions;-><init>()V

    move-object v11, v2

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v11, v2}, Landroid/app/servertransaction/PendingTransactionActions;->setOldState(Landroid/os/Bundle;)V

    invoke-virtual {v11, v14}, Landroid/app/servertransaction/PendingTransactionActions;->setRestoreInstanceState(Z)V

    invoke-virtual {v11, v14}, Landroid/app/servertransaction/PendingTransactionActions;->setCallOnPostCreate(Z)V

    goto :goto_0

    :cond_5
    nop

    :goto_0
    move-object v2, v11

    iget-object v3, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v3, v1, v2}, Landroid/app/ActivityThread;->handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    iput v12, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    if-ne v10, v13, :cond_6

    iget-object v3, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v4, "moveToState-INITIALIZING"

    invoke-virtual {v3, v9, v14, v4}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    iput v13, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_6
    return-void

    :cond_7
    iget v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    if-ne v10, v12, :cond_8

    iget-boolean v1, v0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {v0, v9, v1}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    iput v12, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_8
    if-ne v10, v3, :cond_9

    iget-boolean v1, v0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {v0, v9, v1}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v4, "moveToState-RESUMED"

    invoke-virtual {v1, v9, v2, v4}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V

    iput v3, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_9
    return-void

    :pswitch_1
    if-ne v10, v13, :cond_a

    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v4, "moveToState-STARTED"

    invoke-virtual {v1, v9, v14, v4}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v11, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    iput v13, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_a
    if-ne v10, v3, :cond_b

    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v4, "moveToState-STARTED"

    invoke-virtual {v1, v9, v2, v4}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V

    iput v3, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_b
    return-void

    :pswitch_2
    if-ne v10, v12, :cond_c

    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, v9, v14}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;Z)V

    iput v12, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_c
    if-ne v10, v13, :cond_d

    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, v9, v14}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;Z)V

    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v2, "moveToState-CREATED"

    invoke-virtual {v1, v9, v14, v2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    iput v13, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_d
    return-void

    :cond_e
    :goto_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;
    .locals 9

    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    iget v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    :cond_0
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "LocalActivityManager::performDestroy"

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v1, 0x0

    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    if-eqz p2, :cond_1

    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    :cond_1
    const/4 v1, 0x5

    iput v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    return-object v0
.end method

.method private performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V
    .locals 4

    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v2, "performPause"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_1

    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    :cond_1
    return-void
.end method


# virtual methods
.method public destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    .locals 3

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method public dispatchCreate(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v3, :cond_0

    iput-object v2, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    move-object v3, v4

    iput-object v2, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "LocalActivityManager"

    const-string v4, "Exception thrown when restoring LocalActivityManager state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    return-void
.end method

.method public dispatchDestroy(Z)V
    .locals 9

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "LocalActivityManager::dispatchDestroy"

    move-object v4, v2

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dispatchPause(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    iget-boolean v1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v1, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    invoke-direct {p0, v3, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public dispatchResume()V
    .locals 4

    const/4 v0, 0x4

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    iget-boolean v1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v1, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v3, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    :cond_0
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public dispatchStop()V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v3, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public removeAllActivities()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-nez v0, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v0, v4

    :cond_0
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v4, :cond_1

    iget v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    iput-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    :cond_2
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    .locals 8

    iget v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-nez v4, :cond_0

    new-instance v5, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {v5, p1, p2}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    move-object v4, v5

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v5, p2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    :cond_2
    iget-boolean v5, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v5, :cond_3

    if-eq v5, v4, :cond_3

    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_b

    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v3, v5, :cond_5

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_5
    iget v5, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v5, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-nez v5, :cond_8

    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget v1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    iget-boolean v1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v1, :cond_7

    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    :cond_7
    iget-object v1, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object v1

    :cond_8
    invoke-direct {p0, v4, v1}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    goto :goto_2

    :cond_9
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    new-instance v5, Lcom/android/internal/content/ReferrerIntent;

    iget-object v6, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v1, v6}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)V

    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    iget-boolean v5, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v5, :cond_a

    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    :cond_a
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object v5

    :cond_b
    :goto_2
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iput v1, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    iput-object v3, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    iget-boolean v1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v1, :cond_c

    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    :cond_c
    iget-object v1, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object v1

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activities can\'t be added until the containing group has been created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
