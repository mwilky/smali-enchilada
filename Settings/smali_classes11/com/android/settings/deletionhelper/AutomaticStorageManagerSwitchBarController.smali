.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;
.super Ljava/lang/Object;
.source "AutomaticStorageManagerSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final STORAGE_MANAGER_ENABLED_BY_DEFAULT_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDaysToRetainPreference:Landroid/support/v7/preference/Preference;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/support/v7/preference/Preference;Landroid/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mDaysToRetainPreference:Landroid/support/v7/preference/Preference;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->initializeCheckedStatus()V

    return-void
.end method

.method private initializeCheckedStatus()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isStorageManagerEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method private maybeShowWarning()V
    .locals 3

    const-string v0, "ro.storage_manager.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->newInstance()Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "ActivationWarningFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    const/16 v2, 0x1e9

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mDaysToRetainPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_storage_manager_enabled"

    nop

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->maybeShowWarning()V

    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method
