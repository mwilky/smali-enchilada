.class public Lcom/android/settings/datausage/BillingCycleSettings;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataUsageEditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    }
.end annotation


# static fields
.field public static final GIB_IN_BYTES:J = 0x40000000L

.field private static final KEY_BILLING_CYCLE:Ljava/lang/String; = "billing_cycle"

.field private static final KEY_DATA_LIMIT:Ljava/lang/String; = "data_limit"

.field private static final KEY_DATA_WARNING:Ljava/lang/String; = "data_warning"

.field static final KEY_SET_DATA_LIMIT:Ljava/lang/String; = "set_data_limit"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_SET_DATA_WARNING:Ljava/lang/String; = "set_data_warning"

.field private static final LOGD:Z = false

.field private static final MAX_DATA_LIMIT_BYTES:J = 0x30d400000000L

.field public static final MIB_IN_BYTES:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "BillingCycleSettings"

.field private static final TAG_CONFIRM_LIMIT:Ljava/lang/String; = "confirmLimit"

.field private static final TAG_CYCLE_EDITOR:Ljava/lang/String; = "cycleEditor"

.field private static final TAG_WARNING_EDITOR:Ljava/lang/String; = "warningEditor"


# instance fields
.field private mBillingCycle:Landroid/support/v7/preference/Preference;

.field private mDataLimit:Landroid/support/v7/preference/Preference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataWarning:Landroid/support/v7/preference/Preference;

.field private mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x156

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "network_template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const v1, 0x7f160024

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->addPreferencesFromResource(I)V

    const-string v1, "billing_cycle"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    const-string v1, "set_data_warning"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "data_warning"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    const-string v1, "set_data_limit"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "data_limit"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    const v2, 0x7f1204f1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    if-ne v0, p1, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    return v2

    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    :goto_0
    return v2

    :cond_3
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/DataUsageEditController;Z)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    invoke-static {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/DataUsageEditController;Z)V

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method setPolicyLimitBytes(J)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method setUpForTest(Lcom/android/settingslib/NetworkPolicyEditor;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v14/preference/SwitchPreference;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iput-object p1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iput-object p2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    iput-object p4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    iput-object p5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    iput-object p6, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    return-void
.end method

.method public updateDataUsage()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method updatePrefs()V
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "settings_data_usage_v2"

    invoke-static {v1, v2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    const v5, 0x7f12026f

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v5}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5, v6}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v9}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9, v10}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_2
    return-void
.end method
