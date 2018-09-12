.class Lcom/oneplus/aod/DisplayViewManager$1;
.super Ljava/lang/Object;
.source "DisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/DisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/DisplayViewManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/DisplayViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/DisplayViewManager;

    .line 120
    iput-object p1, p0, Lcom/oneplus/aod/DisplayViewManager$1;->this$0:Lcom/oneplus/aod/DisplayViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager$1;->this$0:Lcom/oneplus/aod/DisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/DisplayViewManager;->resetViewState()V

    .line 124
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager$1;->this$0:Lcom/oneplus/aod/DisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/DisplayViewManager;->access$000(Lcom/oneplus/aod/DisplayViewManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/oneplus/aod/DisplayViewManager$1;->this$0:Lcom/oneplus/aod/DisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/DisplayViewManager;->access$000(Lcom/oneplus/aod/DisplayViewManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 127
    :cond_0
    return-void
.end method
