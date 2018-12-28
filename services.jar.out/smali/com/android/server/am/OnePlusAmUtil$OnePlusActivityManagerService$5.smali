.class Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$5;
.super Ljava/lang/Object;
.source "OnePlusAmUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->forceStopPkg(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$5;->this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$5;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$5;->this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->access$000(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$5;->val$pkgName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    return-void
.end method
