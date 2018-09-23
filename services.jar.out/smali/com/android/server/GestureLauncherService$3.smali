.class Lcom/android/server/GestureLauncherService$3;
.super Landroid/database/ContentObserver;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/GestureLauncherService$3;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService$3;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$200(Lcom/android/server/GestureLauncherService;)I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GestureLauncherService$3;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$600(Lcom/android/server/GestureLauncherService;)V

    iget-object v0, p0, Lcom/android/server/GestureLauncherService$3;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    iget-object v0, p0, Lcom/android/server/GestureLauncherService$3;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$700(Lcom/android/server/GestureLauncherService;)V

    iget-object v0, p0, Lcom/android/server/GestureLauncherService$3;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$800(Lcom/android/server/GestureLauncherService;)V

    :cond_0
    return-void
.end method
