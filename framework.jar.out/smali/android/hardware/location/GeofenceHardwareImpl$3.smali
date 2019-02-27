.class Landroid/hardware/location/GeofenceHardwareImpl$3;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$200(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v3, v4, v0, v2}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$200(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$200(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :try_start_0
    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    goto :goto_2

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v3, v4, v0, v2}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$200(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$200(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :try_start_1
    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    nop

    :cond_0
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
