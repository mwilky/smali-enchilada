.class Landroid/accounts/AccountManager$AmsTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager$AmsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManager$AmsTask;


# direct methods
.method private constructor <init>(Landroid/accounts/AccountManager$AmsTask;)V
    .locals 0

    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->access$700(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/accounts/AccountManager$AmsTask;->access$800(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x5

    const-string/jumbo v1, "null bundle returned"

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManager$AmsTask$Response;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "retry"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-virtual {v1}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_2
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
