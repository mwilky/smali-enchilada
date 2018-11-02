.class public Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeEnablerManager.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAutoSelectionPrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/TwoStatePreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollator:Ljava/text/Collator;

.field private final mFragment:Landroid/support/v14/preference/PreferenceFragment;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mCollator:Ljava/text/Collator;

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {p1}, Landroid/support/v14/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    return-void
.end method

.method private addInputMethodSubtypePreferences(Landroid/support/v14/preference/PreferenceFragment;Landroid/view/inputmethod/InputMethodInfo;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v6, v3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    new-instance v9, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;

    invoke-direct {v9, v3}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    iget-object v10, v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v10, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v10, v3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    sget v11, Lcom/android/settingslib/R$string;->active_input_method_subtypes:I

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v2, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v11, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v4, :cond_3

    invoke-virtual {v1, v13}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v15

    if-eqz v15, :cond_1

    if-nez v11, :cond_2

    invoke-static {v14, v3, v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameAsSentence(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_1
    new-instance v15, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    invoke-direct {v15, v3, v14, v1}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    new-instance v13, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManager$dNefE8o88NKQTk3_894EfBqAP3w;

    invoke-direct {v13, v0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManager$dNefE8o88NKQTk3_894EfBqAP3w;-><init>(Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v14}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {v14}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    goto :goto_2

    :cond_4
    iget-object v13, v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v13, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    sget v13, Lcom/android/settingslib/R$string;->use_system_language_to_select_input_method_subtypes:I

    invoke-virtual {v9, v13}, Landroid/support/v7/preference/TwoStatePreference;->setTitle(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v9, v11}, Landroid/support/v7/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    instance-of v3, v2, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static synthetic lambda$addInputMethodSubtypePreferences$0(Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)I
    .locals 2

    instance-of v0, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->compareTo(Landroid/support/v7/preference/Preference;Ljava/text/Collator;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0
.end method

.method private setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    instance-of v4, v3, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v4, :cond_1

    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    if-eqz p2, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/support/v7/preference/TwoStatePreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/support/v14/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mHaveHardKeyboard:Z

    invoke-static {v2, v3, v4, v5}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateAutoSelectionPreferences()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez p1, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    :cond_3
    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_5

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/Preference;

    instance-of v6, v5, Landroid/support/v7/preference/TwoStatePreference;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v5

    check-cast v6, Landroid/support/v7/preference/TwoStatePreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroid/support/v7/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public init(Landroid/support/v14/preference/PreferenceFragment;Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    invoke-virtual {p1}, Landroid/support/v14/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mHaveHardKeyboard:Z

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0, p1, v2, p3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->addInputMethodSubtypePreferences(Landroid/support/v14/preference/PreferenceFragment;Landroid/view/inputmethod/InputMethodInfo;Landroid/support/v7/preference/PreferenceScreen;)V

    :cond_2
    goto :goto_1

    :cond_3
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v1}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    return v4

    :cond_1
    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    if-eqz v2, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setChecked(Z)V

    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateAutoSelectionPreferences()V

    :cond_3
    return v4

    :cond_4
    return v1
.end method

.method public refresh(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 3

    nop

    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-static {p2, v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateAutoSelectionPreferences()V

    return-void
.end method

.method public save(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mHaveHardKeyboard:Z

    invoke-static {p2, v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    return-void
.end method
