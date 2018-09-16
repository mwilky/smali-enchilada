.class Lcom/android/server/policy/OemPhoneWindowManager$11;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager;->notifyAppLaunchFailedLw(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 2891
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$11;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/OemPhoneWindowManager$11;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/policy/OemPhoneWindowManager$11;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2895
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$11;->val$pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2897
    goto :goto_0

    .line 2896
    :catch_0
    move-exception v0

    .line 2898
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$11;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$11;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2899
    return-void
.end method
