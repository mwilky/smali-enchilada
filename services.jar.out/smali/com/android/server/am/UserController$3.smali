.class Lcom/android/server/am/UserController$3;
.super Landroid/app/IStopUserCallback$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->restartUser(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$foreground:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    iput-boolean p2, p0, Lcom/android/server/am/UserController$3;->val$foreground:Z

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$userStopped$0(Lcom/android/server/am/UserController$3;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 0

    return-void
.end method

.method public userStopped(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->access$200(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/UserController$3;->val$foreground:Z

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$3$DwbhQjwQF2qoVH0y07dd4wykxRA;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/am/-$$Lambda$UserController$3$DwbhQjwQF2qoVH0y07dd4wykxRA;-><init>(Lcom/android/server/am/UserController$3;IZ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
