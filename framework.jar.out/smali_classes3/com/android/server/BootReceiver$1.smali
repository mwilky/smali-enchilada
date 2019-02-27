.class Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v1, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver;->access$000(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BootReceiver"

    const-string v2, "Can\'t log boot events"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_1
    if-nez v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/server/BootReceiver;->access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    nop

    const-string v1, "BootReceiver"

    const-string v2, "Can\'t remove old update packages"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_0
    :goto_3
    nop

    :goto_4
    return-void
.end method
