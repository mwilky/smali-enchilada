.class Landroid/hardware/camera2/legacy/RequestThreadManager$1;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from the Camera1 ErrorCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->flush()J

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->flush()J

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
