.class Lcom/android/server/policy/PhoneWindowManager$13;
.super Lcom/android/internal/policy/KeyguardDismissCallback;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$awakenFromDreams:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager$13;->val$awakenFromDreams:Z

    invoke-direct {p0}, Lcom/android/internal/policy/KeyguardDismissCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDismissSucceeded$0(Lcom/android/server/policy/PhoneWindowManager$13;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->val$awakenFromDreams:Z

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$13$bQb5F46Hw0aJj_XF2e1CT6OdEQQ;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$13$bQb5F46Hw0aJj_XF2e1CT6OdEQQ;-><init>(Lcom/android/server/policy/PhoneWindowManager$13;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
