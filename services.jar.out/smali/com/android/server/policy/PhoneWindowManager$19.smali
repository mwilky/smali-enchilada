.class Lcom/android/server/policy/PhoneWindowManager$19;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$4402(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v4, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4402(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v4, "wfd_UIBC_rot"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$4502(Lcom/android/server/policy/PhoneWindowManager;I)I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    :cond_1
    return-void
.end method
