.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2$1;
.super Ljava/util/TimerTask;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;


# direct methods
.method constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2$1;->this$2:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2$1;->this$2:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;

    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1$2;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;

    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$1;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "Reset parallel app feature"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
