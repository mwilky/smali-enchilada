.class public Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ManageTrustAgentsPreferenceController.java"


# static fields
.field static final KEY_MANAGE_TRUST_AGENTS:Ljava/lang/String; = "manage_trust_agents"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MY_USER_ID:I


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "manage_trust_agents"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    return-void
.end method

.method private getTrustAgentCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->getTrustAgentCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    const v1, 0x7f12056d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100023

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    const v1, 0x7f1208f4

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
