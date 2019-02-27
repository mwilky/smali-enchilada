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

    iput-object p1, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_PKG_PEMISSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/util/GlobalPermissionState$PackagePermissionState;

    if-eqz v1, :cond_1

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

    :cond_1
    iget-object v2, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Permission;->access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;

    :goto_0
    iget-object v2, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    const-string v3, "control service feedback package permission state"

    invoke-static {v2, v3}, Landroid/util/Permission;->access$100(Landroid/util/Permission;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "KEY_PERM_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_IS_USER_GRANTED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "KEY_IS_USER_FIXED"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    new-instance v5, Landroid/util/GlobalPermissionState$PermissionState;

    invoke-direct {v5, v1}, Landroid/util/GlobalPermissionState$PermissionState;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/util/Permission;->access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;

    iget-object v4, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    invoke-static {v4}, Landroid/util/Permission;->access$000(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v4

    iput-boolean v2, v4, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    iget-object v4, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    invoke-static {v4}, Landroid/util/Permission;->access$000(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v4

    iput-boolean v3, v4, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    :cond_3
    iget-object v1, p0, Landroid/util/Permission$IncomingHandler;->this$0:Landroid/util/Permission;

    const-string/jumbo v2, "user had made decision"

    invoke-static {v1, v2}, Landroid/util/Permission;->access$100(Landroid/util/Permission;Ljava/lang/String;)V

    nop

    :goto_1
    return-void
.end method
