.class public Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPBaseBandPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field static final BASEBAND_PROPERTY:Ljava/lang/String; = "gsm.version.baseband"

.field private static final KEY_BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "baseband_version"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const-string v1, "gsm.version.baseband"

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120549

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "baseband_version"

    return-object v0
.end method
