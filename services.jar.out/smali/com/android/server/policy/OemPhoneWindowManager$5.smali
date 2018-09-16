.class Lcom/android/server/policy/OemPhoneWindowManager$5;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager;->notifyLidSwitchChanged(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;

.field final synthetic val$lidOpen:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 1961
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$5;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/OemPhoneWindowManager$5;->val$lidOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1964
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LID_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1965
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1966
    const-string/jumbo v1, "lidOpen"

    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$5;->val$lidOpen:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1967
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$5;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1969
    return-void
.end method
