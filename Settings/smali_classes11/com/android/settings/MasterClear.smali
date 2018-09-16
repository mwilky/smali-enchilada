.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;


# static fields
.field static final CREDENTIAL_CONFIRM_REQUEST:I = 0x38
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ERASE_ESIMS_EXTRA:Ljava/lang/String; = "erase_esim"

.field static final ERASE_EXTERNAL_EXTRA:Ljava/lang/String; = "erase_sd"

.field static final KEYGUARD_REQUEST:I = 0x37
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_SHOW_ESIM_RESET_CHECKBOX:Ljava/lang/String; = "masterclear.allow_retain_esim_profiles_after_fdr"

.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mContentView:Landroid/view/View;

.field mEsimStorage:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mEsimStorageContainer:Landroid/view/View;

.field mExternalStorage:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mExternalStorageContainer:Landroid/view/View;

.field mInitiateButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected final mInitiateListener:Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mOPFactoryResetConfirmCategory:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

.field private mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field mScrollView:Landroid/widget/ScrollView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 244
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->showFinalConfirmation(Ljava/lang/String;)V

    return-void
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "description"    # Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    return-void

    .line 436
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 437
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 438
    .local v0, "vGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 439
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 440
    .local v2, "nextChild":Landroid/view/View;
    invoke-direct {p0, v2, p2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 438
    .end local v2    # "nextChild":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v0    # "vGroup":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 443
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 444
    .local v0, "vText":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 445
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    .end local v0    # "vText":Landroid/widget/TextView;
    :cond_3
    :goto_1
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .line 450
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 30
    .param p1, "um"    # Landroid/os/UserManager;

    move-object/from16 v1, p0

    .line 455
    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 456
    .local v2, "accountsLabel":Landroid/view/View;
    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0010

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 457
    .local v3, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 460
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 461
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 463
    .local v7, "profilesSize":I
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 465
    .local v8, "mgr":Landroid/accounts/AccountManager;
    const-string v0, "layout_inflater"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/LayoutInflater;

    .line 468
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 469
    .local v0, "accountsCount":I
    move v11, v0

    const/4 v0, 0x0

    .local v0, "profileIndex":I
    .local v11, "accountsCount":I
    :goto_0
    move v12, v0

    .end local v0    # "profileIndex":I
    .local v12, "profileIndex":I
    if-ge v12, v7, :cond_9

    .line 470
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 471
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    .line 472
    .local v14, "profileId":I
    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 473
    .local v15, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v8, v14}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v10

    .line 474
    .local v10, "accounts":[Landroid/accounts/Account;
    move-object/from16 v16, v6

    array-length v6, v10

    .line 475
    .local v6, "N":I
    .local v16, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v6, :cond_0

    .line 476
    nop

    .line 469
    move-object/from16 v18, v8

    goto/16 :goto_c

    .line 478
    :cond_0
    add-int/2addr v11, v6

    .line 480
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 481
    move-object/from16 v18, v8

    invoke-virtual {v0, v14}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v8

    .line 482
    .local v8, "descs":[Landroid/accounts/AuthenticatorDescription;
    .local v18, "mgr":Landroid/accounts/AccountManager;
    move/from16 v19, v11

    array-length v11, v8

    .line 484
    .local v11, "M":I
    .local v19, "accountsCount":I
    move/from16 v20, v14

    const v14, 0x1020016

    .end local v14    # "profileId":I
    .local v20, "profileId":I
    const/4 v0, 0x1

    if-le v7, v0, :cond_2

    .line 485
    invoke-static {v9, v3}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 486
    .local v0, "titleView":Landroid/view/View;
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Landroid/widget/TextView;

    .line 487
    .local v14, "titleText":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v17

    if-eqz v17, :cond_1

    const v17, 0x7f1203af

    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .local v21, "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    move-object/from16 v21, v13

    move/from16 v13, v17

    goto :goto_2

    .line 488
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v13    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const v17, 0x7f1203ae

    goto :goto_1

    .line 487
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_2
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(I)V

    .line 489
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .end local v0    # "titleView":Landroid/view/View;
    .end local v14    # "titleText":Landroid/widget/TextView;
    goto :goto_3

    .line 492
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v13    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    move-object/from16 v21, v13

    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v6, :cond_8

    .line 493
    aget-object v14, v10, v13

    .line 494
    .local v14, "account":Landroid/accounts/Account;
    const/4 v0, 0x0

    .line 495
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_5
    move/from16 v22, v17

    .end local v17    # "j":I
    .local v22, "j":I
    move-object/from16 v23, v0

    move/from16 v0, v22

    if-ge v0, v11, :cond_4

    .line 496
    .end local v22    # "j":I
    .local v0, "j":I
    .local v23, "desc":Landroid/accounts/AuthenticatorDescription;
    move/from16 v24, v6

    iget-object v6, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    .end local v6    # "N":I
    .local v24, "N":I
    move-object/from16 v25, v10

    aget-object v10, v8, v0

    .end local v10    # "accounts":[Landroid/accounts/Account;
    .local v25, "accounts":[Landroid/accounts/Account;
    iget-object v10, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 497
    aget-object v6, v8, v0

    .line 498
    .end local v23    # "desc":Landroid/accounts/AuthenticatorDescription;
    .local v6, "desc":Landroid/accounts/AuthenticatorDescription;
    goto :goto_6

    .line 495
    .end local v6    # "desc":Landroid/accounts/AuthenticatorDescription;
    .restart local v23    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_3
    add-int/lit8 v17, v0, 0x1

    .end local v0    # "j":I
    .restart local v17    # "j":I
    move-object/from16 v0, v23

    move/from16 v6, v24

    move-object/from16 v10, v25

    goto :goto_5

    .line 501
    .end local v17    # "j":I
    .end local v24    # "N":I
    .end local v25    # "accounts":[Landroid/accounts/Account;
    .local v6, "N":I
    .restart local v10    # "accounts":[Landroid/accounts/Account;
    :cond_4
    move/from16 v24, v6

    move-object/from16 v25, v10

    move-object/from16 v6, v23

    .end local v10    # "accounts":[Landroid/accounts/Account;
    .end local v23    # "desc":Landroid/accounts/AuthenticatorDescription;
    .local v6, "desc":Landroid/accounts/AuthenticatorDescription;
    .restart local v24    # "N":I
    .restart local v25    # "accounts":[Landroid/accounts/Account;
    :goto_6
    if-nez v6, :cond_5

    .line 502
    const-string v0, "MasterClear"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v8

    const-string v8, "No descriptor for account name="

    .end local v8    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .local v26, "descs":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " type="

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    nop

    .line 492
    move/from16 v28, v11

    goto/16 :goto_b

    .line 506
    .end local v26    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .restart local v8    # "descs":[Landroid/accounts/AuthenticatorDescription;
    :cond_5
    move-object/from16 v26, v8

    .end local v8    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .restart local v26    # "descs":[Landroid/accounts/AuthenticatorDescription;
    const/4 v0, 0x0

    move-object v8, v0

    .line 508
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v6, Landroid/accounts/AuthenticatorDescription;->iconId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_6

    .line 509
    :try_start_1
    iget-object v0, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v15}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 511
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v27, v8

    :try_start_2
    iget v8, v6, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 512
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .local v27, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 511
    invoke-virtual {v10, v8, v15}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v8
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v8

    .end local v27    # "icon":Landroid/graphics/drawable/Drawable;
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_7

    .line 516
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    goto :goto_8

    .line 514
    :catch_1
    move-exception v0

    move/from16 v28, v11

    goto :goto_9

    .end local v27    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v28, v11

    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_9

    .line 518
    .end local v27    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v27, v8

    .line 519
    :goto_7
    move-object/from16 v27, v8

    move/from16 v28, v11

    goto :goto_a

    .line 516
    :catch_3
    move-exception v0

    move-object/from16 v27, v8

    .line 517
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v27    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_8
    const-string v8, "MasterClear"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v11

    const-string v11, "Invalid icon id for account type "

    .end local v11    # "M":I
    .local v28, "M":I
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_a

    .line 514
    .end local v27    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v28    # "M":I
    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "M":I
    :catch_4
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v28, v11

    .line 515
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "M":I
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v27    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v28    # "M":I
    :goto_9
    const-string v8, "MasterClear"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad package name for account type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 519
    :goto_a
    if-nez v27, :cond_7

    .line 520
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 523
    .end local v27    # "icon":Landroid/graphics/drawable/Drawable;
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, v27

    const v8, 0x7f0d00fe

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 524
    .local v8, "child":Landroid/view/View;
    const v10, 0x1020006

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    const v10, 0x1020016

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v10, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 492
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v8    # "child":Landroid/view/View;
    .end local v14    # "account":Landroid/accounts/Account;
    :goto_b
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .local v0, "i":I
    move/from16 v6, v24

    move-object/from16 v10, v25

    move-object/from16 v8, v26

    move/from16 v11, v28

    goto/16 :goto_4

    .line 469
    .end local v0    # "i":I
    .end local v15    # "userHandle":Landroid/os/UserHandle;
    .end local v20    # "profileId":I
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v24    # "N":I
    .end local v25    # "accounts":[Landroid/accounts/Account;
    .end local v26    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .end local v28    # "M":I
    :cond_8
    move/from16 v11, v19

    .end local v19    # "accountsCount":I
    .local v11, "accountsCount":I
    :goto_c
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "profileIndex":I
    .local v0, "profileIndex":I
    move-object/from16 v6, v16

    move-object/from16 v8, v18

    goto/16 :goto_0

    .line 530
    .end local v0    # "profileIndex":I
    .end local v16    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v18    # "mgr":Landroid/accounts/AccountManager;
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v8, "mgr":Landroid/accounts/AccountManager;
    :cond_9
    move-object/from16 v16, v6

    move-object/from16 v18, v8

    const/4 v0, 0x1

    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "mgr":Landroid/accounts/AccountManager;
    .restart local v16    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v18    # "mgr":Landroid/accounts/AccountManager;
    if-lez v11, :cond_a

    .line 531
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 532
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d

    .line 535
    :cond_a
    const/4 v6, 0x0

    :goto_d
    iget-object v8, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v10, 0x7f0a03c6

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 536
    .local v8, "otherUsers":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v10

    sub-int/2addr v10, v7

    if-lez v10, :cond_b

    goto :goto_e

    :cond_b
    move v0, v6

    .line 537
    .local v0, "hasOtherUsers":Z
    :goto_e
    if-eqz v0, :cond_c

    goto :goto_f

    :cond_c
    const/16 v10, 0x8

    move v6, v10

    :goto_f
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 538
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 128
    const v2, 0x7f120911

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 127
    invoke-virtual {v1, p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation(Ljava/lang/String;)V
    .locals 8
    .param p1, "psw"    # Ljava/lang/String;

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "erase_sd"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    const-string v1, "power_on_psw"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f120904

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 180
    return-void
.end method


# virtual methods
.method establishInitialState()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 297
    const-string v0, "op_optional_reset"

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 298
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 300
    const-string v0, "op_factory_reset_confirm"

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mOPFactoryResetConfirmCategory:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

    .line 301
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mOPFactoryResetConfirmCategory:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->setOnFactoryResetConfirmListener(Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;)V

    .line 388
    return-void
.end method

.method getAccountConfirmationIntent()Landroid/content/Intent;
    .locals 13
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 204
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f1200b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "accountType":Ljava/lang/String;
    const v2, 0x7f1200a8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "packageName":Ljava/lang/String;
    const v3, 0x7f1200a7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "className":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 208
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 209
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 214
    .local v4, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v4, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 215
    .local v6, "accounts":[Landroid/accounts/Account;
    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    .line 216
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 217
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 220
    .local v7, "requestAccountConfirmation":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 221
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 222
    .local v9, "resolution":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_1

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_1

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 224
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 227
    return-object v7

    .line 229
    :cond_1
    const-string v10, "MasterClear"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to resolve Activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v7    # "requestAccountConfirmation":Landroid/content/Intent;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "resolution":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 232
    :cond_2
    const-string v7, "MasterClear"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " accounts installed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return-object v5

    .line 210
    .end local v4    # "am":Landroid/accounts/AccountManager;
    .end local v6    # "accounts":[Landroid/accounts/Account;
    :cond_3
    :goto_1
    const-string v4, "MasterClear"

    const-string v6, "Resources not set for account confirmation."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v5
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 567
    const/16 v0, 0x42

    return v0
.end method

.method hasReachedBottom(Landroid/widget/ScrollView;)Z
    .locals 6
    .param p1, "scrollView"    # Landroid/widget/ScrollView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 422
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 423
    return v1

    .line 426
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 427
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 429
    .local v3, "diff":I
    if-gtz v3, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method protected isEuiccEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 416
    const-string v0, "euicc"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 417
    .local v0, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    return v1
.end method

.method isValidRequestCode(I)Z
    .locals 1
    .param p1, "requestCode"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 133
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v0, 0x38

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/MasterClear;->onActivityResultInternal(IILandroid/content/Intent;)V

    .line 140
    return-void
.end method

.method onActivityResultInternal(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClear;->isValidRequestCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 154
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 156
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x0

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x38

    if-eq v1, p1, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getAccountConfirmationIntent()Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->showAccountCredentialConfirmation(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_2
    const-string v1, "power_on_psw"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/MasterClear;->showFinalConfirmation(Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v0, 0x7f16008d

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->addPreferencesFromResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120911

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 117
    return-void
.end method

.method public onFactoryResetConfirmClick()V
    .locals 1

    .line 582
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/settings/MasterClear;->showFinalConfirmation(Ljava/lang/String;)V

    .line 585
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClear;->hasReachedBottom(Landroid/widget/ScrollView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 574
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mOptionalSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 575
    return v1

    .line 577
    :cond_0
    return v1
.end method

.method showAccountCredentialConfirmation(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 198
    const/16 v0, 0x38

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    return-void
.end method

.method showFinalConfirmation()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "erase_sd"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    const-string v1, "erase_esim"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/MasterClearConfirm;

    .line 189
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 191
    const v2, 0x7f120904

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 194
    return-void
.end method

.method showWipeEuicc()Z
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 399
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->isEuiccEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 400
    return v2

    .line 402
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 403
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v3, "euicc_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "development_settings_enabled"

    .line 404
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 403
    :goto_1
    return v2
.end method

.method showWipeEuiccCheckbox()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 410
    const-string v0, "masterclear.allow_retain_esim_profiles_after_fdr"

    .line 411
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 410
    return v0
.end method
