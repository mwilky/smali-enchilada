.class public Lcom/android/settings/IccLockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final CURRENT_TAB:Ljava/lang/String; = "currentTab"

.field private static final DBG:Z = true

.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialogError"

.field private static final DIALOG_PIN:Ljava/lang/String; = "dialogPin"

.field private static final DIALOG_STATE:Ljava/lang/String; = "dialogState"

.field private static final ENABLE_TO_STATE:Ljava/lang/String; = "enableState"

.field private static final ICC_LOCK_MODE:I = 0x1

.field private static final ICC_NEW_MODE:I = 0x3

.field private static final ICC_OLD_MODE:I = 0x2

.field private static final ICC_REENTER_MODE:I = 0x4

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG_CHANGE_ICC_PIN_COMPLETE:I = 0x65

.field private static final MSG_ENABLE_ICC_PIN_COMPLETE:I = 0x64

.field private static final MSG_SIM_STATE_CHANGED:I = 0x66

.field private static final NEW_PINCODE:Ljava/lang/String; = "newPinCode"

.field private static final OFF_MODE:I = 0x0

.field private static final OLD_PINCODE:Ljava/lang/String; = "oldPinCode"

.field private static final PIN_DIALOG:Ljava/lang/String; = "sim_pin"

.field private static final PIN_TOGGLE:Ljava/lang/String; = "sim_toggle"

.field private static final TAG:Ljava/lang/String; = "IccLockSettings"


