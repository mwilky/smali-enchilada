.class Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;
.super Landroid/os/Handler;
.source "ClockCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/plugin/ClockCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/plugin/ClockCtrl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/plugin/ClockCtrl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->this$0:Lcom/android/keyguard/plugin/ClockCtrl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "ClockCtrl"

    const-string v1, "BGHandler: msg null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->this$0:Lcom/android/keyguard/plugin/ClockCtrl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v3}, Lcom/android/keyguard/plugin/ClockCtrl;->access$000(Lcom/android/keyguard/plugin/ClockCtrl;Z)V

    :goto_1
    return-void
.end method
