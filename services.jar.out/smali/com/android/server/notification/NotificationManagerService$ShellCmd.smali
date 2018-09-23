.class Lcom/android/server/notification/NotificationManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# static fields
.field public static final USAGE:Ljava/lang/String; = "help\nallow_listener COMPONENT [user_id]\ndisallow_listener COMPONENT [user_id]\nallow_assistant COMPONENT\nremove_assistant COMPONENT\nallow_dnd PACKAGE\ndisallow_dnd PACKAGE\nsuspend_package PACKAGE\nunsuspend_package PACKAGE"


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 7

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "allow_assistant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "disallow_listener"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "suspend_package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "allow_dnd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_4
    const-string v2, "disallow_dnd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_5
    const-string v2, "allow_listener"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v2, "unsuspend_package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_7
    const-string v2, "disallow_assistant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_5

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v4, "Invalid assistant - must be a ComponentName"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v4, "Invalid assistant - must be a ComponentName"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v4, "Invalid listener - must be a ComponentName"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v2, v5, v1}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    :goto_2
    goto :goto_4

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v4, "Invalid listener - must be a ComponentName"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v2, v6, v4}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    :goto_3
    goto :goto_4

    :pswitch_6
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    goto :goto_4

    :pswitch_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_4
    goto :goto_6

    :goto_5
    return v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred. Check logcat for details. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "NotificationService"

    const-string v4, "Error running shell command"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f05a8e6 -> :sswitch_7
        -0x1e34b476 -> :sswitch_6
        -0x19cf0b16 -> :sswitch_5
        -0x199eb9aa -> :sswitch_4
        0x16318b24 -> :sswitch_3
        0x177b7f43 -> :sswitch_2
        0x4af068f8 -> :sswitch_1
        0x7dcb4968 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "help\nallow_listener COMPONENT [user_id]\ndisallow_listener COMPONENT [user_id]\nallow_assistant COMPONENT\nremove_assistant COMPONENT\nallow_dnd PACKAGE\ndisallow_dnd PACKAGE\nsuspend_package PACKAGE\nunsuspend_package PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
