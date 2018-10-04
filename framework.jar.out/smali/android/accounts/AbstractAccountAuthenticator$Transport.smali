.class Landroid/accounts/AbstractAccountAuthenticator$Transport;
.super Landroid/accounts/IAccountAuthenticator$Stub;
.source "AbstractAccountAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AbstractAccountAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AbstractAccountAuthenticator;


# direct methods
.method private constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;)V
    .locals 0

    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticator$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AbstractAccountAuthenticator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$Transport;-><init>(Landroid/accounts/AbstractAccountAuthenticator;)V

    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_0

    const-string v3, "[]"

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/accounts/AbstractAccountAuthenticator;->addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_2
    const-string v1, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    const-string/jumbo v2, "null bundle returned"

    invoke-interface {p1, v1, v2}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "addAccount"

    invoke-static {v1, p1, v2, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->addAccountFromCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "addAccountFromCredentials"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmCredentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v2, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v2, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v2, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_1
    const-string v1, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmCredentials: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "confirmCredentials"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "editProperties"

    invoke-static {v1, p1, v2, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public finishSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSession: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v2, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v2, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v2, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->finishSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_1
    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSession: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "finishSession"

    invoke-static {v1, p1, v2, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "getAccountCredentialsForCloning"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "getAccountRemovalAllowed"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v2, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v2, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_1
    const-string v1, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "getAuthToken"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthTokenLabel: authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authTokenLabelKey"

    iget-object v3, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-virtual {v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    nop

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    const-string v1, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthTokenLabel: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "getAuthTokenLabel"

    invoke-static {v1, p1, v2, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "hasFeatures"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->isCredentialsUpdateSuggested(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "isCredentialsUpdateSuggested"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAddAccountSession: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_0

    const-string v3, "[]"

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/accounts/AbstractAccountAuthenticator;->startAddAccountSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_2
    const-string v1, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAddAccountSession: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string/jumbo v2, "startAddAccountSession"

    invoke-static {v1, p1, v2, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUpdateCredentialsSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v2, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v2, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->startUpdateCredentialsSession(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_1
    const-string v1, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUpdateCredentialsSession: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string/jumbo v2, "startUpdateCredentialsSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCredentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v2, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v2, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_1
    const-string v1, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCredentials: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string/jumbo v2, "updateCredentials"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
