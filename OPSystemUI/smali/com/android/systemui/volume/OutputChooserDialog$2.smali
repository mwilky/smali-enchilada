.class Lcom/android/systemui/volume/OutputChooserDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "OutputChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OutputChooserDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog$2;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/OutputChooserDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$2;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$2;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->cleanUp()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/volume/OutputChooserDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received ACTION_HEADSET_PLUG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$2;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$400(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    :cond_4
    :goto_0
    return-void
.end method
