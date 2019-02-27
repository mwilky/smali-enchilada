.class Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V
    .locals 0

    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "authAccount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    const-string v4, "accountType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v4

    nop

    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v4, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v7, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v9, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v10, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v11, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v4 .. v11}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    iput-object v3, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "authAccount"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "accountType"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "authtoken"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "accountAccessId"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_1
    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v1, v3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$1502(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)I

    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v4, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v9, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v4 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    iput-object v3, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v9, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v10, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v11, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v12, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    move-object v7, v5

    invoke-virtual/range {v6 .. v12}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    iput-object v3, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    :goto_1
    return-void

    :catch_1
    move-exception v1

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v3, v1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$1400(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v1

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v3, v1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$1300(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception v1

    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v3, v1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$1200(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    return-void
.end method
