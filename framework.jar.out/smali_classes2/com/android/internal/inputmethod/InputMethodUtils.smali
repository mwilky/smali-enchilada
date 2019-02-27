.class public Lcom/android/internal/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;,
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

.field private static final INPUT_METHOD_SEPARATOR:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATOR:C = ';'

.field private static final LOCALE_EN_GB:Ljava/util/Locale;

.field private static final LOCALE_EN_US:Ljava/util/Locale;

.field public static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

.field private static final OP_SYSTEM_IME:[Ljava/lang/String;

.field private static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

.field public static final SUBTYPE_MODE_ANY:Ljava/lang/String;

.field public static final SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field private static final TAG:Ljava/lang/String; = "InputMethodUtils"

.field private static final TAG_ASCII_CAPABLE:Ljava/lang/String; = "AsciiCapable"

.field private static final TAG_ENABLED_WHEN_DEFAULT_IS_NOT_ASCII_CAPABLE:Ljava/lang/String; = "EnabledWhenDefaultIsNotAsciiCapable"

.field private static final sCacheLock:Ljava/lang/Object;

.field private static sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation
.end field

.field private static sCachedResult:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedSystemLocales:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation
.end field

.field private static final sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    const-string v0, "com.google.android.inputmethod.pinyin"

    const-string v1, "com.google.android.inputmethod.japanese"

    const-string v2, "com.google.android.inputmethod.korean"

    const-string v3, "com.google.android.apps.inputmethod.hindi"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->OP_SYSTEM_IME:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "GB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method public static buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v4, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsSettingString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_1

    const-string/jumbo v3, "tl"

    aget-object v6, v0, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "fil"

    aput-object v3, v0, v5

    :cond_1
    array-length v3, v0

    if-ne v3, v4, :cond_2

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v5

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_2
    array-length v3, v0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v5

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    array-length v3, v0

    if-ne v3, v2, :cond_4

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v5

    aget-object v3, v0, v4

    aget-object v4, v0, v6

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    return-object v1
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    if-eqz p2, :cond_2

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/Locale;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p3, v4, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    const/4 v0, 0x1

    return v0

    :cond_6
    return v0
.end method

.method public static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_2
    if-nez v3, :cond_3

    move-object v3, v6

    :cond_3
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v2, v6

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v2, v6

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-nez v2, :cond_7

    if-eqz p4, :cond_7

    return-object v3

    :cond_7
    return-object v2

    :cond_8
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getApiCallStack()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    const-string v5, "Transact("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    move-object v0, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    nop

    invoke-static {p1, p0, v8, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v9

    if-nez p2, :cond_0

    const/4 v4, 0x1

    const/4 v6, 0x1

    sget-object v7, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p0

    move-object v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    :cond_0
    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Locale;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v10, v0, v3

    move v4, v2

    :goto_1
    move v11, v4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_1

    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-string v9, "keyboard"

    move-object v5, p1

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v10

    :cond_0
    add-int/lit8 v4, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v10, v0, v3

    move v4, v2

    :goto_3
    move v11, v4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_4

    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v9, "keyboard"

    move-object v5, p1

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v10

    :cond_3
    add-int/lit8 v4, v11, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "InputMethodUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found no fallback locale. imis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p0, v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_1
    nop

    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    sget-object v1, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-ne v2, p1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    sput-object p1, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private static getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v6, v2

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    :goto_1
    if-ge v8, v4, :cond_6

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v10

    const-string v11, "keyboard"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v7, v9, v1, v8}, Lcom/android/internal/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v2

    :goto_3
    if-ge v11, v10, :cond_8

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    const-string v13, "AsciiCapable"

    invoke-virtual {v12, v13}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-nez v9, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    nop

    :goto_5
    if-ge v2, v11, :cond_a

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v13

    const-string v14, "keyboard"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "EnabledWhenDefaultIsNotAsciiCapable"

    invoke-virtual {v12, v14}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "keyboard"

    const/4 v9, 0x1

    move-object v10, p0

    invoke-static {v10, v0, v2, v3, v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move-object v10, p0

    :cond_c
    :goto_6
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    sget-object v11, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v9, v11, v1, v8}, Lcom/android/internal/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_d
    return-object v8
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$1;)V

    const-string v8, "keyboard"

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v5, 0x1

    const/4 v7, 0x1

    const-string v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    const-string v1, "InputMethodUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No software keyboard is found. imis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " systemLocale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " fallbackLocale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const-string v5, "keyboard"

    invoke-static {v3, v4, v2, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    if-gez v1, :cond_3

    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    :cond_3
    goto :goto_0

    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    return-object v2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne p1, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v8, v0

    :goto_1
    if-eqz v2, :cond_2

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    nop

    :goto_2
    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    nop

    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v8, :cond_8

    if-eqz v8, :cond_5

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    return-object v1
.end method

.method public static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static isSoftInputModeStateVisibleAllowed(II)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x1c

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 5

    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->OP_SYSTEM_IME:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->OP_SYSTEM_IME:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    move v0, v3

    nop

    :cond_2
    return v0
.end method

.method public static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0, p3, p4, p5}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3b

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    nop

    invoke-static {p0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_1

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-object v7, p3

    :try_start_1
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "InputMethodUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApplicationEnabledSetting failed. packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v0

    const-string v1, "InputMethodUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationEnabledSetting failed. packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Landroid/view/textservice/TextServicesManager;->getInstance()Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v0, v4

    const/4 v6, 0x0

    move v7, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    const v8, 0x8000

    :try_start_0
    invoke-interface {p0, v5, v8, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    nop

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    move v9, v3

    :goto_3
    move v8, v9

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p0, v5, p2, p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v8

    const-string v9, "InputMethodUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getApplicationInfo failed. packageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " userId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-void

    :cond_9
    :goto_5
    return-void
.end method
