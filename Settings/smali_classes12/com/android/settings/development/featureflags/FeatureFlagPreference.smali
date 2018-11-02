.class public Lcom/android/settings/development/featureflags/FeatureFlagPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "FeatureFlagPreference.java"


# instance fields
.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->mKey:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private setCheckedInternal(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/FeatureFlagUtils;->setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
