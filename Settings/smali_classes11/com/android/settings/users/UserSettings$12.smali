.class Lcom/android/settings/users/UserSettings$12;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->removeUserNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/users/UserSettings;

    .line 745
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->access$1700(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 748
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings/users/UserSettings;->access$300(Lcom/android/settings/users/UserSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z

    .line 749
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$500(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 750
    monitor-exit v0

    .line 751
    return-void

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
