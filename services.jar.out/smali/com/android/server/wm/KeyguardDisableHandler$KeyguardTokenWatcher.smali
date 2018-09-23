.class Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;
.super Landroid/os/TokenWatcher;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyguardTokenWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/KeyguardDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    const-string v0, "WindowManager"

    invoke-direct {p0, p2, v0}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquired()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-static {v0}, Lcom/android/server/wm/KeyguardDisableHandler;->access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->updateAllowState()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-static {v0}, Lcom/android/server/wm/KeyguardDisableHandler;->access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->enableKeyguard(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "WindowManager"

    const-string v1, "Not disabling keyguard since device policy is enforced"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public released()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->enableKeyguard(Z)V

    return-void
.end method

.method public updateAllowState()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler;->access$002(Lcom/android/server/wm/KeyguardDisableHandler;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_1
    :goto_1
    return-void
.end method
