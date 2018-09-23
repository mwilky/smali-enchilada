.class final Lcom/android/server/InputMethodManagerService$LocalServiceImpl;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalServiceImpl"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public hideCurrentInputMethod()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setInteractive(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/16 v3, 0xbd6

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startVrInputMethodNoCheck(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7da

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public switchInputMethod(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/16 v3, 0xbea

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
