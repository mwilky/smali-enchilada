.class public Lcom/android/settings/security/SecuritySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/SecuritySettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final CHANGE_TRUST_AGENT_SETTINGS:I = 0x7e

.field private static final PRIVACY_CATAGORY_FACE_UNLOCK_CATEGORY:Ljava/lang/String; = "privacy_catagory_face_unlock"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"

.field public static final UNIFY_LOCK_CONFIRM_DEVICE_REQUEST:I = 0x80

.field public static final UNIFY_LOCK_CONFIRM_PROFILE_REQUEST:I = 0x81

.field public static final UNUNIFY_LOCK_CONFIRM_DEVICE_REQUEST:I = 0x82

.field private static final WORK_PROFILE_SECURITY_CATEGORY:Ljava/lang/String; = "security_category_profile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    new-instance v0, Lcom/android/settings/security/SecuritySettings$1;

    invoke-direct {v0}, Lcom/android/settings/security/SecuritySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/security/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 249
    new-instance v0, Lcom/android/settings/security/SecuritySettings$2;

    invoke-direct {v0}, Lcom/android/settings/security/SecuritySettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/security/SecuritySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "x2"    # Lcom/android/settings/security/SecuritySettings;

    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/settings/security/SecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "host"    # Lcom/android/settings/security/SecuritySettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/security/SecuritySettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/android/settings/location/LocationPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/location/LocationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/security/ScreenPinningPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/oneplus/settings/others/OPEmergencyRescueSettingsPreferenceController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/others/OPEmergencyRescueSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/android/settings/security/SimLockPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/security/SimLockPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/android/settings/security/ShowPasswordPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/security/ShowPasswordPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/android/settings/security/EncryptionStatusPreferenceController;

    const-string v2, "encryption_and_credential"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/security/EncryptionStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, "securityPreferenceControllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v2, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Lcom/oneplus/settings/controllers/OPFaceUnlockPreferenceController;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/controllers/OPFaceUnlockPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v2, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v2, Lcom/android/settings/security/ChangeScreenLockPreferenceController;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v2, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v3, "security_category"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v2

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v2, "profileSecurityControllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v3, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v3, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/security/LockUnificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v3, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintProfileStatusPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintProfileStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v3, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v4, "security_category_profile"

    invoke-direct {v3, p0, v4}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3, v2}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v3

    .line 182
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/android/settings/security/SecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 99
    const v0, 0x7f120728

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 94
    const-string v0, "SecuritySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 84
    const/16 v0, 0x57

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 89
    const v0, 0x7f1600b3

    return v0
.end method

.method launchConfirmDeviceLockForUnification()V
    .locals 1

    .line 124
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/SecuritySettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    .line 125
    invoke-virtual {v0}, Lcom/android/settings/security/LockUnificationPreferenceController;->launchConfirmDeviceLockForUnification()V

    .line 126
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 112
    const-class v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/SecuritySettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->handleActivityResult(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/SecuritySettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    .line 117
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/security/LockUnificationPreferenceController;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    return-void

    .line 120
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "security_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/security/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 76
    .local v0, "mSecurityStatusnPreferenceGroup":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method unifyUncompliantLocks()V
    .locals 1

    .line 129
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/SecuritySettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyUncompliantLocks()V

    .line 130
    return-void
.end method

.method updateUnificationPreference()V
    .locals 2

    .line 133
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/SecuritySettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/security/LockUnificationPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 134
    return-void
.end method
