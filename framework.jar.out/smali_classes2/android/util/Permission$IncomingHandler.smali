.class Landroid/util/Permission$IncomingHandler;
.super Landroid/os/Handler;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/Permission;


# direct methods
.method public constructor <init>(Landroid/util/Permission;Landroid/os/HandlerThread;)V
    .locals 1
    .param p1, "this$0"    # Landroid/util/Permission;
    .param p2, "thr"    # Landroid/os/HandlerThread;

    .line 470
    iput-object p1, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    .line 471
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 472
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 476
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 500
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 490
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 491
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "KEY_PKG_PEMISSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/util/GlobalPermissionState$PackagePermissionState;

    .line 492
    .local v1, "pps":Landroid/util/GlobalPermissionState$PackagePermissionState;
    if-eqz v1, :cond_1

    .line 493
    iget-object v2, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    iget-object v3, v1, Landroid/util/GlobalPermissionState$PackagePermissionState;->mPermMap:Ljava/util/LinkedHashMap;

    iget-object v4, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    invoke-static {v4}, Landroid/util/Permission;->access$200(Landroid/util/Permission;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/GlobalPermissionState$PermissionState;

    invoke-static {v2, v3}, Landroid/util/Permission;->access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;

    goto :goto_0

    .line 495
    :cond_1
    iget-object v2, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Permission;->access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;

    .line 497
    :goto_0
    iget-object v2, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    const-string v3, "control service feedback package permission state"

    invoke-static {v2, v3}, Landroid/util/Permission;->access$100(Landroid/util/Permission;Ljava/lang/String;)V

    .line 498
    goto :goto_1

    .line 478
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "pps":Landroid/util/GlobalPermissionState$PackagePermissionState;
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 479
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 480
    const-string v1, "KEY_PERM_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "perm":Ljava/lang/String;
    const-string v2, "KEY_IS_USER_GRANTED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 482
    .local v2, "isGranted":Z
    const-string v3, "KEY_IS_USER_FIXED"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 483
    .local v3, "isFixed":Z
    iget-object v4, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    new-instance v5, Landroid/util/GlobalPermissionState$PermissionState;

    invoke-direct {v5, v1}, Landroid/util/GlobalPermissionState$PermissionState;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/util/Permission;->access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;

    .line 484
    iget-object v4, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    invoke-static {v4}, Landroid/util/Permission;->access$000(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v4

    iput-boolean v2, v4, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    .line 485
    iget-object v4, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    invoke-static {v4}, Landroid/util/Permission;->access$000(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v4

    iput-boolean v3, v4, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    .line 487
    .end local v1    # "perm":Ljava/lang/String;
    .end local v2    # "isGranted":Z
    .end local v3    # "isFixed":Z
    :cond_3
    iget-object v1, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    const-string/jumbo v2, "user had made decision"

    invoke-static {v1, v2}, Landroid/util/Permission;->access$100(Landroid/util/Permission;Ljava/lang/String;)V

    .line 488
    nop

    .line 502
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void
.end method
