.class public Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTIVITY_REQUEST_CONFIRM_CREDENTIAL_FOR_WEAKER_ENCRYPTION:I = 0x1

.field private static final DIALOG_ID_DISABLE_WARNING:I = 0x2

.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private mShownDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private createConfirmCredentialReasonMessage()Ljava/lang/String;
    .locals 5

    const v0, 0x7f1205dc

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1205de

    goto :goto_0

    :cond_1
    const v0, 0x7f1205dd

    nop

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    nop

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private handleConfirmServiceEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method private isFullDiskEncrypted()Z
    .locals 1

    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    return v0
.end method

.method private updateSwitchBarToggleSwitch()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x247

    return v0

    :cond_0
    const/16 v0, 0x248

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isFullDiskEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "require_password_to_decrypt"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    iget v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->isFullDiskEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->createConfirmCredentialReasonMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    move v0, v1

    nop

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12056a

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f120569

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_1
    iput v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->createCapabilitiesDialog(Landroid/app/Activity;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    const-string v0, "settings_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings_component_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    :cond_0
    const-string v2, "component_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    return-void
.end method
