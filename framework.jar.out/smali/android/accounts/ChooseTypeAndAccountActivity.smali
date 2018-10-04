.class public Landroid/accounts/ChooseTypeAndAccountActivity;
.super Landroid/app/Activity;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_ADD_ACCOUNT_AUTH_TOKEN_TYPE_STRING:Ljava/lang/String; = "authTokenType"

.field public static final EXTRA_ADD_ACCOUNT_OPTIONS_BUNDLE:Ljava/lang/String; = "addAccountOptions"

.field public static final EXTRA_ADD_ACCOUNT_REQUIRED_FEATURES_STRING_ARRAY:Ljava/lang/String; = "addAccountRequiredFeatures"

.field public static final EXTRA_ALLOWABLE_ACCOUNTS_ARRAYLIST:Ljava/lang/String; = "allowableAccounts"

.field public static final EXTRA_ALLOWABLE_ACCOUNT_TYPES_STRING_ARRAY:Ljava/lang/String; = "allowableAccountTypes"

.field public static final EXTRA_ALWAYS_PROMPT_FOR_ACCOUNT:Ljava/lang/String; = "alwaysPromptForAccount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DESCRIPTION_TEXT_OVERRIDE:Ljava/lang/String; = "descriptionTextOverride"

.field public static final EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selectedAccount"

.field private static final KEY_INSTANCE_STATE_ACCOUNTS_LIST:Ljava/lang/String; = "accountsList"

.field private static final KEY_INSTANCE_STATE_EXISTING_ACCOUNTS:Ljava/lang/String; = "existingAccounts"

.field private static final KEY_INSTANCE_STATE_PENDING_REQUEST:Ljava/lang/String; = "pendingRequest"

.field private static final KEY_INSTANCE_STATE_SELECTED_ACCOUNT_NAME:Ljava/lang/String; = "selectedAccountName"

.field private static final KEY_INSTANCE_STATE_SELECTED_ADD_ACCOUNT:Ljava/lang/String; = "selectedAddAccount"

.field private static final KEY_INSTANCE_STATE_VISIBILITY_LIST:Ljava/lang/String; = "visibilityList"

.field public static final REQUEST_ADD_ACCOUNT:I = 0x2

.field public static final REQUEST_CHOOSE_TYPE:I = 0x1

.field public static final REQUEST_NULL:I = 0x0

.field private static final SELECTED_ITEM_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AccountChooser"


# instance fields
.field private mAccounts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private mDescriptionOverride:Ljava/lang/String;

.field private mDisallowAddAccounts:Z

.field private mDontShowPicker:Z

