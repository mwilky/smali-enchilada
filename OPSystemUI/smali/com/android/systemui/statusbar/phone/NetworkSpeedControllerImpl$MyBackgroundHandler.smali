.class Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;
.super Landroid/os/Handler;
.source "NetworkSpeedControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$600(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$600(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$800(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$800(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->access$900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1000(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V

    :cond_0
    return-void
.end method
