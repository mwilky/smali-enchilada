.class public Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;
    }
.end annotation


# instance fields
.field protected mConfigWarningPreference:Landroid/support/v7/preference/Preference;

.field private mInitialSetting:Z

.field private mLaunchFromSuw:Z

.field protected mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mLaunchFromSuw:Z

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mInitialSetting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getScreenWidth(Landroid/content/Context;)I
    .locals 4

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    return v3
.end method

.method private updateConfigurationWarningIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getConfigurationWarningStringForSecureSettingsKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const v2, 0x7f0d00f9

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setLayoutResource(I)V

    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f08025a

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isChecked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->updateConfigurationWarningIfNeeded()V

    return-void
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "video_resource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setVisible(Z)V

    const-string v0, "video_resource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setVisible(Z)V

    :goto_0
    const-string v0, "from_suw"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "from_suw"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mLaunchFromSuw:Z

    :cond_2
    const-string v0, "checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mInitialSetting:Z

    :cond_3
    const-string v0, "title_res"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "title_res"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_4
    return-void
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->updateConfigurationWarningIfNeeded()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method