.field private mExistingAccounts:[Landroid/os/Parcelable;

.field private mOkButton:Landroid/widget/Button;

.field private mPendingRequest:I

.field private mPossiblyVisibleAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAccountName:Ljava/lang/String;

.field private mSelectedAddNewAccount:Z

.field private mSelectedItemIndex:I

.field private mSetOfAllowableAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mSetOfRelevantAccountTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    iput v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$002(Landroid/accounts/ChooseTypeAndAccountActivity;I)I
    .locals 0

    iput p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    return p1
.end method

.method static synthetic access$100(Landroid/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/accounts/AccountManager;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    iget-object v7, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "allowableAccounts"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    move-object v4, v3

    check-cast v4, Landroid/accounts/Account;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1
    return-object v0
.end method

.method private getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "allowableAccountTypes"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    iget-object v7, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    return-object v0
.end method

.method private onAccountSelected(Landroid/accounts/Account;)V
    .locals 3

    const-string v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selected account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private overrideDescriptionIfSupplied(Ljava/lang/String;)V
    .locals 2

    const v0, 0x102022c

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final populateUIAccountList([Ljava/lang/String;)V
    .locals 4

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000f

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    new-instance v2, Landroid/accounts/ChooseTypeAndAccountActivity$1;

    invoke-direct {v2, p0}, Landroid/accounts/ChooseTypeAndAccountActivity$1;-><init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const-string v1, "AccountChooser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be selected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x1030134

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method private setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v2}, Landroid/accounts/AccountManager;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    return-void

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "authAccount"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "accountType"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    const-string v4, "AccountChooser"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AccountChooser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChooseTypeAndAccountActivity.setResultAndFinish: selected account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    return-void
.end method

.method private startChooseAccountTypeActivity()V
    .locals 4

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountChooser"

    const-string v1, "ChooseAccountTypeActivity.startChooseAccountTypeActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/accounts/ChooseAccountTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "allowableAccountTypes"

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "allowableAccountTypes"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "addAccountOptions"

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "addAccountOptions"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "addAccountRequiredFeatures"

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "addAccountRequiredFeatures"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "authTokenType"

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authTokenType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "AccountChooser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChooseTypeAndAccountActivity.onActivityResult(reqCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", resCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", extras="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    if-nez p2, :cond_4

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    :cond_3
    return-void

    :cond_4
    const/4 v2, -0x1

    if-ne p2, v2, :cond_e

    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    if-eqz p3, :cond_5

    const-string v2, "accountType"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v2, "AccountChooser"

    const-string v3, "ChooseTypeAndAccountActivity.onActivityResult: unable to find account type, pretending the request was canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    if-ne p1, v1, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_7

    const-string v4, "authAccount"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "accountType"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    if-eqz v2, :cond_8

    if-nez v3, :cond_b

    :cond_8
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    array-length v7, v6

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_9

    aget-object v9, v6, v8

    move-object v10, v9

    check-cast v10, Landroid/accounts/Account;

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_9
    array-length v6, v4

    move v7, v0

    :goto_2
    if-ge v7, v6, :cond_b

    aget-object v8, v4, v7

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v2, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    goto :goto_3

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    if-nez v2, :cond_c

    if-eqz v3, :cond_d

    :cond_c
    invoke-direct {p0, v2, v3}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_4
    const-string v2, "AccountChooser"

    const-string v3, "ChooseTypeAndAccountActivity.onActivityResult: unable to find added account, pretending the request was canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v2, "AccountChooser"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "AccountChooser"

    const-string v2, "ChooseTypeAndAccountActivity.onActivityResult: canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    return-void
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooseTypeAndAccountActivity.onCreate(savedInstanceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v5

    iput v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "no_modify_accounts"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get caller identity \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    invoke-direct {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    const-string v5, "descriptionTextOverride"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string/jumbo v0, "pendingRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    const-string v0, "existingAccounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    const-string/jumbo v0, "selectedAccountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    const-string/jumbo v0, "selectedAddAccount"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    const-string v0, "accountsList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const-string/jumbo v5, "visibilityList"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    move v6, v3

    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    aget-object v8, v0, v6

    check-cast v8, Landroid/accounts/Account;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    iput v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    const-string/jumbo v0, "selectedAccount"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    if-eqz v0, :cond_4

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    :cond_4
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iput-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    :goto_2
    const-string v0, "AccountChooser"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selected account name is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v5, 0x3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    goto :goto_3

    :cond_7
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->requestWindowFeature(I)Z

    const v0, 0x1090036

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    iput-boolean v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    :cond_8
    iget-boolean v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_9
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    :cond_b
    :goto_4
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    iget-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    invoke-direct {p0, v5, v6, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I

    move-result v5

    iput v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x109004a

    invoke-virtual {p0, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->overrideDescriptionIfSupplied(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->populateUIAccountList([Ljava/lang/String;)V

    const v5, 0x102001a

    invoke-virtual {p0, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    iget v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_c

    goto :goto_5

    :cond_c
    move v1, v3

    :goto_5
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountChooser"

    const-string v1, "ChooseTypeAndAccountActivity.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOkButtonClicked(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onAccountSelected(Landroid/accounts/Account;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "pendingRequest"

    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "existingAccounts"

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_0
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "selectedAddAccount"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "selectedAddAccount"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "selectedAccountName"

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    aput-object v6, v0, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move v2, v5

    goto :goto_1

    :cond_3
    const-string v3, "accountsList"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string/jumbo v3, "visibilityList"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v3

    iput-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x10000001

    and-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    nop

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorMessage"

    const-string v2, "error communicating with server"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    return-void

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    return-void
.end method

.method protected runAddAccountForAuthenticator(Ljava/lang/String;)V
    .locals 11

    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runAddAccountForAuthenticator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addAccountOptions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addAccountRequiredFeatures"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authTokenType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, v10

    move-object v5, v1

    move-object v6, v0

    move-object v8, p0

    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method
