.class final Lcom/android/server/wm/StackWindowController$H;
.super Landroid/os/Handler;
.source "StackWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StackWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "H"
.end annotation


# static fields
.field static final REQUEST_RESIZE:I


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/StackWindowController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/StackWindowController;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/StackWindowController$H;->mController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController$H;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackWindowController;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/StackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v1, Lcom/android/server/wm/StackWindowListener;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Lcom/android/server/wm/StackWindowListener;->requestResize(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method
