.class public Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothPairingDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$BluetoothPairingDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BTPairingDialogFragment"


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/AlertDialog;

.field private mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field private mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

.field private mPairingView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createConfirmationDialog()Landroid/app/AlertDialog;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120308

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1202fa

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1202fc

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createConsentDialog()Landroid/app/AlertDialog;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConfirmationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createDisplayPasskeyOrPinDialog()Landroid/app/AlertDialog;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120308

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->notifyDialogDisplayed()V

    return-object v0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0412

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0335

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0053

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x7f0a040d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f120309

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0a0573

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isProfileReady()Z

    move-result v7

    const/16 v9, 0x8

    if-eqz v7, :cond_0

    nop

    move v7, v9

    goto :goto_0

    :cond_0
    nop

    move v7, v8

    :goto_0
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->setContactSharingState()V

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getContactSharingState()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v7, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$r7iz4I0mbAZSn1y-rbFsqcyiwC0;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$r7iz4I0mbAZSn1y-rbFsqcyiwC0;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceVariantMessageId()I

    move-result v7

    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceVariantMessageHintId()I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v11}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceMaxPasskeyLength()I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v12}, Lcom/android/settings/bluetooth/BluetoothPairingController;->pairingCodeIsAlphanumeric()Z

    move-result v12

    if-eqz v12, :cond_1

    nop

    move v12, v8

    goto :goto_1

    :cond_1
    nop

    move v12, v9

    :goto_1
    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v12, -0x1

    if-eq v7, v12, :cond_2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    if-eq v10, v12, :cond_3

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v5, v8

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-object v0
.end method

.method private createUserEntryDialog()Landroid/app/AlertDialog;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120308

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createPinEntryView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$ItV61WjNe_T4YaZN6BYGTBHLdZc;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$ItV61WjNe_T4YaZN6BYGTBHLdZc;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a03fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a03fa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a040c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f120309

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    nop

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isProfileReady()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    nop

    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->setContactSharingState()V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getContactSharingState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isDisplayPairingKeyVariant()Z

    move-result v5

    if-eqz v5, :cond_1

    nop

    move v6, v7

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->hasPairingContent()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getPairingContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v0
.end method

.method public static synthetic lambda$createPinEntryView$1(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$createUserEntryDialog$0(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Landroid/content/DialogInterface;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getPairingViewText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method private setupDialog()Landroid/app/AlertDialog;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    const-string v1, "BTPairingDialogFragment"

    const-string v2, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createDisplayPasskeyOrPinDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConsentDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createUserEntryDialog()Landroid/app/AlertDialog;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isPasskeyValid(Landroid/text/Editable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateUserInput(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x265

    return v0
.end method

.method getPairingViewText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getmDialog()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method isPairingControllerSet()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPairingDialogActivitySet()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onDialogPositiveClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onDialogNegativeClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setupDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setPairingDialogActivity() before showing dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setPairingController() before showing dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method setPairingController(Lcom/android/settings/bluetooth/BluetoothPairingController;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The controller can only be set once. Forcibly replacing it will lead to undefined behavior"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pairing dialog activity can only be set once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
