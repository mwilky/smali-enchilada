.class public Lcom/android/settings/security/screenlock/LockScreenPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LockScreenPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field static final KEY_LOCKSCREEN_PREFERENCES:Ljava/lang/String; = "lockscreen_preferences"

.field private static final MY_USER_ID:I


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 44
    const-string v0, "lockscreen_preferences"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 47
    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 56
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    nop

    .line 61
    move v1, v2

    goto :goto_0

    .line 62
    :cond_0
    nop

    .line 61
    :goto_0
    return v1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->MY_USER_ID:I

    .line 64
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 66
    nop

    .line 64
    move v1, v2

    goto :goto_1

    .line 66
    :cond_2
    nop

    .line 64
    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 79
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 72
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->getSummaryResource(Landroid/content/Context;)I

    move-result v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 74
    return-void
.end method
