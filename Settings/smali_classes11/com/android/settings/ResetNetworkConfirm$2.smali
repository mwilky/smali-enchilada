.class Lcom/android/settings/ResetNetworkConfirm$2;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ResetNetworkConfirm;

    .line 155
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 159
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$2;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, v0, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/ResetNetworkConfirm$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetNetworkConfirm$2$1;-><init>(Lcom/android/settings/ResetNetworkConfirm$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    return-void
.end method
