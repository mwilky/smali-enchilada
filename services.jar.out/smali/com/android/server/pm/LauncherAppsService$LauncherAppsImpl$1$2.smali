.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;
.super Ljava/lang/Object;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;


# direct methods
.method constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;

    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;

    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$302(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;

    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$400(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;

    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;

    iget-object v2, v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x50c004d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2$1;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;)V

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
