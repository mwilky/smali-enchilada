.class public Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsForSetupWizard.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DISPLAY_MAGNIFICATION_PREFERENCE:Ljava/lang/String; = "screen_magnification_preference"

.field private static final FONT_SIZE_PREFERENCE:Ljava/lang/String; = "font_size_preference"

.field private static final SCREEN_READER_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final SCREEN_READER_PREFERENCE:Ljava/lang/String; = "screen_reader_preference"

.field private static final SCREEN_READER_SERVICE_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback.TalkBackService"

.field private static final SELECT_TO_SPEAK_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final SELECT_TO_SPEAK_PREFERENCE:Ljava/lang/String; = "select_to_speak_preference"

.field private static final SELECT_TO_SPEAK_SERVICE_NAME:Ljava/lang/String; = "com.google.android.accessibility.selecttospeak.SelectToSpeakService"


# instance fields
.field private mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

.field private mScreenReaderPreference:Landroid/support/v7/preference/Preference;

.field private mSelectToSpeakPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static configureMagnificationPreferenceIfNeeded(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isApplicable(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    nop

    invoke-static {v1, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private findService(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 6

    nop

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    nop

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private updateAccessibilityServicePreference(Landroid/support/v7/preference/Preference;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "component_name"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "preference_key"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f12007f

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v5, "summary"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x16f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160006

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->addPreferencesFromResource(I)V

    const-string v0, "screen_magnification_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    const-string v0, "screen_reader_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    const-string v0, "select_to_speak_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mSelectToSpeakPreference:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_suw"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    const-string v1, "com.google.android.marvin.talkback"

    const-string v2, "com.google.android.marvin.talkback.TalkBackService"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findService(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->updateAccessibilityServicePreference(Landroid/support/v7/preference/Preference;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mSelectToSpeakPreference:Landroid/support/v7/preference/Preference;

    const-string v1, "com.google.android.marvin.talkback"

    const-string v2, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findService(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->updateAccessibilityServicePreference(Landroid/support/v7/preference/Preference;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->configureMagnificationPreferenceIfNeeded(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