# instance fields
.field private mDialogState:I

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinToggle:Landroid/support/v14/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 121
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    new-instance v0, Lcom/android/settings/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 564
    new-instance v0, Lcom/android/settings/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$4;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettings;ZILjava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Throwable;

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/IccLockSettings;->iccLockChanged(ZILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .line 62
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .line 62
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .line 62
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .line 62
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 5
    .param p1, "attemptsRemaining"    # I

    .line 519
    if-nez p1, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121526

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 521
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 522
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f100044

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 523
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120dc8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    .restart local v0    # "displayMessage":Ljava/lang/String;
    :goto_1
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-object v0
.end method

.method static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const v1, 0x7f12102f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 158
    :cond_0
    const v1, 0x7f12102e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "summary":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private iccLockChanged(ZILjava/lang/Throwable;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I
    .param p3, "exception"    # Ljava/lang/Throwable;

    .line 473
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 476
    :cond_0
    instance-of v1, p3, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_3

    .line 477
    move-object v1, p3

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 478
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 482
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f121040

    .line 484
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 484
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 486
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f12103f

    .line 487
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 487
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 492
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 493
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 494
    return-void
.end method

.method private iccPinChanged(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .line 497
    if-nez p1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 507
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 508
    return-void
.end method

.method static isIccLockEnabled()Z
    .locals 1

    .line 151
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .line 534
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 535
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private resetDialogState()V
    .locals 1

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 543
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 544
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 545
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 547
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 374
    const-string v0, ""

    .line 375
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const v2, 0x7f121010

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 391
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121046

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 387
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121029

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 389
    goto :goto_1

    .line 383
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f12102b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 385
    goto :goto_1

    .line 377
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12102c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 378
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 381
    nop

    .line 395
    :goto_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 400
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 2

    .line 359
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 360
    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 364
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    .line 366
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 367
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 370
    :cond_1
    return-void
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 467
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 469
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 470
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .line 511
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 512
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 514
    return-void
.end method

.method private updatePreferences()V
    .locals 4

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "pinToggleState":Z
    const/4 v1, 0x0

    .line 266
    .local v1, "pinDialogState":Z
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 268
    .local v2, "cardState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 271
    :cond_0
    const/4 v0, 0x1

    .line 272
    const/4 v1, 0x1

    .line 276
    .end local v2    # "cardState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 280
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 281
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 285
    :cond_3
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 317
    const v0, 0x7f12071a

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 289
    const/16 v0, 0x38

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->finish()V

    .line 172
    return-void

    .line 175
    :cond_0
    const v0, 0x7f1600b9

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 177
    const-string v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 178
    const-string v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    .line 179
    if-eqz p1, :cond_1

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 181
    const-string v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 182
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 183
    const-string v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 186
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 193
    const-string v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 194
    goto :goto_0

    .line 188
    :pswitch_1
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 189
    nop

    .line 203
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setPersistent(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 209
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 215
    move-object/from16 v3, p3

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 217
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    .line 218
    .local v5, "numSims":I
    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    .line 219
    const v7, 0x7f0d00a7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 220
    .local v7, "view":Landroid/view/View;
    const v9, 0x7f0a03f9

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 221
    .local v9, "prefs_container":Landroid/view/ViewGroup;
    invoke-static {v2, v7, v9, v8}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 222
    invoke-super {v0, v1, v9, v3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v10

    .line 223
    .local v10, "prefs":Landroid/view/View;
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 225
    const v11, 0x1020012

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TabHost;

    iput-object v11, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    .line 226
    const v11, 0x1020013

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TabWidget;

    iput-object v11, v0, Lcom/android/settings/IccLockSettings;->mTabWidget:Landroid/widget/TabWidget;

    .line 227
    const v11, 0x102000a

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    iput-object v11, v0, Lcom/android/settings/IccLockSettings;->mListView:Landroid/widget/ListView;

    .line 229
    iget-object v11, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v11}, Landroid/widget/TabHost;->setup()V

    .line 230
    iget-object v11, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v12, v0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 231
    iget-object v11, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v11}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v11

    .line 234
    .local v11, "sm":Landroid/telephony/SubscriptionManager;
    move v12, v8

    .local v12, "i":I
    :goto_0
    if-ge v12, v5, :cond_1

    .line 235
    invoke-virtual {v11, v12}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v13

    .line 236
    .local v13, "subInfo":Landroid/telephony/SubscriptionInfo;
    iget-object v14, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 237
    if-nez v13, :cond_0

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v17, v4

    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    .local v17, "tm":Landroid/telephony/TelephonyManager;
    new-array v4, v6, [Ljava/lang/Object;

    add-int/lit8 v6, v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v4, v16

    const v6, 0x7f121018

    invoke-virtual {v8, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 239
    .end local v17    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    move-object/from16 v17, v4

    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v17    # "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 237
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-direct {v0, v15, v4}, Lcom/android/settings/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 234
    .end local v13    # "subInfo":Landroid/telephony/SubscriptionInfo;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v17

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_0

    .line 241
    .end local v12    # "i":I
    .end local v17    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    move-object/from16 v17, v4

    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v17    # "tm":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 243
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v4, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    .line 244
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    :goto_2
    iput-object v6, v0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 246
    if-eqz v3, :cond_3

    const-string v6, "currentTab"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 247
    iget-object v6, v0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "currentTab"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 249
    :cond_3
    return-object v7

    .line 251
    .end local v7    # "view":Landroid/view/View;
    .end local v9    # "prefs_container":Landroid/view/ViewGroup;
    .end local v10    # "prefs":Landroid/view/View;
    .end local v11    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v17    # "tm":Landroid/telephony/TelephonyManager;
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    move-object/from16 v17, v4

    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v17    # "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 252
    invoke-super/range {p0 .. p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    return-object v4
.end method

.method public onPause()V
    .locals 2

    .line 311
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 313
    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .line 404
    if-nez p2, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 406
    return-void

    .line 409
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 413
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 414
    return-void

    .line 416
    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 434
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121042

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 436
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 437
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 438
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 440
    :cond_2
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 441
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 428
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 429
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 430
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 431
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 432
    goto :goto_0

    .line 421
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 422
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 423
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 424
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 425
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 426
    goto :goto_0

    .line 418
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    .line 419
    nop

    .line 445
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 449
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 453
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 454
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 455
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p1, v0, :cond_1

    .line 457
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 458
    const/4 v0, 0x0

    return v0

    .line 460
    :cond_1
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 294
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 307
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .line 327
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 347
    goto :goto_0

    .line 340
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    goto :goto_0

    .line 336
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    goto :goto_0

    .line 350
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "currentTab"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 258
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 259
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    .line 260
    return-void
.end method
