.class public Landroid/accounts/ChooseAccountActivity;
.super Landroid/app/Activity;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;,
        Landroid/accounts/ChooseAccountActivity$ViewHolder;,
        Landroid/accounts/ChooseAccountActivity$AccountInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManager"


# instance fields
.field private mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

.field private mAccounts:[Landroid/os/Parcelable;

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private mResult:Landroid/os/Bundle;

.field private mTypeToAuthDescription:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    return-void
.end method

.method private getAuthDescriptions()V
    .locals 6

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    :try_start_0
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    iget v4, v2, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "AccountManager"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AccountManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No icon resource for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "AccountManager"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AccountManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No icon name for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    iget-object v1, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManagerResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManagerResponse;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    nop

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountManagerResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerResponse;

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    iput v2, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get caller identity \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "androidPackageName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "androidPackageName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;

    :cond_1
    iget v0, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "androidPackageName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system Uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tried to override packageName \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Landroid/accounts/ChooseAccountActivity;->getAuthDescriptions()V

    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v0, v0

    new-array v0, v0, [Landroid/accounts/ChooseAccountActivity$AccountInfo;

    nop

    :goto_1
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    new-instance v2, Landroid/accounts/ChooseAccountActivity$AccountInfo;

    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v3, v3, v1

    check-cast v3, Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v4, v4, v1

    check-cast v4, Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/accounts/ChooseAccountActivity$AccountInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const v1, 0x1090047

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseAccountActivity;->setContentView(I)V

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v0}, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;-><init>(Landroid/content/Context;I[Landroid/accounts/ChooseAccountActivity$AccountInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    new-instance v2, Landroid/accounts/ChooseAccountActivity$1;

    invoke-direct {v2, p0}, Landroid/accounts/ChooseAccountActivity$1;-><init>(Landroid/accounts/ChooseAccountActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v0, v0, p3

    check-cast v0, Landroid/accounts/Account;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v3, v4}, Landroid/accounts/AccountManager;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    :cond_0
    const-string v3, "AccountManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selected account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "authAccount"

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "accountType"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    return-void
.end method
