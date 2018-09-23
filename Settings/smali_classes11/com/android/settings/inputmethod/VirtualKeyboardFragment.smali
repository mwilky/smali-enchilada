.class public final Lcom/android/settings/inputmethod/VirtualKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final ADD_VIRTUAL_KEYBOARD_SCREEN:Ljava/lang/String; = "add_virtual_keyboard_screen"

.field private static final NO_ICON:Landroid/graphics/drawable/Drawable;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAddVirtualKeyboardScreen:Landroid/support/v7/preference/Preference;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->NO_ICON:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic lambda$updateInputMethodPreferenceViews$0(Ljava/text/Collator;Lcom/android/settingslib/inputmethod/InputMethodPreference;Lcom/android/settingslib/inputmethod/InputMethodPreference;)I
    .locals 1

    invoke-virtual {p1, p2, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->compareTo(Lcom/android/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 15

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    move v10, v1

    move v1, v9

    :goto_1
    move v11, v1

    if-ge v11, v10, :cond_3

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v5, v9

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v1, 0x1

    move v5, v1

    :goto_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    sget-object v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->NO_ICON:Landroid/graphics/drawable/Drawable;

    :goto_4
    move-object v13, v1

    new-instance v14, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v14

    move-object v2, v7

    move-object v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    invoke-virtual {v1, v13}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v11, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$3eczHKaadmVH3sZXf9rlrdYqLjw;

    invoke-direct {v3, v1}, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$3eczHKaadmVH3sZXf9rlrdYqLjw;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    nop

    :goto_5
    move v2, v9

    if-ge v2, v10, :cond_4

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-static {v3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v3}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    add-int/lit8 v9, v2, 0x1

    goto :goto_5

    :cond_4
    iget-object v2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/Preference;

    const v3, 0x7f080154

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v10}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x159

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f1600d3

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->addPreferencesFromResource(I)V

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string v1, "add_virtual_keyboard_screen"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    return-void
.end method
