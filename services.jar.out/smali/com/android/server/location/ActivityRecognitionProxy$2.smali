.class Lcom/android/server/location/ActivityRecognitionProxy$2;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ActivityRecognitionProxy;->bindProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ActivityRecognitionProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/ActivityRecognitionProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/ActivityRecognitionProxy$2;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .locals 5

    :try_start_0
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    nop

    const-class v1, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    nop

    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "ActivityRecognitionProxy"

    const-string v3, "No watcher found on connection."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy$2;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    invoke-static {v2}, Lcom/android/server/location/ActivityRecognitionProxy;->access$100(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "ActivityRecognitionProxy"

    const-string v3, "AR HW instance not available, binding will be a no-op."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy$2;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    invoke-static {v2}, Lcom/android/server/location/ActivityRecognitionProxy;->access$100(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ActivityRecognitionProxy"

    const-string v4, "Error delivering hardware interface to watcher."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_2

    :cond_2
    const-class v1, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    nop

    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareClient;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v2, "ActivityRecognitionProxy"

    const-string v3, "No client found on connection."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy$2;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    invoke-static {v2}, Lcom/android/server/location/ActivityRecognitionProxy;->access$200(Lcom/android/server/location/ActivityRecognitionProxy;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/location/ActivityRecognitionProxy$2;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    invoke-static {v3}, Lcom/android/server/location/ActivityRecognitionProxy;->access$100(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/location/IActivityRecognitionHardwareClient;->onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "ActivityRecognitionProxy"

    const-string v4, "Error delivering hardware interface to client."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_2

    :cond_4
    const-string v1, "ActivityRecognitionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid descriptor found on connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catch_2
    move-exception v0

    const-string v1, "ActivityRecognitionProxy"

    const-string v2, "Unable to get interface descriptor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
