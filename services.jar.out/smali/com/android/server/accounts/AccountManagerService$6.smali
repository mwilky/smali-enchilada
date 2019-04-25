.class Lcom/android/server/accounts/AccountManagerService$6;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accountCredentials:Landroid/os/Bundle;

.field final synthetic val$parentUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p9, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    iput p10, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$parentUserId:I

    iput-object p11, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$accountCredentials:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$parentUserId:I

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$accountCredentials:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getAccountCredentialsForClone, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
