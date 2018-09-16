.class Lcom/android/server/policy/OemPhoneWindowManager$12;
.super Landroid/content/BroadcastReceiver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 3091
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3094
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3095
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mShuttingDown:Z

    .line 3096
    const-string v0, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive ACTION_SHUTDOWN mShuttingDown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mShuttingDown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$12;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->updateRotation(ZZ)V

    .line 3099
    :cond_0
    return-void
.end method
