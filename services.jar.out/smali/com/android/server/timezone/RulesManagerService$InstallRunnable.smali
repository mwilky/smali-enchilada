.class Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
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
    name = "InstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field private final mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    return-void
.end method

.method private mapInstallerResultToApiCode(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x5

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendInstallNotificationIntentIfRequired(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationStaged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneInstallStarted(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    new-instance v6, Lcom/android/timezone/distro/TimeZoneDistro;

    invoke-direct {v6, v5}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    iget-object v7, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v7}, Lcom/android/server/timezone/RulesManagerService;->access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->sendInstallNotificationIntentIfRequired(I)V

    invoke-direct {p0, v7}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mapInstallerResultToApiCode(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v9}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v10, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v9, v10, v8}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    :try_start_6
    const-string/jumbo v3, "timezone.RulesManagerService"

    const-string v4, "Failed to install distro."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v3, v5, v4}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    nop

    return-void

    :goto_3
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
