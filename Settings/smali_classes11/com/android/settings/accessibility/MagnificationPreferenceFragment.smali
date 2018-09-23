.class public final Lcom/android/settings/accessibility/MagnificationPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MagnificationPreferenceFragment.java"


# static fields
.field private static final MAGNIFICATION_COMPONENT_ID:Ljava/lang/String; = "com.android.server.accessibility.MagnificationController"

.field static final OFF:I = 0x0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ON:I = 0x1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final PREFERENCE_TITLE_KEY:Ljava/lang/String; = "magnification_preference_screen_title"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "MagnificationPreferenceFragment"


# instance fields
.field private mLaunchedFromSuw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    return-void
.end method

.method static getConfigurationWarningStringForSecureSettingsKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11

    const-string v0, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_magnification_navbar_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_button_target_component"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    const v9, 0x7f120077

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v3

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method static isApplicable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x11200a0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static isChecked(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0
.end method

.method static setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f12071d

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "MagnificationPreferenceFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x39a

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160003

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "from_suw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "from_suw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    :cond_0
    const-class v1, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;

    iget-boolean v2, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->setIsFromSUW(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "help_uri_resource"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "need_search_icon_in_action_bar"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
