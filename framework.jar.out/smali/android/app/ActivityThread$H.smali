.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# static fields
.field public static final APPLICATION_INFO_CHANGED:I = 0x9c

.field public static final ATTACH_AGENT:I = 0x9b

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXECUTE_TRANSACTION:I = 0x9f

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final LOW_MEMORY:I = 0x7c

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0xa0

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final RUN_ISOLATED_ENTRY_POINT:I = 0x9e

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SLEEPING:I = 0x89

.field public static final START_BINDER_TRACKING:I = 0x96

.field public static final STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "RELAUNCH_ACTIVITY"

    return-object v0

    :pswitch_2
    const-string v0, "EXECUTE_TRANSACTION"

    return-object v0

    :pswitch_3
    const-string v0, "RUN_ISOLATED_ENTRY_POINT"

    return-object v0

    :pswitch_4
    const-string v0, "APPLICATION_INFO_CHANGED"

    return-object v0

    :pswitch_5
    const-string v0, "ATTACH_AGENT"

    return-object v0

    :pswitch_6
    const-string v0, "LOCAL_VOICE_INTERACTION_STARTED"

    return-object v0

    :pswitch_7
    const-string v0, "ENTER_ANIMATION_COMPLETE"

    return-object v0

    :pswitch_8
    const-string v0, "ON_NEW_ACTIVITY_OPTIONS"

    return-object v0

    :pswitch_9
    const-string v0, "INSTALL_PROVIDER"

    return-object v0

    :pswitch_a
    const-string v0, "TRANSLUCENT_CONVERSION_COMPLETE"

    return-object v0

    :pswitch_b
    const-string v0, "REQUEST_ASSIST_CONTEXT_EXTRAS"

    return-object v0

    :pswitch_c
    const-string v0, "UNSTABLE_PROVIDER_DIED"

    return-object v0

    :pswitch_d
    const-string v0, "DUMP_PROVIDER"

    return-object v0

    :pswitch_e
    const-string v0, "UPDATE_PACKAGE_COMPATIBILITY_INFO"

    return-object v0

    :pswitch_f
    const-string v0, "SET_CORE_SETTINGS"

    return-object v0

    :pswitch_10
    const-string v0, "SLEEPING"

    return-object v0

    :pswitch_11
    const-string v0, "DUMP_ACTIVITY"

    return-object v0

    :pswitch_12
    const-string v0, "DUMP_HEAP"

    return-object v0

    :pswitch_13
    const-string v0, "SCHEDULE_CRASH"

    return-object v0

    :pswitch_14
    const-string v0, "DISPATCH_PACKAGE_BROADCAST"

    return-object v0

    :pswitch_15
    const-string v0, "ENABLE_JIT"

    return-object v0

    :pswitch_16
    const-string v0, "REMOVE_PROVIDER"

    return-object v0

    :pswitch_17
    const-string v0, "SUICIDE"

    return-object v0

    :pswitch_18
    const-string v0, "DESTROY_BACKUP_AGENT"

    return-object v0

    :pswitch_19
    const-string v0, "CREATE_BACKUP_AGENT"

    return-object v0

    :pswitch_1a
    const-string v0, "PROFILER_CONTROL"

    return-object v0

    :pswitch_1b
    const-string v0, "LOW_MEMORY"

    return-object v0

    :pswitch_1c
    const-string v0, "DUMP_SERVICE"

    return-object v0

    :pswitch_1d
    const-string v0, "UNBIND_SERVICE"

    return-object v0

    :pswitch_1e
    const-string v0, "BIND_SERVICE"

    return-object v0

    :pswitch_1f
    const-string v0, "GC_WHEN_IDLE"

    return-object v0

    :pswitch_20
    const-string v0, "CLEAN_UP_CONTEXT"

    return-object v0

    :pswitch_21
    const-string v0, "CONFIGURATION_CHANGED"

    return-object v0

    :pswitch_22
    const-string v0, "STOP_SERVICE"

    return-object v0

    :pswitch_23
    const-string v0, "SERVICE_ARGS"

    return-object v0

    :pswitch_24
    const-string v0, "CREATE_SERVICE"

    return-object v0

    :pswitch_25
    const-string v0, "RECEIVER"

    return-object v0

    :pswitch_26
    const-string v0, "EXIT_APPLICATION"

    return-object v0

    :pswitch_27
    const-string v0, "BIND_APPLICATION"

    return-object v0

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_27
        :pswitch_26
        :pswitch_0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> handling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x40

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$3400(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1}, Landroid/app/ActivityThread;->access$3300(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/servertransaction/TransactionExecutor;->execute(Landroid/app/servertransaction/ClientTransaction;)V

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$3200(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iput-boolean v1, v0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iput-boolean v2, v0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    nop

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iput-boolean v2, v1, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    throw v0

    :pswitch_5
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    goto/16 :goto_4

    :pswitch_6
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$3100(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    goto/16 :goto_4

    :pswitch_7
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$3000(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_4

    :pswitch_8
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;)V

    goto/16 :goto_4

    :pswitch_9
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_4

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    goto/16 :goto_4

    :pswitch_b
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto/16 :goto_4

    :pswitch_c
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    goto/16 :goto_4

    :pswitch_d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    goto/16 :goto_4

    :pswitch_e
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_4

    :pswitch_f
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_4

    :pswitch_10
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_4

    :pswitch_11
    const-string/jumbo v0, "setCoreSettings"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    :pswitch_12
    const-string/jumbo v0, "sleeping"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v0, v5, v1}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    :pswitch_13
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_4

    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v0}, Landroid/app/ActivityThread;->handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_4

    :pswitch_15
    new-instance v0, Landroid/app/RemoteServiceException;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    const-string v0, "broadcastPackage"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    :pswitch_17
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_4

    :pswitch_18
    const-string/jumbo v0, "providerRemove"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    :pswitch_19
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_4

    :pswitch_1a
    const-string v0, "backupDestroyAgent"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    :pswitch_1b
    const-string v0, "backupCreateAgent"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    :pswitch_1c
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ProfilerInfo;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    goto/16 :goto_4

    :pswitch_1d
    const-string/jumbo v0, "lowMemory"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    :pswitch_1e
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$2000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_4

    :pswitch_1f
    const-string/jumbo v0, "serviceUnbind"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    :pswitch_20
    const-string/jumbo v0, "serviceBind"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    :pswitch_21
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_4

    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    iget-object v1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_23
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_4

    :pswitch_24
    const-string/jumbo v0, "serviceStop"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$1900(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    :pswitch_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serviceStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :pswitch_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serviceCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :pswitch_27
    const-string v0, "broadcastReceiveComp"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :pswitch_28
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_4

    :pswitch_29
    const-string v0, "bindApplication"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$AppBindData;

    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    :cond_6
    :goto_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/internal/os/SomeArgs;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_7
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v1, :cond_8

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_29
        :pswitch_28
        :pswitch_0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
