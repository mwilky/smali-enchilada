.class public final Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AvailableVirtualKeyboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    return-void
.end method

.method private static getInputMethodIcon(Landroid/content/pm/PackageManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v0, Landroid/content/pm/ServiceInfo;->logo:I

    invoke-static {p0, v2, v4, v1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    iget v5, v0, Landroid/content/pm/ServiceInfo;->icon:I

    invoke-static {p0, v2, v5, v1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-static {p0, v2, v5, v1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    return-object v4

    :cond_4
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, v2, v5, v1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_5

    return-object v4

    :cond_5
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v5

    :cond_6
    :goto_1
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v4
.end method

.method static synthetic lambda$updateInputMethodPreferenceViews$0(Ljava/text/Collator;Lcom/android/settingslib/inputmethod/InputMethodPreference;Lcom/android/settingslib/inputmethod/InputMethodPreference;)I
    .locals 1

    invoke-virtual {p1, p2, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->compareTo(Lcom/android/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method private static loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    return-object v0
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 15

    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    move v1, v10

    goto :goto_0

    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    move v11, v1

    move v1, v10

    :goto_1
    move v12, v1

    if-ge v12, v11, :cond_3

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v5, v10

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v1, 0x1

    move v5, v1

    :goto_3
    new-instance v14, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    const/4 v4, 0x1

    move-object v1, v14

    move-object v2, v7

    move-object v3, v13

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    invoke-static {v8, v13}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getInputMethodIcon(Landroid/content/pm/PackageManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v12, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/inputmethod/-$$Lambda$AvailableVirtualKeyboardFragment$jwIjaxSxVSRnK0I3ZX1KVHtd2wk;

    invoke-direct {v3, v1}, Lcom/android/settings/inputmethod/-$$Lambda$AvailableVirtualKeyboardFragment$jwIjaxSxVSRnK0I3ZX1KVHtd2wk;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    nop

    :goto_4
    move v2, v10

    if-ge v2, v11, :cond_4

    iget-object v3, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-static {v3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v3}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    add-int/lit8 v10, v2, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15b

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f160020

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    return-void
.end method

.method public onSaveInputMethodPreference(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    :cond_1
    return-void
.end method
