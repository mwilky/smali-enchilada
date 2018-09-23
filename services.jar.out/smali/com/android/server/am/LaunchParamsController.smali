.class Lcom/android/server/am/LaunchParamsController;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;,
        Lcom/android/server/am/LaunchParamsController$LaunchParams;
    }
.end annotation


# instance fields
.field private final mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private final mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private final mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iput-object p1, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p6

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    iget-object v2, v0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, v0, Lcom/android/server/am/LaunchParamsController;->mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    iget-object v3, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    iget-object v3, v0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;

    iget-object v10, v0, Lcom/android/server/am/LaunchParamsController;->mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v11, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object v4, v3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-interface/range {v4 .. v11}, Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;->onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v4, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1, v4}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1, v4}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    return-void

    :pswitch_2
    nop

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 7

    iget-object v6, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/LaunchParamsController;->calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v3, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->moveStackToDisplay(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v2, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v0

    :cond_3
    nop

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method registerDefaultModifiers(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 1

    new-instance v0, Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-direct {v0}, Lcom/android/server/am/TaskLaunchParamsModifier;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/am/LaunchParamsController;->registerModifier(Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;)V

    new-instance v0, Lcom/android/server/am/ActivityLaunchParamsModifier;

    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityLaunchParamsModifier;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/LaunchParamsController;->registerModifier(Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;)V

    return-void
.end method

.method registerModifier(Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
