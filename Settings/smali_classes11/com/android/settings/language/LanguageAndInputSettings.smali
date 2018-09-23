.class public Lcom/android/settings/language/LanguageAndInputSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LanguageAndInputSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final KEY_GAME_CONTROLLER_CATEGORY:Ljava/lang/String; = "game_controller_settings_category"

.field private static final KEY_KEYBOARDS_CATEGORY:Ljava/lang/String; = "keyboards_category"

.field private static final KEY_PHYSICAL_KEYBOARD:Ljava/lang/String; = "physical_keyboard_pref"

.field private static final KEY_POINTER_AND_TTS_CATEGORY:Ljava/lang/String; = "pointer_and_tts_category"

.field private static final KEY_TEXT_TO_SPEECH:Ljava/lang/String; = "tts_settings_summary"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "LangAndInputSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;->INSTANCE:Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$1;

    invoke-direct {v0}, Lcom/android/settings/language/LanguageAndInputSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/language/PhoneLanguagePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/language/PhoneLanguagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/language/OPPhoneLanguageH2PreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/language/OPPhoneLanguageH2PreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v4, "keyboards_category"

    invoke-direct {v3, p0, v4}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/language/TtsPreferenceController;

    new-instance v5, Landroid/speech/tts/TtsEngines;

    invoke-direct {v5, p0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, p0, v5}, Lcom/android/settings/language/TtsPreferenceController;-><init>(Landroid/content/Context;Landroid/speech/tts/TtsEngines;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settings/language/PointerSpeedController;

    invoke-direct {v5, p0}, Lcom/android/settings/language/PointerSpeedController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v9, "pointer_and_tts_category"

    invoke-direct {v8, p0, v9}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v4, v4, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v5, v4, v6

    aput-object v3, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;

    invoke-direct {v4, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/settings/language/UserDictionaryPreferenceController;

    invoke-direct {v4, p0}, Lcom/android/settings/language/UserDictionaryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/language/LanguageAndInputSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "LangAndInputSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2ee

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160060

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f1207e4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
