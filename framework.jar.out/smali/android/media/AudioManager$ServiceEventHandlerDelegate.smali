.class Landroid/media/AudioManager$ServiceEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    :cond_1
    :goto_0
    move-object v0, v1

    if-eqz v0, :cond_2

    new-instance v1, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$ServiceEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    :goto_1
    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
