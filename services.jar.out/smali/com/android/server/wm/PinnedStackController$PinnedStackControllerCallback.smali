.class Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;
.super Landroid/view/IPinnedStackController$Stub;
.source "PinnedStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PinnedStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PinnedStackController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PinnedStackController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-direct {p0}, Landroid/view/IPinnedStackController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;-><init>(Lcom/android/server/wm/PinnedStackController;)V

    return-void
.end method

.method public static synthetic lambda$setIsMinimized$0(Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0, p1}, Lcom/android/server/wm/PinnedStackController;->access$702(Lcom/android/server/wm/PinnedStackController;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$800(Lcom/android/server/wm/PinnedStackController;)Lcom/android/internal/policy/PipSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PipSnapAlgorithm;->setMinimized(Z)V

    return-void
.end method

.method public static synthetic lambda$setMinEdgeSize$1(Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v1}, Lcom/android/server/wm/PinnedStackController;->access$600(Lcom/android/server/wm/PinnedStackController;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/PinnedStackController;->access$502(Lcom/android/server/wm/PinnedStackController;I)I

    return-void
.end method


# virtual methods
.method public getDisplayRotation()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$300(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v1}, Lcom/android/server/wm/PinnedStackController;->access$400(Lcom/android/server/wm/PinnedStackController;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setIsMinimized(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$200(Lcom/android/server/wm/PinnedStackController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$0SANOJyiLP67Pkj3NbDS5B-egBU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$0SANOJyiLP67Pkj3NbDS5B-egBU;-><init>(Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMinEdgeSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$200(Lcom/android/server/wm/PinnedStackController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$MdGjZinCTxKrX3GJTl1CXkAuFro;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$MdGjZinCTxKrX3GJTl1CXkAuFro;-><init>(Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
