.class public Lcom/android/settings/accounts/AccountTypePreference;
.super Lcom/android/settings/widget/AppPreference;
.source "AccountTypePreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private final mMetricsCategory:I

.field private final mSummary:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    iget-object v0, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResId:I

    iput-object p6, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    iput p2, p0, Lcom/android/settings/accounts/AccountTypePreference;->mMetricsCategory:I

    invoke-static {p3}, Lcom/android/settings/accounts/AccountTypePreference;->buildKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountTypePreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountTypePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p6}, Lcom/android/settings/accounts/AccountTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p9}, Lcom/android/settings/accounts/AccountTypePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p0}, Lcom/android/settings/accounts/AccountTypePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public static buildKey(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    nop

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->unlockWorkProfileIfNecessary(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    new-instance v3, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/String;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mMetricsCategory:I

    invoke-virtual {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
