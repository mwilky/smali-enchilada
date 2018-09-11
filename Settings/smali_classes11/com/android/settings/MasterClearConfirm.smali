.class public Lcom/android/settings/MasterClearConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MasterClearConfirm.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseEsims:Z

.field private mEraseSdCard:Z

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mPowerOnPsw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .line 56
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doMasterClear()V

    return-void
.end method

.method private doMasterClear()V
    .locals 5

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNoNeedPowerOnPassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "MasterClearConfirm"

    const-string v3, "--wipe_data"

    iget-object v4, p0, Lcom/android/settings/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->checkIfNeedPasswordToPowerOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "MasterClearConfirm"

    const-string v3, "--wipe_data"

    iget-object v4, p0, Lcom/android/settings/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "MasterClearConfirm"

    const-string v3, "--wipe_data"

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNoNeedPowerOnPassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "OPMasterClearConfirm"

    const-string v3, "--delete_data"

    iget-object v4, p0, Lcom/android/settings/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->checkIfNeedPasswordToPowerOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "OPMasterClearConfirm"

    const-string v3, "--delete_data"

    iget-object v4, p0, Lcom/android/settings/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "OPMasterClearConfirm"

    const-string v3, "--delete_data"

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const-string v1, "MasterClearConfim"

    const-string v2, "bootCommand Reboot failed (no permissions?)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/MasterClearConfirm;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "__"    # Landroid/content/DialogInterface;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 5

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 236
    .local v0, "currentTitle":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 237
    const v2, 0x7f0a0301

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    .local v1, "confirmationMessage":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "accessibleText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    .end local v2    # "accessibleText":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 3

    .line 200
    nop

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "require_password_to_decrypt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 200
    goto :goto_0

    .line 201
    :cond_0
    nop

    .line 199
    move v1, v2

    :goto_0
    return v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 263
    const/16 v0, 0x43

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 247
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 250
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "erase_sd"

    .line 251
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 252
    if-eqz v0, :cond_1

    const-string v3, "erase_esim"

    .line 253
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseEsims:Z

    .line 255
    if-eqz v0, :cond_2

    .line 256
    const-string v1, "power_on_psw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    .line 259
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 216
    nop

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 216
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 218
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "no_factory_reset"

    .line 219
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 218
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 220
    const v1, 0x7f0d0100

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 221
    :cond_0
    if-eqz v0, :cond_1

    .line 222
    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string v2, "no_factory_reset"

    .line 223
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/-$$Lambda$MasterClearConfirm$weRgiuD2TQnm7jx9NX_-qHWwsHU;

    invoke-direct {v2, p0}, Lcom/android/settings/-$$Lambda$MasterClearConfirm$weRgiuD2TQnm7jx9NX_-qHWwsHU;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    .line 224
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 226
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 228
    :cond_1
    const v1, 0x7f0d00ff

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 229
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->setAccessibilityTitle()V

    .line 231
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v1
.end method
