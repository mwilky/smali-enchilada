.class Landroid/net/lowpan/LowpanManager$2;
.super Landroid/net/lowpan/ILowpanManagerListener$Stub;
.source "LowpanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanManager;->registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/lowpan/LowpanManager;

.field final synthetic val$cb:Landroid/net/lowpan/LowpanManager$Callback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanManager;Landroid/os/Handler;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanManagerListener$Stub;-><init>()V

    iget-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-static {p2}, Landroid/net/lowpan/LowpanManager;->access$100(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-static {p3}, Landroid/net/lowpan/LowpanManager;->access$100(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onInterfaceAdded$0(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/net/lowpan/LowpanManager$Callback;->onInterfaceAdded(Landroid/net/lowpan/LowpanInterface;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onInterfaceRemoved$1(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanManager;->getInterfaceNoCreate(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/net/lowpan/LowpanManager$Callback;->onInterfaceRemoved(Landroid/net/lowpan/LowpanInterface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onInterfaceAdded(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanManager$2$2qKIy18LeIjTlm4mROg-pHOPNU0;

    invoke-direct {v1, p0, p1, v0}, Landroid/net/lowpan/-$$Lambda$LowpanManager$2$2qKIy18LeIjTlm4mROg-pHOPNU0;-><init>(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceRemoved(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanManager$2$jhNE3pUzRwHtqpTRJOtHQRfgQ70;

    invoke-direct {v1, p0, p1, v0}, Landroid/net/lowpan/-$$Lambda$LowpanManager$2$jhNE3pUzRwHtqpTRJOtHQRfgQ70;-><init>(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
