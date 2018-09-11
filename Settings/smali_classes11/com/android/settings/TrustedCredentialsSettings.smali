.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$AdapterData;,
        Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# static fields
.field public static final ARG_SHOW_NEW_FOR_USER:Ljava/lang/String; = "ARG_SHOW_NEW_FOR_USER"

.field private static final REQUEST_CONFIRM_CREDENTIALS:I = 0x1

.field private static final SAVED_CONFIRMED_CREDENTIAL_USERS:Ljava/lang/String; = "ConfirmedCredentialUsers"

.field private static final SAVED_CONFIRMING_CREDENTIAL_USER:Ljava/lang/String; = "ConfirmingCredentialUser"

.field private static final TAG:Ljava/lang/String; = "TrustedCredentialsSettings"

.field private static final USER_ACTION:Ljava/lang/String; = "com.android.settings.TRUSTED_CREDENTIALS_USER"


# instance fields
.field private mAliasLoaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

.field private mConfirmedCredentialUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

.field private mConfirmingCredentialUser:I

.field private mGroupAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mKeyChainConnectionByProfileId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTrustAllCaUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 164
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .line 80
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/TrustedCredentialsSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->startConfirmCredential(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .line 80
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .line 80
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .line 80
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/TrustedCredentialsSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->isTrustAllCaCertModeInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .line 80
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/settings/TrustedCredentialsSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # Ljava/util/List;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showTrustAllCaDialog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    .line 80
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .line 80
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 12
    .param p1, "tab"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 278
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$300(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 280
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$200(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 281
    .local v0, "systemSpec":Landroid/widget/TabHost$TabSpec;
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 283
    new-instance v1, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 284
    .local v1, "groupAdapter":Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupCount()I

    move-result v2

    .line 288
    .local v2, "profilesSize":I
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->hasMultiAppProfiles(Landroid/os/UserManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    add-int/lit8 v2, v2, -0x1

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 294
    .local v3, "contentView":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 297
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupCount()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 298
    invoke-virtual {v1, v6}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    .line 300
    .local v7, "isWork":Z
    invoke-virtual {v1, v6}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    const/16 v9, 0x3e7

    if-ne v8, v9, :cond_1

    .line 301
    goto :goto_4

    .line 304
    :cond_1
    invoke-virtual {v1, v6}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildAdapter(I)Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;

    move-result-object v8

    .line 306
    .local v8, "adapter":Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;
    const v9, 0x7f0d02b0

    .line 307
    invoke-virtual {v4, v9, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 308
    .local v9, "containerView":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v9}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->setContainerView(Landroid/widget/LinearLayout;)V

    .line 310
    const/4 v10, 0x1

    if-le v2, v10, :cond_2

    move v11, v10

    goto :goto_1

    :cond_2
    move v11, v5

    :goto_1
    invoke-virtual {v8, v11}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->showHeader(Z)V

    .line 311
    invoke-virtual {v8, v7}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->showDivider(Z)V

    .line 312
    const/4 v11, 0x2

    if-gt v2, v11, :cond_3

    :goto_2
    goto :goto_3

    :cond_3
    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    move v10, v5

    :goto_3
    invoke-virtual {v8, v10}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->setExpandIfAvailable(Z)V

    .line 313
    if-eqz v7, :cond_5

    .line 314
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 316
    :cond_5
    invoke-virtual {v3, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 297
    .end local v7    # "isWork":Z
    .end local v8    # "adapter":Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;
    .end local v9    # "containerView":Landroid/widget/LinearLayout;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 319
    .end local v6    # "i":I
    :cond_6
    return-void
.end method

.method private closeKeyChainConnections()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 270
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 271
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 274
    .end local v1    # "n":I
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isTrustAllCaCertModeInProgress()Z
    .locals 2

    .line 933
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 2
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 953
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    .line 954
    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 956
    return-void
.end method

.method private showTrustAllCaDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    .line 937
    .local p1, "unapprovedCertHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/TrustedCredentialsSettings$CertHolder;>;"
    nop

    .line 938
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 937
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 939
    .local v0, "arr":[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    new-instance v1, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    .line 940
    invoke-virtual {v1, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/TrustedCredentialsSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    .line 941
    invoke-virtual {v1, v2}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 949
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 950
    return-void
.end method

.method private startConfirmCredential(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 326
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 328
    .local v0, "newIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 329
    const/4 v1, 0x0

    return v1

    .line 331
    :cond_0
    iput p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 332
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 333
    return v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 98
    const/16 v0, 0x5c

    return v0
.end method

.method public getX509CertsFromCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/util/List;
    .locals 10
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 960
    const/4 v0, 0x0

    .line 962
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    .line 965
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 966
    .local v3, "service":Landroid/security/IKeyChainService;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 967
    .local v4, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 968
    .local v6, "n":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v7

    .line 969
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 970
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v8, v5}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v8

    .line 971
    .local v8, "encodedCertificate":[B
    invoke-static {v8}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 972
    .local v9, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    .end local v8    # "encodedCertificate":[B
    .end local v9    # "certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 974
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "service":Landroid/security/IKeyChainService;
    .end local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "n":I
    .end local v7    # "i":I
    :cond_0
    monitor-exit v1

    .line 978
    goto :goto_1

    .line 974
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 975
    :catch_0
    move-exception v1

    .line 976
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TrustedCredentialsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException while retrieving certificate chain for root "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 976
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 251
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 252
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 253
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 256
    .local v1, "listener":Ljava/util/function/IntConsumer;
    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 257
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 258
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 260
    if-eqz v1, :cond_0

    .line 261
    invoke-interface {v1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 265
    .end local v0    # "userId":I
    .end local v1    # "listener":Ljava/util/function/IntConsumer;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 182
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 185
    const-string v1, "keyguard"

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 187
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ARG_SHOW_NEW_FOR_USER"

    const/16 v3, -0x2710

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    .line 189
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    .line 190
    iput v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string v1, "ConfirmingCredentialUser"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 194
    const-string v1, "ConfirmedCredentialUsers"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 196
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 201
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 203
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    const v2, 0x7f1211d3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 210
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 222
    const v0, 0x7f0d02b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 223
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 224
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 226
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    .line 237
    .local v1, "aliasLoader":Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    invoke-virtual {v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->cancel(Z)Z

    .line 238
    .end local v1    # "aliasLoader":Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 240
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    invoke-virtual {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->cancel(Z)Z

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->closeKeyChainConnections()V

    .line 246
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    .line 247
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 215
    const-string v0, "ConfirmedCredentialUsers"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 217
    const-string v0, "ConfirmingCredentialUser"

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    return-void
.end method

.method public removeOrInstallCert(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 2
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 984
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 985
    return-void
.end method

.method public startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "onCredentialConfirmedListener"    # Ljava/util/function/IntConsumer;

    .line 990
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    const/4 v0, 0x0

    return v0

    .line 995
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->startConfirmCredential(I)Z

    move-result v0

    .line 996
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 997
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 999
    :cond_1
    return v0
.end method
