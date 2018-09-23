.class Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;
.super Ljava/lang/Object;
.source "RulesManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/RulesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    return-void
.end method

.method private sendUninstallNotificationIntentIfRequired(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationUnstaged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationStaged()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallStarted(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageUninstall()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->sendUninstallNotificationIntentIfRequired(I)V

    if-eqz v3, :cond_1

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    move v1, v4

    if-eqz v1, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v5}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v6, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v5, v6, v4}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string v5, "Failed to uninstall distro."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v4, v5, v2}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    nop

    return-void

    :goto_4
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
