.class Lcom/android/server/am/ActivityManagerService$17;
.super Lcom/android/internal/policy/KeyguardDismissCallback;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$enterPipRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$17;->val$enterPipRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$17;->val$enterPipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
