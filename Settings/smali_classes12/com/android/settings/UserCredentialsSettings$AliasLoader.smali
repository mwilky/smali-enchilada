.class Lcom/android/settings/UserCredentialsSettings$AliasLoader;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/settings/UserCredentialsSettings$Credential;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/UserCredentialsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings;)V

    return-void
.end method

.method private getCredentialsForUid(Landroid/security/KeyStore;I)Ljava/util/SortedMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "I)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v3, v0

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_8

    aget-object v8, v4, v7

    iget-object v9, v8, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->prefix:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_7

    aget-object v12, v9, v11

    invoke-virtual {v1, v12, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_6

    aget-object v6, v13, v15

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move-object/from16 v16, v4

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_1

    const-string v0, "profile_key_name_encrypt_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "profile_key_name_decrypt_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_5

    :cond_0
    const-string v0, "synthetic_password_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    if-ne v8, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p0

    :try_start_1
    invoke-direct {v4, v1, v0, v2}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->isAsymmetric(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_3

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    move-object/from16 v4, p0

    :cond_3
    invoke-interface {v3, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-nez v0, :cond_4

    move-object/from16 v17, v0

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-direct {v0, v6, v2}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v17, v0

    :goto_3
    iget-object v1, v0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-virtual {v1, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    :goto_4
    const-string v1, "UserCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to determine algorithm of key: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_5
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_2

    :cond_6
    move-object/from16 v16, v4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_1

    :cond_7
    move-object/from16 v16, v4

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_0

    :cond_8
    return-object v3
.end method

.method private isAsymmetric(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const v3, 0x10000002

    invoke-virtual {v0, v3}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    nop

    :cond_1
    :goto_0
    return v2

    :cond_2
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v4, "Key algorithm unknown"

    invoke-direct {v2, v4}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Failed to obtain information about key"

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/UnrecoverableKeyException;

    throw v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    const/16 v3, 0x3f2

    invoke-static {v1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCredentialsForUid(Landroid/security/KeyStore;I)Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0, v3}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCredentialsForUid(Landroid/security/KeyStore;I)Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/UserCredentialsSettings;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1212f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/UserCredentialsSettings;->setEmptyView(Landroid/view/View;)V

    nop

    :goto_1
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method
