.class Lcom/oneplus/notification/NotificationLightController$WorkerHandler;
.super Landroid/os/Handler;
.source "NotificationLightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/NotificationLightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/notification/NotificationLightController;


# direct methods
.method public constructor <init>(Lcom/oneplus/notification/NotificationLightController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/NotificationLightController$WorkerHandler;->this$0:Lcom/oneplus/notification/NotificationLightController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLightController$WorkerHandler;->this$0:Lcom/oneplus/notification/NotificationLightController;

    invoke-static {v0}, Lcom/oneplus/notification/NotificationLightController;->access$000(Lcom/oneplus/notification/NotificationLightController;)V

    :goto_0
    return-void
.end method
